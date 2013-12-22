unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids,
  Vcl.ValEdit, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.CheckLst, ADD , ADD2,buscando,
  Vcl.Imaging.pngimage, Vcl.Menus, sSkinManager, sGroupBox, sTrackBar, sBitBtn,
  sListBox, sEdit, sComboBox,memoria, sButton,ptscans, sPanel, sRadioButton,Unit10,Vprotect,
  sLabel,ge, acPNG;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    Button1: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    Button2: TButton;
    ListBox7: TListBox;
    Button3: TButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Button4: TButton;
    ListBox2: TListBox;
    Timer2: TTimer;
    ListBox8: TListBox;
    Label6: TLabel;
    Button5: TButton;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    TrayIcon1: TTrayIcon;
    Timer3: TTimer;
    Freez: TListBox;
    PopupMenu1: TPopupMenu;
    Borrar1: TMenuItem;
    PointerList: TListBox;
    Label3: TLabel;
    sSkinManager1: TsSkinManager;
    sGroupBox1: TsGroupBox;
    ListBox3: TCheckListBox;
    ListBox4: TCheckListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    Label10: TLabel;
    CheckBox2: TCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    TrackBar1: TTrackBar;
    sBitBtn1: TsBitBtn;
    sListBox1: TsListBox;
    Edit1: TsEdit;
    TIP: TsComboBox;
    sButton1: TsButton;
    verenmemoria1: TMenuItem;
    Label2: TLabel;
    sButton2: TsButton;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sComboBox1: TsComboBox;
    sButton4: TsButton;
    Timer4: TTimer;
    OpenDialog2: TOpenDialog;
    sGroupBox2: TsGroupBox;
    sBitBtn2: TsBitBtn;
    sButton3: TsButton;
    sButton5: TsButton;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    sRadioButton3: TsRadioButton;
    sRadioButton4: TsRadioButton;
    sButton6: TsButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox31DblClick(Sender: TObject);
    procedure ListBox41DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ListBox6DblClick(Sender: TObject);
    procedure ListBox31Click(Sender: TObject);
    procedure ListBox41Click(Sender: TObject);
    procedure ListBox5Click(Sender: TObject);
    procedure ListBox6Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox5DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ListBox2DblClick(Sender: TObject);
    procedure ListBox3Click(Sender: TObject);
    procedure ListBox3DblClick(Sender: TObject);
    procedure ListBox3ClickCheck(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Borrar1Click(Sender: TObject);
    procedure ListBox4Click(Sender: TObject);
    procedure ListBox4DblClick(Sender: TObject);
    procedure ListBox4ClickCheck(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure verenmemoria1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton4Click(Sender: TObject);
    procedure sButton5Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure sButton6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    Parar: Integer;
  stop: dword;
  Firsh: dword;
  stageR: iNTEGER;
  Temporales: Tlist;
    Temporales2: Tlist;
    ValueFreez: String;
    x: cardinal;
    ReadByte2:SIZE_T;
    Desconocido: Tlist;
    ListarArray: TStringList;



implementation

Function HexToInt(S:String):LongInt;
begin
Result:=StrToInt( '$'+Copy( S, 1, Length(s) ) )
end;

function StringToHex(S: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (S) do
    Result:= Result+IntToHex(ord(S[i]),2);
end;



Function LeerTexto(Const DD: Dword; TextO:String):Boolean;
Var
Recorrido: Integer;
X: Integer;
suma: Byte;
Joder: String;
rr: Integer;
senor: dword;
begin
Suma := 0;
Recorrido := Length(form1.Edit1.Text);
for x := 1 to Recorrido do
begin
senor := dd+x-1;
//ShowMessage(IntTOHEX(senor,0));
IF Pbyte(SENOR)^ = (ord(form1.edit1.text[x])) then
begin
suma := suma +1;
end;
end;
if Suma = Recorrido then
begin
Result := True;
end;
if Suma = Recorrido then
else
begin
Result := False;
end;
end;




Function ChesterLeerTexto(Const Direccion: Dword):Tcaption;
var
protect: dword;
x: SIZE_T;
Texto: String;
S: Tedit;
sssss: pointer;
RARE: Integer;
Value: ARRAY[1..27] of AnsiChar;
begin
s := Tedit.Create(nil);
//VirtualProtectex(getcurrentprocess,ptr(Direccion),sizeof(Value),PAGE_EXECUTE_READWRITE,protect);
ReadProcessmemory(getcurrentprocess,ptr(Direccion),@value,sizeof(Value),X);
texto := Value;
s.Text := Texto;
Result := S.Text;
end;


Procedure  Mensajes(Const Titulo,Mensaje: String);
begin
  form1.TrayIcon1.BalloonHint:=Mensaje;
      form1.TrayIcon1.BalloonTitle:=Titulo;
       form1.TrayIcon1.BalloonTimeOut:=1000;
       form1.TrayIcon1.BalloonFlags:=bfInfo;
       form1.TrayIcon1.ShowBalloonHint;

end;
Procedure ChesterEditarTexto ( Const TuTexto: string; Direccion: Dword);
var
PJ : Integer;
E1: Char;
E2: Char;
X1: byte;
X2: byte;

begin
try
for PJ:=2 to Length(TuTexto) do
    begin;
E1:=TuTexto[PJ];
E2:=TuTexto[1];
X1:=Ord(E1);
X2:=Ord(E2);
Pbyte(Direccion)^ := X2;
Pbyte (Direccion+PJ-1)^ := X1;
    end;
    except
    end;

end;


Procedure ObtenerNombres(Const Tags: String; Base: TListBox; Base2: TListBox);
var
x: dword;
x2: Integer;
En:Integer;
En2: Integer;
begin
///////
for x:= 0 to Base.Items.Count do
begin
if Base.Items[x] = Tags then
begin
en := x+1;
Break;
end;
end;
for x:= EN+1 to Base.Items.Count do
begin
if Base.Items[x] = Tags then
begin
en2 := x -1;
Break;
end;
END;
///
FOR x2 := en to en2 do
begin
Base2.Items.Add(Base.Items[x2]);
end;
end;

Procedure ObtenerNombres2(Const Tags: String; Base: TListBox; Base2: TCheckListBox);
var
x: dword;
x2: Integer;
En:Integer;
En2: Integer;
begin
///////
for x:= 0 to Base.Items.Count do
begin
if Base.Items[x] = Tags then
begin
en := x+1;
Break;
end;
end;
for x:= EN+1 to Base.Items.Count do
begin
if Base.Items[x] = Tags then
begin
en2 := x -1;
Break;
end;
END;
///
FOR x2 := en to en2 do
begin
Base2.Items.Add(Base.Items[x2]);
end;
end;


Function MemoriaLeible(Const Direccion: Dword):Dword;
var
SI:  SYSTEM_INFO;
S: dword;
 mbi : TMemoryBasicInformation;
 x: dword;
 e: dword;
begin
E := Direccion;
 if form1.sRadioButton1.Checked = True then // PAGE READ
 BEGIN
while (VirtualQuery(Pointer(E), MBI, sizeof(MEMORY_BASIC_INFORMATION)) )= SizeOf(TMemoryBasicInformation)  DO
 begin
  if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_READWRITE)   then
 else
 begin
 parar := mbi.RegionSize;
 E := E + mbi.RegionSize;
 end;
   if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_READWRITE)   then
 begin
 Result := Dword(MBI.BaseAddress );
 Break;
 end;
 END;
 end;

  if form1.sRadioButton2.Checked = True then // PAGE_EXECUTE_READWRITE
 BEGIN
while (VirtualQuery(Pointer(E), MBI, sizeof(MEMORY_BASIC_INFORMATION)) )= SizeOf(TMemoryBasicInformation)  DO
 begin
  if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_EXECUTE_READWRITE)   then
 else
 begin
 parar := mbi.RegionSize;
 E := E + mbi.RegionSize;
 end;
   if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_EXECUTE_READWRITE)   then
 begin
 Result := Dword(MBI.BaseAddress );
 Break;
 end;
 END;
 end;


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
 if form1.sRadioButton1.Checked = True then // PAGE READ
 begin
while (VirtualQuery(Pointer(E), MBI, sizeof(MEMORY_BASIC_INFORMATION)) )= SizeOf(TMemoryBasicInformation)  DO
 begin
     if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_READWRITE)   then
 else
 begin
 E := E + mbi.RegionSize;
 end;

   if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_READWRITE)   then
 begin
 Result := Dword(MBI.BaseAddress )++mbi.RegionSize;
 Break;
 end;
 END;
 end;

  if form1.sRadioButton2.Checked = True then // PAGE_EXECUTE_READWRITE
 begin
while (VirtualQuery(Pointer(E), MBI, sizeof(MEMORY_BASIC_INFORMATION)) )= SizeOf(TMemoryBasicInformation)  DO
 begin
     if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_EXECUTE_READWRITE)   then
 else
 begin
 E := E + mbi.RegionSize;
 end;

   if (MBI.RegionSize >= 0)  AND (mbi.State = MEM_COMMIT) and (mbi.Protect = PAGE_EXECUTE_READWRITE)   then
 begin
 Result := Dword(MBI.BaseAddress )++mbi.RegionSize;
 Break;
 end;
 END;
 end;

end;

///
// valor desconocido
Procedure ScanDesconocido1Byte;
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
ValorX: Dword;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
GetSystemInfo(SI);
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
Desconocido := Tlist.Create;
while  timerscan <= 100 DO
begin
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);
for s := one to two do
begin
TRY
// comparacion
if S >= FIN then
begin
Break;
END;
ValorX := Pbyte(s)^;
Temporales.Add(PTR(S));
Desconocido.Add(PTR(ValorX));
except
END;
end;
// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure ScanDesconocido2Byte;
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
ValorX: Dword;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
GetSystemInfo(SI);
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
Desconocido := Tlist.Create;
while  timerscan <= 100 DO
begin
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);
for s := one to two do
begin
TRY
// comparacion
if S >= FIN then
begin
Break;
END;
ValorX := Pword(s)^;
Temporales.Add(PTR(S));
Desconocido.Add(PTR(ValorX));
except
END;
end;
// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure ScanDesconocido4Byte;
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
ValorX: Dword;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
GetSystemInfo(SI);
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
Desconocido := Tlist.Create;
while  timerscan <= 100 DO
begin
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);
for s := one to two do
begin
TRY
// comparacion
if S >= FIN then
begin
Break;
END;
ValorX := Pdword(s)^;
Temporales.Add(PTR(S));
Desconocido.Add(PTR(ValorX));
except
END;
end;
// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

//
Procedure Igual1Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pbyte(ddd)^ = vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure Igual2Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pword(ddd)^ = vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure Igual4Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pdword(ddd)^ = vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;








//Igual



// Disminuir valor
Procedure Disminuir1Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pbyte(ddd)^ <= vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure Disminuir2Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pword(ddd)^ <= vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure Disminuir4Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pdword(ddd)^ <= vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;


// Disminuir valor
Procedure Aumentar1Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pbyte(ddd)^ >= vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure Aumentar2Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pword(ddd)^ >= vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;

Procedure Aumentar4Byte;
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
ValorX: Dword;
V2: Integer;
ddd: dword;
vvv: dword;
Temporales2: Tlist;
Desconocido2: Tlist;
begin
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
TIMERSCAN := 1;
Temporales2 := Tlist.Create;
Desconocido2 := Tlist.Create;


for V2 := 0 TO  Desconocido.Count DO
begin
TRY
ddd := Dword(Temporales.Items[v2]);
vvv := Dword(Desconocido.Items[v2]);
if Pdword(ddd)^ >= vvv then
BEGIN
Desconocido2.Add(ptr(vvv));
temporales2.Add(ptr(ddd));
END;
except
END;
end;
temporales.Clear;
desconocido.Clear;
try
for V2 := 0 TO  Desconocido2.Count DO
begin
temporales.Add(temporales2.Items[v2]);
Desconocido.Add(Desconocido2.Items[v2]);

end;
EXCEPT
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
FORM4.Close;
end;


// Disminuir valor





//

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
test: Tlistbox;
begin
test := Tlistbox.Create(Form1);
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria..');
GetSystemInfo(SI);
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
desconocido := Tlist.Create;
while  timerscan <= 100 DO
begin
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);
for s := one to two do
begin
TRY
// comparacion
if S >= FIN then
begin
Break;
END;
if PByte(s)^ = strToInt(ScanX) then
BEGIN
Temporales.Add(PTR(S));
desconocido.Add(ptr(Pbyte(s)^));
END;  //
except
END;
end;
// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
end;

function LeerArray(Const A: DWORD; AR:String):boolean;
var
C: Integer;
Valor: byte;
contador: integer;
begin
contador := 0;
for C := 0 to ListarArray.Count -1 do
  begin
  VALOR := strtoint('$'+ListarArray[c]);
  try
  if Pbyte(A)^ = Valor then
  begin
  contador:= contador+1;
  end;
  EXCEPT
  end;
  end;
  if contador = C then
  BEGIN
    Result := True;
  END;
end;



Procedure ScanF;
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
test: Tlistbox;
begin
test := Tlistbox.Create(Form1);
scanX := Form1.Edit1.Text;
Mensajes('Chester Memory','Buscando memoria.. float slow');
GetSystemInfo(SI);
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
desconocido := Tlist.Create;
while  timerscan <= 100 DO
begin
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);
for s := one to two do
begin
TRY
// comparacion
if S >= FIN then
begin
Break;
END;
if PDouble(s)^ = strTofloat(ScanX) then
BEGIN
Temporales.Add(PTR(S));
desconocido.Add(ptr(Pbyte(s)^));
END;  //
except
END;
end;
// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
end;


Procedure ScanAx;
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
test: Tlistbox;
SER: BYTE;
OTRO: Integer;
cont: integer;
suma: byte;
begin
cont := 0;
suma := $0;
test := Tlistbox.Create(Form1);
scanX := Form1.Edit1.Text;
ListarArray := TStringList.Create;
ListarArray.Delimiter :=' ' ;
ListarArray.DelimitedText := (scanX);
Mensajes('Chester Memory','Buscando memoria.. float slow');
GetSystemInfo(SI);
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
desconocido := Tlist.Create;
ser := strToInt('$'+ListarArray[0]);
while  timerscan <= 100 DO
begin
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);
for s := one to two do
begin
TRY
// comparacion
if S >= FIN then
begin
Break;
END;
for OTRO := 0 to ListarArray.Count -1 do
BEGIN
ser := strToInt('$'+ListarArray[OTRO]);
showMessage(InttoHex(s+suma,0));
if Pbyte(s+suma)^ = ser then
BEGIN
  cont := cont +1;
END;
suma := Suma +$1;
END;



if cont = ListarArray.Count  then
BEGIN
showMessage(InttoHex(s,0));
Temporales.Add(PTR(S));
desconocido.Add(ptr(Pbyte(s)^));
cont := 1;

END;
cont := 1;
suma := $0;




except
END;
end;




// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
end;




//////
Procedure Scan2(Const ScanX: String);
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
begin
GetSystemInfo(SI);
Mensajes('Chester Memory','Buscando memoria..');
form1.Repaint;
Form1.Label1.Repaint;
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
Desconocido := Tlist.Create;
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

// comparacion
if PWord(s)^ = strToInt(ScanX) then
BEGIN
Temporales.Add(PTR(S));
desconocido.Add(ptr(PWORD(s)^));
END;  //
except
END;
end;
// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
end;
////


Procedure Scan4(Const ScanX: String);
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
begin
GetSystemInfo(SI);
Mensajes('Chester Memory','Buscando memoria..');
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
desconocido := Tlist.Create;
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

// comparacion
if Pdword(s)^ = strToInt(ScanX) then
BEGIN

Temporales.Add(PTR(S));
desconocido.Add(ptr(PDWORD(s)^));
END;  //
except
END;
end;
// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
end;

Procedure ChesterScanTexto(Const ScanX: String);
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
senores: String;
senores2: Pchar;
Test: Integer;
xxf: Integer;
XXF2: Integer;
encontrado: Integer;
Djcheatsss: Integer;
sumasDJ: Byte;
DjcheatsDireccion: dword;
begin
GetSystemInfo(SI);
Mensajes('Chester Memory','Buscando memoria..');
one := StrToInt('$'+form1.Edit2.Text);
fin := StrToInt('$'+form1.Edit3.Text);
TIMERSCAN := 1;
Temporales := Tlist.Create;
xxf2 := Length(form1.Edit1.Text);
form1.sListBox1.Items.Add(InttoStr( HexToInt(StringToHex(FORM1.edit1.text[1]))));






while  timerscan <= 100 DO
begin
sumasDJ := $0;
one:= MemoriaLeible(one);
two := MemoriaLeible2(one);

Test := strtoint(form1.sListBox1.Items[0]);








//ShowMessage(inttostr(test));


for s := one to two do
begin
TRY
if S >= FIN then
begin
Break;
END;




IF Pbyte(s)^ = test then
BEGIN
if LeerTexto(s,'') = true then
begin

Temporales.Add(PTR(S));

end;
















END;
  //
/// corta aqui




except
END;


end;


// comparacion end;
// stop
if  (one >= fin) OR (One = fin) then
begin
break;
end;
ONE := (MemoriaLeible2(one));
dddd := IntToHex(one,0);
end;
form1.Label1.Caption := inttostr(temporales.Count);
///Agregando al listbox
if  (temporales.Count <=1000) then
begin
for  Found := 0 to temporales.Count do
  begin
  TRY
  Found2 := Dword(temporales.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));
  except
  END;
  end;
end;
// agregando al listbox
Mensajes('Chester Memory','Listo..');
end;




Procedure NewBusqueda;
VAR
x: dword;
ddxdas: dword;
Found: Integer;
Found2: Dword;
Found3: String;
begin
Mensajes('Chester Memory','Buscando memoria..');


Form1.ListBox1.Clear;
Form1.ListBox2.Clear;
Form1.ListBox2.Clear;
temporales2 := Tlist.Create;
Temporales2.Clear;
for x:= 0 to temporales.Count -1 do
begin

ddxdas := Dword(temporales.Items[x]);




 try


if Pbyte(ddxdas)^ = strtoint(Form1.Edit1.Text) THEN
begin
  Temporales2.Add(Temporales[x]);
END;


 EXCEPT

 end;


end;

try
// Limpiando..
temporales.Clear;
for x  := 0 to temporales2.Count do
begin
temporales.Add(temporales2.Items[x]);
end;
except
end;
form1.Label1.Caption := inttostr(temporales.Count);
//..
///Agregando al listbox
if  (temporales2.Count <=1000) then
begin

for  Found := 0 to temporales2.Count do
  begin
  TRY
  Found2 := Dword(temporales2.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));

  except

  END;
  end;

end;

// agregando al listbox
Mensajes('Chester Memory','listo');

end;

Procedure NewBusquedaf;
VAR
x: dword;
ddxdas: dword;
Found: Integer;
Found2: Dword;
Found3: String;
begin
Mensajes('Chester Memory','Buscando memoria..');


Form1.ListBox1.Clear;
Form1.ListBox2.Clear;
Form1.ListBox2.Clear;
temporales2 := Tlist.Create;
Temporales2.Clear;
for x:= 0 to temporales.Count -1 do
begin

ddxdas := Dword(temporales.Items[x]);




 try


if PDOUBLE(ddxdas)^ = strtoint(Form1.Edit1.Text) THEN
begin
  Temporales2.Add(Temporales[x]);
END;


 EXCEPT

 end;


end;

try
// Limpiando..
temporales.Clear;
for x  := 0 to temporales2.Count do
begin
temporales.Add(temporales2.Items[x]);
end;
except
end;
form1.Label1.Caption := inttostr(temporales.Count);
//..
///Agregando al listbox
if  (temporales2.Count <=1000) then
begin

for  Found := 0 to temporales2.Count do
  begin
  TRY
  Found2 := Dword(temporales2.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));

  except

  END;
  end;

end;

// agregando al listbox
Mensajes('Chester Memory','listo');

end;


Procedure NewBusqueda2;
VAR
x: dword;
ddxdas: dword;
Found: Integer;
Found2: Dword;
Found3: String;
begin
Mensajes('Chester Memory','Buscando memoria..');

Form1.ListBox1.Clear;
Form1.ListBox2.Clear;
Form1.ListBox2.Clear;
temporales2 := Tlist.Create;
Temporales2.Clear;


for x:= 0 to temporales.Count -1 do
begin

ddxdas := Dword(temporales.Items[x]);

 try

if Pword(ddxdas)^ = strtoint(Form1.Edit1.Text) THEN
begin
  Temporales2.Add(Temporales[x]);
END;


 EXCEPT

 end;


end;

try
// Limpiando..
temporales.Clear;
for x  := 0 to temporales2.Count do
begin
temporales.Add(temporales2.Items[x]);
end;
except
end;
form1.Label1.Caption := inttostr(temporales.Count);
//..
///Agregando al listbox
if  (temporales2.Count <=1000) then
begin

for  Found := 0 to temporales2.Count do
  begin
  TRY
  Found2 := Dword(temporales2.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));

  except

  END;
  end;

end;
Mensajes('Chester Memory','Listo..');

// agregando al listbox
end;

Procedure NewBusqueda4;
VAR
x: dword;
ddxdas: dword;
Found: Integer;
Found2: Dword;
Found3: String;
begin
Mensajes('Chester Memory','Buscando memoria..');


Form1.ListBox1.Clear;
Form1.ListBox2.Clear;
Form1.ListBox2.Clear;
temporales2 := Tlist.Create;
Temporales2.Clear;


for x:= 0 to temporales.Count -1 do
begin

ddxdas := Dword(temporales.Items[x]);

 try

if Pdword(ddxdas)^ = strtoint(Form1.Edit1.Text) THEN
begin
  Temporales2.Add(Temporales[x]);
END;


 EXCEPT

 end;


end;

try
// Limpiando..
temporales.Clear;
for x  := 0 to temporales2.Count do
begin
temporales.Add(temporales2.Items[x]);
end;
except
end;
form1.Label1.Caption := inttostr(temporales.Count);
//..
///Agregando al listbox
if  (temporales2.Count <=2000) then
begin

for  Found := 0 to temporales2.Count do
  begin
  TRY
  Found2 := Dword(temporales2.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));

  except

  END;
  end;

end;
Mensajes('Chester Memory','Listo..');

// agregando al listbox
end;


Procedure NewBusquedaTexto;
VAR
x: dword;
ddxdas: dword;
Found: Integer;
Found2: Dword;
Found3: String;
senores: String;
senores2: Pchar;
Test: Integer;
xxf: Integer;
XXF2: Integer;
encontrado: Integer;
Djcheatsss: Integer;
sumasDJ: Byte;
DjcheatsDireccion: dword;
begin
Mensajes('Chester Memory','Buscando memoria..');



Form1.sListBox1.Clear;
Form1.ListBox1.Clear;
Form1.ListBox2.Clear;
Form1.ListBox2.Clear;
temporales2 := Tlist.Create;
Temporales2.Clear;
form1.sListBox1.Items.Add(InttoStr( HexToInt(StringToHex(FORM1.edit1.text[1]))));
Test := strtoint(form1.sListBox1.Items[0]);


for x:= 0 to temporales.Count -1 do
begin

ddxdas := Dword(temporales.Items[x]);

 try

IF Pbyte(ddxdas)^ = test then
BEGIN
if LeerTexto(ddxdas,'') = true then
begin


end;
END;


 EXCEPT

 end;


end;

try
// Limpiando..
temporales.Clear;
for x  := 0 to temporales2.Count do
begin
temporales.Add(temporales2.Items[x]);
end;
except
end;
form1.Label1.Caption := inttostr(temporales.Count);
//..
///Agregando al listbox
if  (temporales2.Count <=1000) then
begin

for  Found := 0 to temporales2.Count do
  begin
  TRY
  Found2 := Dword(temporales2.Items[Found]);
  Found3 := IntToHex(Found2,0);
  Form1.ListBox1.Items.Add(IntToHex(Found2,0));

  except

  END;
  end;

end;
Mensajes('Chester Memory','Listo..');

// agregando al listbox
end;







{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
ScanAx;

end;

procedure TForm1.Borrar1Click(Sender: TObject);
var
Offset: String;

begin
try
offset := PointerLisT.Items[Listbox4.ItemIndex];
InputQuery('Offset:','OFFSET',Offset);
PointerLisT.Items[Listbox4.ItemIndex] := Offset;
EXCEPT
ShowMessage('Joder no tienes seleccionado nada como piensas cambiar de offset');

end;



end;

procedure TForm1.Button1Click(Sender: TObject);
var
SI: SYSTEM_INFO;
x: dword;
  F: TList;
begin
Form3 := Tform3.Create(nil); // Creando formulario de Agregar Direcciones
Form3.ShowModal;
if (ADDNombre = '') and (ADDDireccion = '') then
ELSE
BEGIN




ListBox3.Items.Add(ADDNombre);
ListBox4.Items.Add(ADDDireccion);
ListBox5.Items.Add(ADDTipo);
Form3.Free;
END;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
Guaa: Integer;
begin
//// nombre
ListBox7.Clear;
ListBox7.Items.Add('//nombre');
try
for Guaa := 0 to Listbox3.Items.Count do
begin
Listbox7.Items.Add(ListBox3.Items[Guaa])
end;
except
end;
ListBox7.Items.Add('//nombre');
////// nombre
/// Direccion
ListBox7.Items.Add('//Direccion');
try
for Guaa := 0 to Listbox4.Items.Count do
begin
Listbox7.Items.Add(ListBox4.Items[Guaa])
end;
except
end;
ListBox7.Items.Add('//Direccion');
/// Direccion

// tipo
ListBox7.Items.Add('//tipo');
try
for Guaa := 0 to Listbox5.Items.Count do
begin
Listbox7.Items.Add(ListBox5.Items[Guaa])
end;
except
end;
ListBox7.Items.Add('//tipo');
// tipo

// tipo
ListBox7.Items.Add('//pointer');
try
for Guaa := 0 to PointerList.Items.Count do
begin
Listbox7.Items.Add(PointerList.Items[Guaa])
end;
except
end;
ListBox7.Items.Add('//pointer');
// tipo

SaveDialog1.Execute;

ListBox7.Items.SaveToFile(SaveDialog1.FileName+'.chester');






end;

procedure TForm1.Button3Click(Sender: TObject);
begin
OpenDialog1.Execute;
if OpenDialog1.FileName = '' then
else
begin
PointerList.Clear;
ListBox7.Items.LoadFromFile(OpenDialog1.FileName);
ObtenerNombres2('//nombre',Listbox7,Listbox3);
ObtenerNombres2('//Direccion',Listbox7,Listbox4);
ObtenerNombres('//tipo',Listbox7,Listbox5);
ObtenerNombres('//pointer',Listbox7,PointerList);
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
listbox1.Clear;
Listbox2.Clear;
if (sComboBox1.Text = 'Valor Exacto')  then
begin
if TIP.ItemIndex = 0 then
newbusqueda;

//NewBusqueda;

if TIP.ItemIndex = 1     then
NewBusqueda2;

if TIP.ItemIndex = 2         then
NewBusqueda4;

if TIP.ItemIndex = 3         then
NewBusquedaTexto;

end;
if (sComboBox1.ItemIndex = 2)  then
begin
if (TIP.ItemIndex) = 0   then
Aumentar1Byte;


if TIP.ItemIndex = 1     then
Aumentar2Byte;

if TIP.ItemIndex = 2         then
Aumentar4Byte;



end;

if (sComboBox1.ItemIndex = 3)  then
begin
if (TIP.ItemIndex) = 0   then
Disminuir1Byte;


if TIP.ItemIndex = 1     then
Disminuir2Byte;

if TIP.ItemIndex = 2         then
Disminuir4Byte;



end;

if (sComboBox1.ItemIndex = 4)  then
begin
if (TIP.ItemIndex) = 0   then
Igual1Byte;


if TIP.ItemIndex = 1     then
Igual2Byte;

if TIP.ItemIndex = 2         then
Igual4Byte;



end;




end;






procedure TForm1.Button5Click(Sender: TObject);
var
x: integer;
begin
for x:=  0 to Listbox2.Items.Count do
  begin
  if ListBox2.Selected[x] then
  BEGIN

ListBox3.Items.Add('Sin Nombre');
ListBox4.Items.Add(ListBox1.Items[Listbox2.ItemIndex]);
ListBox5.Items.Add('4 Bytes');
  END;


  end;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
//ChesterScanTexto(Edit1.Text);


//if LeerTexto($000,'') then




end;


procedure TForm1.Button8Click(Sender: TObject);
begin
ChesterScanTexto(EDIT1.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form2 := Tform2.Create(nil); // Creando formulario de TIPo
Form4 := Tform4.Create(nil); // Creando formulario de TIPo
Memoryys := TMemoryys.Create(nil); // Creando formulario de TIPo
ptscan := Tptscan.Create(NIL);
apih := Tapih.Create(NIL);
prx := Tprx.Create(NIL);
gex := Tgex.Create(NIL);

Application.Title := 'Chester Memory';

 Tip.ItemIndex := 2;



end;

procedure TForm1.ListBox2DblClick(Sender: TObject);
var
x: integer;
begin

ListBox3.Items.Add('Sin Nombre');
ListBox4.Items.Add(ListBox1.Items[Listbox2.ItemIndex]);
ListBox5.Items.Add('4 Bytes');





end;


procedure TForm1.ListBox31Click(Sender: TObject);
begin
ListBox3.ItemIndex:= Listbox3.ItemIndex;
ListBox4.ItemIndex:= Listbox3.ItemIndex;
ListBox5.ItemIndex:= Listbox3.ItemIndex;
ListBox6.ItemIndex:= Listbox3.ItemIndex;
TrackBar1.Position :=  ListBox3.ItemIndex;
ListBox4.Selected[Listbox3.ItemIndex]:=  ListBox3.Selected[Listbox3.ItemIndex];
end;

procedure TForm1.ListBox31DblClick(Sender: TObject);
var
nombrelist: string;
begin
NombreList := Listbox3.Items[Listbox3.ItemIndex];
InputQuery('Nuevo Nombre','Ingrese Nombre',nombrelist);


Listbox3.Items[Listbox3.ItemIndex] := nombrelist;

end;

procedure TForm1.ListBox3Click(Sender: TObject);
begin
TRY
ListBox3.ItemIndex:= Listbox3.ItemIndex;
ListBox4.ItemIndex:= Listbox3.ItemIndex;
ListBox5.ItemIndex:= Listbox3.ItemIndex;
ListBox6.ItemIndex:= Listbox3.ItemIndex;
TrackBar1.Position :=  ListBox3.ItemIndex;
ListBox4.Selected[Listbox3.ItemIndex]:=  ListBox3.Selected[Listbox3.ItemIndex];
except

END;
end;


procedure TForm1.ListBox3ClickCheck(Sender: TObject);
var
FeezValue: String;
begin
FeezValue := Freez.Items[listbox3.ItemIndex];
if Listbox3.Checked[Listbox3.ItemIndex] then
begin
InputQuery('Valor a Frezzear','Valor',FeezValue);
Freez.Items[listbox3.ItemIndex] := FeezValue;

end;

end;

procedure TForm1.ListBox3DblClick(Sender: TObject);
var
nombrelist: string;
begin
TRY
NombreList := Listbox3.Items[Listbox3.ItemIndex];
InputQuery('Nuevo Nombre','Ingrese Nombre',nombrelist);


Listbox3.Items[Listbox3.ItemIndex] := nombrelist;
except

END;

end;


procedure TForm1.ListBox41Click(Sender: TObject);
begin
ListBox3.ItemIndex:= Listbox4.ItemIndex;
ListBox4.ItemIndex:= Listbox4.ItemIndex;
ListBox5.ItemIndex:= Listbox4.ItemIndex;
ListBox6.ItemIndex:= Listbox4.ItemIndex;
TrackBar1.Position :=  ListBox4.ItemIndex;
end;

procedure TForm1.ListBox41DblClick(Sender: TObject);
var
Direccionlist: string;
begin
Direccionlist:= Listbox4.Items[Listbox4.ItemIndex];
InputQuery('Ingrese Direccion','Direccion',Direccionlist);
if Direccionlist = '' then
else
begin
Listbox4.Items[Listbox4.ItemIndex] := Direccionlist;



end;



end;

procedure TForm1.ListBox4Click(Sender: TObject);
var
offset: Dword;
Guardar: dword;
Guardar2: dword;
begin
try
if Listbox4.Checked[Listbox4.ItemIndex] = true then
begin
Offset := StrToInt('$'+pointerlist.Items[Listbox4.ItemIndex]);
Guardar2 := StrToInt('$'+listbox4.Items[Listbox4.ItemIndex]);
Guardar := pdword(guardar2)^+Offset;
Label3.Caption := 'direccion del pointer: '+ Listbox4.Items[Listbox4.ItemIndex]+' offset: '+ Pointerlist.Items[Listbox4.ItemIndex] + ' resultado: '+ (inttohex(Guardar,0));
Label2.Caption :=  (inttohex(Guardar,0));

end;

if Listbox4.Checked[Listbox4.ItemIndex] = true then
else
begin
Label3.Caption := '^Null';


end;


ListBox3.ItemIndex:= Listbox4.ItemIndex;
ListBox4.ItemIndex:= Listbox4.ItemIndex;
ListBox5.ItemIndex:= Listbox4.ItemIndex;
ListBox6.ItemIndex:= Listbox4.ItemIndex;
TrackBar1.Position :=  ListBox4.ItemIndex;
EXCEPT

end;
end;


procedure TForm1.ListBox4ClickCheck(Sender: TObject);
var
OFFSET: String;
begin
OFFSET := PointerList.Items[Listbox4.ItemIndex];
if Listbox4.Checked[Listbox4.ItemIndex] then
begin
InputQuery('Offset del Puntero','OFFSET',OFFSET);
PointerList.Items[Listbox4.ItemIndex] := offset;


end;

if Listbox4.Checked[Listbox4.ItemIndex] then
else
begin
PointerList.Items[Listbox4.ItemIndex] := '#SinPointer';
LABEL3.Caption := '##%&%&%';




end;


end;

procedure TForm1.ListBox4DblClick(Sender: TObject);
var
Direccionlist: string;
begin
try


Direccionlist:= Listbox4.Items[Listbox4.ItemIndex];
InputQuery('Ingrese Direccion','Direccion',Direccionlist);
if Direccionlist = '' then
else
begin
Listbox4.Items[Listbox4.ItemIndex] := Direccionlist;



end;



EXCEPT

end;



end;


procedure TForm1.ListBox5Click(Sender: TObject);
begin
ListBox3.ItemIndex:= Listbox5.ItemIndex;
ListBox4.ItemIndex:= Listbox5.ItemIndex;
ListBox5.ItemIndex:= Listbox5.ItemIndex;
ListBox6.ItemIndex:= Listbox5.ItemIndex;
TrackBar1.Position :=  ListBox5.ItemIndex;
end;

procedure TForm1.ListBox5DblClick(Sender: TObject);
begin
Form2.ShowModal;
Listbox5.Items[Listbox5.ItemIndex] := Tipo;
end;

procedure TForm1.ListBox6Click(Sender: TObject);
begin
ListBox3.ItemIndex:= Listbox6.ItemIndex;
ListBox4.ItemIndex:= Listbox6.ItemIndex;
ListBox5.ItemIndex:= Listbox6.ItemIndex;
ListBox6.ItemIndex:= Listbox6.ItemIndex;
TrackBar1.Position :=  ListBox6.ItemIndex;
end;

procedure TForm1.ListBox6DblClick(Sender: TObject);
VAR
Values: String;
AdentroADD: Integer;
Guardar2: dword;
Guardar: Dword;
Offset: dword;
begin
Values := Listbox6.Items[Listbox6.ItemIndex];
///
if Listbox5.Items[Listbox6.ItemIndex] = 'Float' then     // 1 bYTE
begin
if Listbox4.Checked[ListBox6.ItemIndex] = true then
begin
InputQuery('Nuevo Valor','Valor',Values);

Guardar2 := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
TRy
Offset := StrToInt('$'+pointerlist.Items[Listbox6.ItemIndex]);
except
ShowMessage('El offset que has Asignado no es valido');

End;
Guardar := pdword(guardar2)^+Offset;

TRY
PDouble(Guardar)^ := strToFloat(values);
except
ShowMessage('no tengo permiso para escribir en esta direccion');

END;




end;


if (Listbox5.Items[Listbox6.ItemIndex] = 'Float') and  (Listbox4.Checked[ListBox6.ItemIndex] = false) then
//ELSE
BEGIN

AdentroADD := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
InputQuery('Nuevo Valor','Valor',Values);
PDouble(AdentroADD)^ := StrToFloat(Values);
END;
end;   // 1 byTE
///

if Listbox5.Items[Listbox6.ItemIndex] = 'Byte' then     // 1 bYTE
begin
if Listbox4.Checked[ListBox6.ItemIndex] = true then
begin
InputQuery('Nuevo Valor','Valor',Values);

Guardar2 := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
TRy
Offset := StrToInt('$'+pointerlist.Items[Listbox6.ItemIndex]);
except
ShowMessage('El offset que has Asignado no es valido');

End;
Guardar := pdword(guardar2)^+Offset;

TRY
Pbyte(Guardar)^ := STRTOINT(values);
except
ShowMessage('no tengo permiso para escribir en esta direccion');

END;




end;


if (Listbox5.Items[Listbox6.ItemIndex] = 'Byte') and  (Listbox4.Checked[ListBox6.ItemIndex] = false) then
//ELSE
BEGIN

AdentroADD := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
InputQuery('Nuevo Valor','Valor',Values);
Pbyte(AdentroADD)^ := strToInt(Values);
END;
end;   // 1 byTE

if Listbox5.Items[Listbox6.ItemIndex] = '2 Bytes' then     // 2 bYTE
begin
if Listbox4.Checked[ListBox6.ItemIndex] = true then
begin
InputQuery('Nuevo Valor','Valor',Values);
Guardar2 := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
TRY
Offset := StrToInt('$'+pointerlist.Items[Listbox6.ItemIndex]);
except
  ShowMessage('El offset que has Asignado no es valido');
END;
Guardar := pdword(guardar2)^+Offset;
Pword(Guardar)^ := STRTOINT(values);



end;
if ((Listbox5.Items[Listbox6.ItemIndex]) = '2 Bytes') and (Listbox4.Checked[ListBox6.ItemIndex] = false)   then
BEGIN

AdentroADD := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
InputQuery('Nuevo Valor','Valor',Values);
Pword(AdentroADD)^ := strToInt(Values);
END;
end;   // 2 byTE












if Listbox5.Items[Listbox6.ItemIndex] = '4 Bytes' then     // 4 bYTE
begin
if Listbox4.Checked[ListBox6.ItemIndex] = true then
begin
InputQuery('Nuevo Valor','Valor',Values);

Guardar2 := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
try
Offset := StrToInt('$'+pointerlist.Items[Listbox6.ItemIndex]);
EXCEPT
ShowMessage('El offset que has Asignado no es valido');

end;
Guardar := pdword(guardar2)^+Offset;
Pdword(Guardar)^ := STRTOINT(values);



end;
if (Listbox5.Items[Listbox6.ItemIndex] = '4 Bytes') AND  (Listbox4.Checked[ListBox6.ItemIndex] = false) then
BEGIN

AdentroADD := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
InputQuery('Nuevo Valor','Valor',Values);
Pdword(AdentroADD)^ := STRTOINT(values);
END;
end;
 // texto


 /////
if Listbox5.Items[Listbox6.ItemIndex] = 'Texto' then     // 4 bYTE
begin
if Listbox4.Checked[ListBox6.ItemIndex] = true then
begin
InputQuery('Nuevo Valor','Valor',Values);

Guardar2 := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
try
Offset := StrToInt('$'+pointerlist.Items[Listbox6.ItemIndex]);
EXCEPT
ShowMessage('El offset que has Asignado no es valido');

end;
Guardar := pdword(guardar2)^+Offset;
ChesterEditarTexto(values,Guardar2);



end;
if (Listbox5.Items[Listbox6.ItemIndex] = 'Texto') AND  (Listbox4.Checked[ListBox6.ItemIndex] = false) then
BEGIN

AdentroADD := StrToInt('$'+listbox4.Items[Listbox6.ItemIndex]);
InputQuery('Nuevo Valor','Valor',Values);
ChesterEditarTexto(values,AdentroADD);
END;
end;
 // texto
 ///







end;

procedure TForm1.sBitBtn1Click(Sender: TObject);
begin
try
PointerList.Items[Listbox3.ItemIndex] := '#SinPointer';
ListBox3.Items.Delete(Listbox3.ItemIndex);
ListBox4.Items.Delete(Listbox4.ItemIndex);
ListBox5.Items.Delete(Listbox5.ItemIndex);
ListBox6.Items.Delete(Listbox6.ItemIndex);
except
ShowMessage('no hay nada seleccionado a borrar');

end;
end;

procedure TForm1.sBitBtn2Click(Sender: TObject);
begin
prx.ShowModal;
end;

procedure TForm1.sButton1Click(Sender: TObject);
begin
Memoryys.ShowModal;
end;

procedure TForm1.sButton2Click(Sender: TObject);
begin
ptscan.ShowModal;
end;

procedure TForm1.sButton3Click(Sender: TObject);
begin
gex.ShowModal;
end;

procedure TForm1.sButton4Click(Sender: TObject);
begin
OpenDialog2.Execute;
if OpenDialog2.FileName = '' then
else
begin
PointerList.Clear;
LoadLibrary(PWideChar(OpenDialog2.FileName));


end;

end;

procedure TForm1.sButton5Click(Sender: TObject);
begin
apih.ShowModal;
end;

procedure TForm1.sButton6Click(Sender: TObject);
var
x: integer;
begin
TRY
x := StrToInt('$'+Edit1.Text);
edit1.Text := inttostr(x);
EXCEPT
ShowMessage('Value no hexdecimal');

END;

end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
sListBox1.Clear;
listbox1.Clear;
Listbox2.Clear;
if edit1.Text = '' then
begin
  ShowMessage('por favor colocar un valor');
end;
if edit1.Text = ''  then
else
begin
if (sComboBox1.Text = 'Valor Exacto')  then
begin
if (TIP.ItemIndex) = 0   then
Scan1;
//Scan1(edit1.Text);

if TIP.ItemIndex = 1     then
Scan2(edit1.Text);

if TIP.ItemIndex = 2         then
Scan4(edit1.Text);

if TIP.ItemIndex =  3         then
ChesterScanTexto('');

end;

if TIP.ItemIndex =  4         then
Scanf;

end;


if (sComboBox1.ItemIndex = 1)  then
begin
if (TIP.ItemIndex) = 0   then
ScanDesconocido1Byte;


if TIP.ItemIndex = 1     then
ScanDesconocido2Byte;

if TIP.ItemIndex = 2         then
ScanDesconocido4Byte;



end;
end;








procedure TForm1.SpeedButton2Click(Sender: TObject);
var
Guardar: Integer;
Guardar2: Integer;
begin


//TrackBar1.PageSize;



end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
Guardar: dword;
Guardar2: Integer;
Guardar3: Dword;
C: Integer;
D: Integer;
protect: dword;
offset: Dword;
guardar5: string;
guardar4:string;
Guardarx: extended;
Guardar2x: Integer;
Guardar3x: extended;
Cx: Integer;
Dx: Integer;
protectx: dword;
offsetx: Dword;
guardar5x: string;
guardar4x:string;
begin
TrackBar1.Max := Listbox3.Items.Count;
TRY

for c := 0 to Listbox4.Items.Count do
begin





// 1 Byte
if Listbox5.Items[c] = 'Byte' then
begin




Guardar2 := StrToInt('$'+listbox4.Items[c]);



TRY
except
END;
TRY
if PointerList.Items[c] = '#SinPointer' then
else
begin
Form1.ListBox4.Checked[c] := true;
Guardar2 := StrToInt('$'+listbox4.Items[c]);
Offset := StrToInt('$'+pointerlist.Items[c]);
Guardar := pdword(guardar2)^+Offset;

try
Guardar3 := Pbyte(Guardar)^;
except
end;
if sRadioButton4.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntToHex(Guardar3,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntTostr(Guardar3));
END;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
begin
Listbox6.Items[C]:= '#No Puede ser leido';

 // Listbox4.Checked[c] := false;

end;




if ListBox4.Checked[c] then
begin
//Label3.Caption := '^'+ (inttohex(Guardar,0));
end;
end;
except
END;
if PointerList.Items[c] = '#SinPointer' then
begin
try
Guardar := Pbyte(guardar2)^;
if sRadioButton4.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntToHex(Guardar,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntTostr(Guardar));
END;
EXCEPT
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
// 1 Byte



// 2 Byte
if Listbox5.Items[c] = '2 Bytes' then
begin
Guardar2 := StrToInt('$'+listbox4.Items[c]);
TRY
except
END;
TRY
if PointerList.Items[c] = '#SinPointer' then
else
begin
Form1.ListBox4.Checked[c] := true;
Guardar2 := StrToInt('$'+listbox4.Items[c]);
Offset := StrToInt('$'+pointerlist.Items[c]);
Guardar := pdword(guardar2)^+Offset;

try
Guardar3 := pword(Guardar)^;
except
end;
if sRadioButton4.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntToHex(Guardar3,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntTostr(Guardar3));
END;
if ListBox4.Checked[c] then
begin
//Label3.Caption := '^'+ (inttohex(Guardar,0));
end;
end;
except
END;
if PointerList.Items[c] = '#SinPointer' then
begin
try
Guardar := PWord(guardar2)^;
if sRadioButton4.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntToHex(Guardar,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntTostr(Guardar));
END;
EXCEPT
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
// 2 Byte

// 4 Bytes
if Listbox5.Items[c] = '4 Bytes' then
begin
Guardar2 := StrToInt('$'+listbox4.Items[c]);
TRY
except
END;
TRY
if PointerList.Items[c] = '#SinPointer' then
else
begin
Form1.ListBox4.Checked[c] := true;
Guardar2 := StrToInt('$'+listbox4.Items[c]);
Offset := StrToInt('$'+pointerlist.Items[c]);
Guardar := pdword(guardar2)^+Offset;

try
Guardar3 := pdword(Guardar)^;
except
end;
if sRadioButton4.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntToHex(Guardar3,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntTostr(Guardar3));
END;
if ListBox4.Checked[c] then
begin
//Label3.Caption := '^'+ (inttohex(Guardar,0));
end;
end;
except
END;
if PointerList.Items[c] = '#SinPointer' then
begin
try
Guardar := PdWord(guardar2)^;
if sRadioButton4.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntToHex(Guardar,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntTostr(Guardar));
END;
EXCEPT
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
// 4Byte


//  float
if Listbox5.Items[c] = 'Float' then
begin
Guardar2 := StrToInt('$'+listbox4.Items[c]);
TRY
except
END;
TRY
if PointerList.Items[c] = '#SinPointer' then
else
begin
Form1.ListBox4.Checked[c] := true;
Guardar2 := StrToInt('$'+listbox4.Items[c]);
Offset := StrToInt('$'+pointerlist.Items[c]);
Guardar := pdword(guardar2)^+Offset;

try
Guardar3x := Pdouble(Guardar)^;
except
end;
if sRadioButton4.Checked = TrUE then
BEGIN

//Listbox6.Items[C]:= (IntToHex(Guardar3,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (FloatToStr(Guardar3x));
END;
if ListBox4.Checked[c] then
begin
//Label3.Caption := '^'+ (inttohex(Guardar,0));
end;
end;
except
END;
if PointerList.Items[c] = '#SinPointer' then
begin
try
Guardarx := PDouble(guardar2)^;
if sRadioButton4.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (IntToHex(Guardar,0));
END;

if sRadioButton3.Checked = TrUE then
BEGIN

Listbox6.Items[C]:= (FloatToStr(Guardarx));
END;
EXCEPT
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
// float



// texto
if Listbox5.Items[c] = 'Texto' then
begin
Guardar2 := StrToInt('$'+listbox4.Items[c]);
TRY
except
END;
TRY
if PointerList.Items[c] = '#SinPointer' then
else
begin
Form1.ListBox4.Checked[c] := true;
Guardar2 := StrToInt('$'+listbox4.Items[c]);
Offset := StrToInt('$'+pointerlist.Items[c]);
Guardar := pdword(guardar2)^+Offset;

try
Guardar4 := ChesterLeerTexto(Guardar);
except
end;
Listbox6.Items[C]:= (Guardar4);
if ListBox4.Checked[c] then
begin
//Label3.Caption := '^'+ (inttohex(Guardar,0));
end;
end;
except
END;
if PointerList.Items[c] = '#SinPointer' then
begin
try
Guardar4 := ChesterLeerTexto(Guardar2);
Listbox6.Items[C]:= (Guardar4);
EXCEPT
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
IF VirtualProtect(ptr(Guardar2),1,PAGE_READWRITE,protect) THEN
else
Listbox6.Items[C]:= '#No Puede ser leido';
end;
// 2 Byte




















end;
except

END;






end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
leer: Integer;
leer2: integer;
x: Integer;
AdentroADD: Integer;
leertextoss:string;
xd: extended;
begin
try





for x:= 0 to Listbox1.Items.Count do
begin
if TIP.ItemIndex = 0 then   // 1 Byte
begin
LEER2 := StrToInt('$'+listbox1.Items[x]);
leer := Pbyte(leer2)^;
end;

if TIP.ItemIndex = 1 then   // 2 Byte
begin
LEER2 := StrToInt('$'+listbox1.Items[x]);
leer := Pword(leer2)^;
end;

if TIP.ItemIndex = 2 then   // 4 Byte
begin
LEER2 := StrToInt('$'+listbox1.Items[x]);
leer := Pdword(leer2)^;
leer := Pword(leer2)^
end;

if TIP.ItemIndex = 3 then   // texto
begin
LEER2 := StrToInt('$'+listbox1.Items[x]);
leertextoss := ChesterLeerTexto(leer2);
end;

if TIP.ItemIndex = 4 then   // texto
begin

LEER2 := StrToInt('$'+listbox1.Items[x]);
xd := pdouble(LEER2)^;
leertextoss := floattostr(xd);


end;






if (Tip.ItemIndex = 0) or (Tip.ItemIndex = 1) or (Tip.ItemIndex = 2) then
begin
Listbox2.Items[x] := Listbox1.Items[x] +'        '+ inttostr(leer);
end;

if Tip.ItemIndex = 3 then //
begin
Listbox2.Items[x] := Listbox1.Items[x] +'      '+ leertextoss;

end;

if Tip.ItemIndex = 4 then //
begin
Listbox2.Items[x] := Listbox1.Items[x] +'      '+ leertextoss;

end;





end;
EXCEPT

end;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
var
x: Integer;
AdentroADD: dword;
Guardar: dword;
Guardar2: Integer;
Guardar3: Dword;
offset: dword;
begin
try

for X:=  0 to Listbox3.Items.Count do
  begin




  

        // 1 Byte



      if Listbox4.Checked[x] = false then
      BEGIN
     if Listbox5.Items[x]= 'Byte'   then
  BEGIN


        if Listbox4.Checked[x] = false then
        begin
  if Listbox3.Checked[x] = True then
  begin
  AdentroADD := StrToInt('$'+listbox4.Items[x]);

  PByte(AdentroADD)^ := strtoint(freez.Items[x]);
  end;
  END;
      END;
      END;

           if Listbox5.Items[x]= 'Byte'   then
           begin
        if Listbox4.Checked[x] = TRUE then
        begin
        Guardar2 := StrToInt('$'+listbox4.Items[X]);
           Offset := StrToInt('$'+pointerlist.Items[X]);
            Guardar := pdword(guardar2)^+Offset;
            Pbyte(Guardar)^ :=  strtoint(freez.Items[x]);


        end;
           end;





      // 1 BYTE








// 2 Byte



      if Listbox4.Checked[x] = false then
      BEGIN
     if Listbox5.Items[x]= '2 Bytes'   then
  BEGIN


        if Listbox4.Checked[x] = false then
        begin
  if Listbox3.Checked[x] = True then
  begin
  AdentroADD := StrToInt('$'+listbox4.Items[x]);

  Pword(AdentroADD)^ := strtoint(freez.Items[x]);
  end;
  END;
      END;
      END;

           if Listbox5.Items[x]= '2 Bytes'   then
           begin
        if Listbox4.Checked[x] = TRUE then
        begin
        Guardar2 := StrToInt('$'+listbox4.Items[X]);
           Offset := StrToInt('$'+pointerlist.Items[X]);
            Guardar := pdword(guardar2)^+Offset;
            Pword(Guardar)^ :=  strtoint(freez.Items[x]);


        end;
           end;





      // 2 BYTE



// 4 Byte



      if Listbox4.Checked[x] = false then
      BEGIN
     if Listbox5.Items[x]= '4 Bytes'   then
  BEGIN


        if Listbox4.Checked[x] = false then
        begin
  if Listbox3.Checked[x] = True then
  begin
  AdentroADD := StrToInt('$'+listbox4.Items[x]);

  PDword(AdentroADD)^ := strtoint(freez.Items[x]);
  end;
  END;
      END;
      END;

           if Listbox5.Items[x]= '4 Bytes'   then
           begin
        if Listbox4.Checked[x] = TRUE then
        begin
        Guardar2 := StrToInt('$'+listbox4.Items[X]);
           Offset := StrToInt('$'+pointerlist.Items[X]);
            Guardar := pdword(guardar2)^+Offset;
            Pdword(Guardar)^ :=  strtoint(freez.Items[x]);


        end;
           end;





      // 4 BYTE


      // texto



      if Listbox4.Checked[x] = false then
      BEGIN
     if Listbox5.Items[x]= 'Texto'   then
  BEGIN


        if Listbox4.Checked[x] = false then
        begin
  if Listbox3.Checked[x] = True then
  begin
  AdentroADD := StrToInt('$'+listbox4.Items[x]);

  ChesterEditarTexto(freez.Items[x],AdentroADD);
  end;
  END;
      END;
      END;

           if Listbox5.Items[x]= 'Texto'   then
           begin
        if Listbox4.Checked[x] = TRUE then
        begin
        Guardar2 := StrToInt('$'+listbox4.Items[X]);
           Offset := StrToInt('$'+pointerlist.Items[X]);
            Guardar := pdword(guardar2)^+Offset;
              ChesterEditarTexto(freez.Items[x],Guardar);



        end;
           end;





      //texto















  end;
except

end;





end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
if sComboBox1.ItemIndex = 1 then
begin
edit1.Enabled := false;

end;

if sComboBox1.ItemIndex = 1 then
ELSE
begin
edit1.Enabled := true;

end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
Listbox3.ItemIndex :=      TrackBar1.Position;
Listbox4.ItemIndex :=      TrackBar1.Position;
Listbox5.ItemIndex :=      TrackBar1.Position;
Listbox6.ItemIndex :=      TrackBar1.Position;
end;

procedure TForm1.verenmemoria1Click(Sender: TObject);
begin
if ListBox4.Checked[ListBox4.ItemIndex] = False then
BEGIN
Memoryys.sLabel1.Caption := Form1.ListBox4.Items[Listbox4.ItemIndex];
Memoryys.ShowModal;
END;

if ListBox4.Checked[ListBox4.ItemIndex] = true then
BEGIN
Memoryys.sLabel1.Caption := LABEL2.Caption;
Memoryys.ShowModal;
END;

end;

end.
