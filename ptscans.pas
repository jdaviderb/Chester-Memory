unit ptscans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sLabel, sEdit,
  Vcl.ExtCtrls, sPanel, sListBox, Vcl.Buttons, sBitBtn;

type
  TPtScan = class(TForm)
    sPanel1: TsPanel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sLabel1: TsLabel;
    sListBox1: TsListBox;
    sBitBtn1: TsBitBtn;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sListBox2: TsListBox;
    Button1: TButton;
    procedure sBitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PtScan: TPtScan;
      Parar: Integer;
  stop: dword;
  Firsh: dword;
  stageR: iNTEGER;
  Temporales: Tlist;
    Temporales2: Tlist;
    ValueFreez: String;
    x: cardinal;
    ReadByte2:SIZE_T;



implementation

Function MemoriaLeible(Const Direccion: Dword):Dword;
var
SI:  SYSTEM_INFO;
S: dword;
 mbi : TMemoryBasicInformation;
 x: dword;
 e: dword;
begin
E := Direccion;
while (VirtualQuery(Pointer(E), MBI, sizeof(MEMORY_BASIC_INFORMATION)) )= SizeOf(TMemoryBasicInformation)  DO
 begin
 //if (MBI.Protect =  PAGE_READWRITE)    then
  if (MBI.RegionSize >= 0) and (mbi.State = MEM_COMMIT) AND (mbi.Protect = PAGE_READONLY)  then
 else
 begin
 parar := mbi.RegionSize;
 E := E + mbi.RegionSize;
 end;
  if (MBI.RegionSize >= 0) and (mbi.State = MEM_COMMIT) AND (mbi.Protect = PAGE_READONLY) then
 begin
 Result := Dword(MBI.BaseAddress );
 Break;
 end;
 END;
end;

Function MemoriaLeible2(Const Direccion: Dword):Dword;
var
SI:  SYSTEM_INFO;
S: dword;
 mbi : TMemoryBasicInformation;
 x: dword;
 e: dword;
begin
E := Direccion;
while (VirtualQuery(Pointer(E), MBI, sizeof(MEMORY_BASIC_INFORMATION)) )= SizeOf(TMemoryBasicInformation)  DO
 begin
  if (MBI.RegionSize >= 0) and (mbi.State = MEM_COMMIT) AND (mbi.Protect = PAGE_READONLY) then
 else
 begin
 E := E + mbi.RegionSize;
 end;

  if (MBI.RegionSize >= 0) and (mbi.State = MEM_COMMIT) AND (mbi.Protect = PAGE_READONLY)  then
 begin
 Result := Dword(MBI.BaseAddress )++mbi.RegionSize;
 Break;
 end;
 END;
end;









Procedure Scan1;
var
one: dword;
two: dword;
fin: dword;
TimerScan: integer;
S: DWORD;
SI: SYSTEM_INFO;
dddd: string;
Found: Integer;
Found2: Dword;
Found3: String;
sCANx: String;
OFF1: DWORD;
OFF2: DWORD;
encontrar: dword;
SX: Dword;
mipt: dword;
ascanear: String;
dd: word;
begin
GetSystemInfo(SI);
ascanear := ptscan.sEdit5.Text[1]+ptscan.sEdit5.Text[2]+ptscan.sEdit5.Text[3]+ptscan.sEdit5.Text[4];
dd := STRTOINT('$'+ascanear);
ShowMessage(InttoHex(dd,0));
off1 := StrToInt('$'+PTSCAN.SEdit3.Text);
off2 := StrToInt('$'+PTSCAN.SEdit4.Text);
encontrar := StrToInt('$'+PTSCAN.SEdit5.Text);
one := StrToInt('$'+ptscan.sEdit1.Text);
fin := StrToInt('$'+ptscan.sEdit2.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
Temporales2 := Tlist.Create;
TEMPORALES2.Clear;
Temporales.Clear;
while  timerscan <= 100 DO
begin
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);
for s := one to two do
begin
TRY


if S >= FIN then
begin
Break;
END;
if Pword(s+$2)^ = dd then



Temporales.Add(PTR(S));
//ptscan.sListBox1.Items.Add(InttoHex(x,0));








except
END;
end;


// comparacion end;
// stop

if  (one >= fin) OR (One = fin) or (s >=fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
///Agregando al listbox




// agregando al listbox



end;

Procedure Pointer;
var
x: Dword;
DFound: integer;
PBusqueda: dword;
FBusqueda: Dword;
  F: Integer;
  temporales2: Tlist;
  XD: INTEGER;
  le: integer;
  pointerabuscar: dword;
begin
  Scan1;
  Temporales2 := Tlist.Create;
   pointerabuscar := StrToInt('$'+PTSCAN.SEdit5.Text);

  for DFound := 0 to Temporales.Count -1 do
  begin
  x := Dword(Temporales.Items[DFound]);
  for FBusqueda := $0 to $f do
  begin

  try
  PBusqueda := Pdword(x)^+FBusqueda;
  except
  end;
  end;
  if PBusqueda = pointerabuscar  then
  BEGIN
  showMessage(InttoHex(x,0));
    showMessage(InttoHex(FBusqueda,0));

ptscan.sListBox1.Items.Add(InttoHex(x,0));
ptscan.sListBox2.Items.Add(InttoHex(FBusqueda,0));
  END;








  end;







  ShowMessage(inttostr(DFound));
    ShowMessage(inttostr(temporales2.Count));

  ShowMessage('terminado');



end;





{$R *.dfm}

procedure TPtScan.Button1Click(Sender: TObject);
var
xx: dword;
x: word;

begin



end;

procedure TPtScan.sBitBtn1Click(Sender: TObject);
begin
Pointer;
end;

end.
