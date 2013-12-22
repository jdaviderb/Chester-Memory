unit gzip;
 
interface
 
uses Sysutils, Windows, Classes;
 
procedure MakeGZ(Src, Dst: TStream);
 
implementation
 
uses zlib;
 
type
  {
    +---+---+---+---+---+---+---+---+---+---+
    |ID1|ID2|CM |FLG|     MTIME     |XFL|OS |
    +---+---+---+---+---+---+---+---+---+---+
  }
  TGZHeader = packed record
    ID1: Byte;          // IDentification 1 = 31
    ID2: Byte;          // IDentification 2 = 139
    CM: Byte;           // Compression Method = 8
    FLG: Byte;          // Flags
    MTIME: Cardinal;    // Modification TIME
    XFL: Byte;          // Extra Flags
    OS: Byte;           // Operating System
  end;
 
  {
    +---+---+---+---+---+---+---+---+
    |     CRC32     |     ISIZE     |
    +---+---+---+---+---+---+---+---+
  }
 
  TGZFooter = packed record
    CRC32: Cardinal;    // CRC-32
    ISIZE: Cardinal;    // Input SIZE
  end;
 
var
  CRCTable: array[0..255] of Cardinal;
 
procedure MakeCRCTable;
var
  c: Cardinal;
  n,k: Integer;
begin
  for n:= 0 to 255  do
  begin
    c:= n;
    for k:= 0 to 7 do
      if Odd(c) then
        c:= $edb88320 xor (c shr 1)
      else
        c:= c shr 1;
    CRCTable[n]:= c;
  end;
end;
 
function CCheck(code: Integer): Integer;
begin
  Result := code;
  if code < 0 then
    raise ECompressionError.Create('Error al comprimir');
end;
 
// Calcula el CRC-32
function UpdateCRC(CRC: Cardinal; Buffer: PByte; Len: Integer): Cardinal;
begin
  CRC:= CRC xor $ffffffff;
  while Len > 0 do
  begin
    CRC:= CRCTable[(CRC xor Cardinal(Buffer^)) and $ff] xor (CRC shr 8);
    dec(Len);
    inc(Buffer);
  end;
  Result:= CRC xor $ffffffff;
end;
 
const
  BUFFERSIZE = High(Word);
 
procedure MakeGZ(Src, Dst: TStream);
var
  GZHeader: TGZHeader;
  GZFooter: TGZFooter;
  Zrec: TZStreamRec;
  TmpStream: TMemoryStream;
  inBuffer,outBuffer: PChar;
  n: Integer;
 
  // Utilizamos este buffer temporal para eliminar la cabecera y el pie de zlib
  procedure WriteTempBuffer(Buffer: PChar; Count: Longint);
  begin
    // Si es la primera escritura
    if TmpStream.Size = 0 then
    begin
      // Eliminamos la cabecera
      inc(Buffer,2);
      dec(count,2); 
    end else
      Dst.WriteBuffer(TmpStream.Memory^,TmpStream.Size);
    TmpStream.Clear;
    TmpStream.WriteBuffer(Buffer^,Count);
  end;  
 
begin
  // Inicializamos la cabecera
  with GZHeader do
  begin
    ID1:= 31;
    ID2:= 139;
    CM:= 8;
    FLG:= 0; 
    MTIME:= 0;
    XFL:= 0;
    OS:= 255;
  end;
  // Incializamos el pie
  GZFooter.CRC32:= 0;
  GZFooter.ISIZE:= 0;
  // Creamos un buffer temporal
  TmpStream:= TMemoryStream.Create;
  try
    // Creamos el buffer de entrada
    GetMem(inBuffer,BUFFERSIZE);
    try
      // Creamos el buffer de salida
      GetMem(outBuffer,BUFFERSIZE);
      try
        // Escribimos la cabecera del archivo gz al stream de salida
        Dst.WriteBuffer(GZHeader,Sizeof(GZHeader));
        FillChar(ZRec,Sizeof(ZRec),#0);
        ZRec.zalloc:= zlibAllocMem;
        ZRec.zfree:= zlibFreeMem;
        ZRec.next_out:= outBuffer;
        ZRec.avail_out:= BUFFERSIZE;
        // Inicializamos zlib
        CCheck(deflateInit_(ZRec, Z_DEFAULT_COMPRESSION, zlib_version, sizeof(ZRec)));
        repeat
          n:= Src.Read(inBuffer^,BUFFERSIZE);
          // Ajustamos los valores del pie
          inc(GZFooter.ISIZE,n);
          GZFooter.CRC32:= UpdateCRC(GZFooter.CRC32,PByte(inBuffer),n);
          ZRec.next_in:= inBuffer;
          ZRec.avail_in:= n;
          while (ZRec.avail_in > 0) do
          begin
            CCheck(deflate(ZRec, 0));
            if ZRec.avail_out = 0 then
            begin
              WriteTempBuffer(outBuffer, BUFFERSIZE);
              ZRec.next_out:= outBuffer;
              ZRec.avail_out:= BUFFERSIZE;
            end;
          end;
        until n < BUFFERSIZE;
        ZRec.next_in:= nil;
        ZRec.avail_in:= 0;
        try
          while (CCheck(deflate(ZRec, Z_FINISH)) <> Z_STREAM_END)
            and (ZRec.avail_out = 0) do
          begin
            WriteTempBuffer(outBuffer, BUFFERSIZE);
            ZRec.next_out:= outBuffer;
            ZRec.avail_out := BUFFERSIZE;
          end;
          if ZRec.avail_out < BUFFERSIZE then
            WriteTempBuffer(outBuffer, BUFFERSIZE - ZRec.avail_out);
        finally
          deflateEnd(ZRec);
        end;
        // Escribimos los bytes que quedan en el pie menos los 4 bytes que añade zlib
        Dst.WriteBuffer(TmpStream.Memory^,TmpStream.Size-4);
        // Escribimos el pie
        Dst.WriteBuffer(GZFooter,Sizeof(GZFooter));
      finally
        FreeMem(outBuffer);
      end;
    finally
      FreeMem(inBuffer);
    end;
  finally
    TmpStream.Free;
  end;
end;
 
 
initialization
  MakeCRCTable; 
end.