unit Memoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sLabel, Vcl.ExtCtrls,
  sPanel, sButton, sEdit, Vcl.Menus, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnPopup, sSkinManager;

type
  TMemoryys = class(TForm)
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sEdit5: TsEdit;
    sEdit6: TsEdit;
    sEdit7: TsEdit;
    sEdit8: TsEdit;
    sEdit9: TsEdit;
    sEdit10: TsEdit;
    sEdit11: TsEdit;
    sEdit12: TsEdit;
    sEdit13: TsEdit;
    sEdit14: TsEdit;
    sEdit15: TsEdit;
    sEdit16: TsEdit;
    sEdit17: TsEdit;
    sEdit18: TsEdit;
    sEdit19: TsEdit;
    sEdit20: TsEdit;
    sEdit21: TsEdit;
    sEdit22: TsEdit;
    sEdit23: TsEdit;
    sEdit24: TsEdit;
    sEdit25: TsEdit;
    sEdit26: TsEdit;
    sEdit27: TsEdit;
    sEdit28: TsEdit;
    sEdit29: TsEdit;
    sEdit30: TsEdit;
    sEdit31: TsEdit;
    sEdit32: TsEdit;
    sEdit33: TsEdit;
    sEdit34: TsEdit;
    sEdit35: TsEdit;
    sEdit36: TsEdit;
    sEdit37: TsEdit;
    sEdit38: TsEdit;
    sEdit39: TsEdit;
    sEdit40: TsEdit;
    sEdit41: TsEdit;
    sEdit42: TsEdit;
    sEdit43: TsEdit;
    sEdit44: TsEdit;
    sEdit45: TsEdit;
    sEdit46: TsEdit;
    sEdit47: TsEdit;
    sEdit48: TsEdit;
    sEdit49: TsEdit;
    sEdit50: TsEdit;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sLabel10: TsLabel;
    Timer1: TTimer;
    PopupActionBar1: TPopupActionBar;
    ira1: TMenuItem;
    sSkinManager1: TsSkinManager;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure sButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ira1Click(Sender: TObject);
    procedure sEdit1DblClick(Sender: TObject);
    procedure sEdit2DblClick(Sender: TObject);
    procedure sEdit3DblClick(Sender: TObject);
    procedure sEdit4DblClick(Sender: TObject);
    procedure sEdit5DblClick(Sender: TObject);
    procedure sEdit6DblClick(Sender: TObject);
    procedure sEdit7DblClick(Sender: TObject);
    procedure sEdit8DblClick(Sender: TObject);
    procedure sEdit9DblClick(Sender: TObject);
    procedure sEdit10DblClick(Sender: TObject);
    procedure sEdit11DblClick(Sender: TObject);
    procedure sEdit12DblClick(Sender: TObject);
    procedure sEdit13DblClick(Sender: TObject);
    procedure sEdit14DblClick(Sender: TObject);
    procedure sEdit15DblClick(Sender: TObject);
    procedure sEdit16DblClick(Sender: TObject);
    procedure sEdit17DblClick(Sender: TObject);
    procedure sEdit18DblClick(Sender: TObject);
    procedure sEdit19DblClick(Sender: TObject);
    procedure sEdit20DblClick(Sender: TObject);
    procedure sEdit21DblClick(Sender: TObject);
    procedure sEdit22DblClick(Sender: TObject);
    procedure sEdit23DblClick(Sender: TObject);
    procedure sEdit24DblClick(Sender: TObject);
    procedure sEdit25DblClick(Sender: TObject);
    procedure sEdit26DblClick(Sender: TObject);
    procedure sEdit27DblClick(Sender: TObject);
    procedure sEdit28DblClick(Sender: TObject);
    procedure sEdit29DblClick(Sender: TObject);
    procedure sEdit30DblClick(Sender: TObject);
    procedure sEdit31DblClick(Sender: TObject);
    procedure sEdit32DblClick(Sender: TObject);
    procedure sEdit33DblClick(Sender: TObject);
    procedure sEdit34DblClick(Sender: TObject);
    procedure sEdit35DblClick(Sender: TObject);
    procedure sEdit36DblClick(Sender: TObject);
    procedure sEdit37DblClick(Sender: TObject);
    procedure sEdit38DblClick(Sender: TObject);
    procedure sEdit39DblClick(Sender: TObject);
    procedure sEdit40DblClick(Sender: TObject);
    procedure sEdit41DblClick(Sender: TObject);
    procedure sEdit42DblClick(Sender: TObject);
    procedure sEdit43DblClick(Sender: TObject);
    procedure sEdit44DblClick(Sender: TObject);
    procedure sEdit45DblClick(Sender: TObject);
    procedure sEdit46DblClick(Sender: TObject);
    procedure sEdit47DblClick(Sender: TObject);
    procedure sEdit48DblClick(Sender: TObject);
    procedure sEdit49DblClick(Sender: TObject);
    procedure sEdit50DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Memoryys: TMemoryys;
  //Memoria: dword;
leerxd: dword;
informacion: Byte;
Memoria1: dword;
Memoria2: dword;
Memoria3: dword;
Memoria4: dword;
Memoria5: dword;


implementation

fUNCTION LeerTextoXD (Const Direccion: dword):String;
var
x: dword;
Aleer: String;
begin
aleer := PChar(Direccion)^;
for x:= $1 TO $10 DO
  begin
  ALEER := ALEER + PChar(Direccion+X)^;
  end;
  Result := Aleer;
end;

Function ChesterLeerTexto(Const Direccion: Dword):Tcaption;
var
protect: dword;
x: SIZE_T;
Texto: String;
S: Tedit;
sssss: pointer;
RARE: Integer;
Value: ARRAY[1..16] of AnsiChar;
begin
s := Tedit.Create(nil);
//VirtualProtectex(getcurrentprocess,ptr(Direccion),sizeof(Value),PAGE_EXECUTE_READWRITE,protect);
ReadProcessmemory(getcurrentprocess,ptr(Direccion),@value,sizeof(Value),X);
texto := Value;
s.Text := Texto;
Result := S.Text;
end;


{$R *.dfm}

procedure TMemoryys.Button1Click(Sender: TObject);
var
add: dword;
begin
add := strtoint('$'+slabel1.Caption);
add := add -$1;
slabel1.Caption := InttoHex(add,0);
lABEL1.Caption := LeerTextoXD(MEMORIA1);


end;

procedure TMemoryys.Button2Click(Sender: TObject);
var
add: dword;
begin
add := strtoint('$'+slabel1.Caption);
add := add +$1;
slabel1.Caption := InttoHex(add,0);


end;

procedure TMemoryys.ira1Click(Sender: TObject);
var
dd: STRING;
begin
InputQuery('Ingrese a la direccion','Direccion',dd);
SLabel1.Caption := dd;
end;

procedure TMemoryys.sButton1Click(Sender: TObject);
begin
sedit10.Text :='';
end;

procedure TMemoryys.sEdit10DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$9)^ := Value2;
end;

procedure TMemoryys.sEdit11DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2)^ := Value2;
end;

procedure TMemoryys.sEdit12DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$1)^ := Value2;
end;

procedure TMemoryys.sEdit13DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$2)^ := Value2;
end;

procedure TMemoryys.sEdit14DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$3)^ := Value2;
end;

procedure TMemoryys.sEdit15DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$4)^ := Value2;
end;

procedure TMemoryys.sEdit16DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$5)^ := Value2;
end;

procedure TMemoryys.sEdit17DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$6)^ := Value2;
end;

procedure TMemoryys.sEdit18DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$7)^ := Value2;
end;

procedure TMemoryys.sEdit19DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$8)^ := Value2;
end;

procedure TMemoryys.sEdit1DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1)^ := Value2;
end;

procedure TMemoryys.sEdit20DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria2+$9)^ := Value2;
end;

procedure TMemoryys.sEdit21DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3)^ := Value2;
end;
procedure TMemoryys.sEdit22DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$1)^ := Value2;
end;

procedure TMemoryys.sEdit23DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$2)^ := Value2;
end;

procedure TMemoryys.sEdit24DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$3)^ := Value2;
end;

procedure TMemoryys.sEdit25DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$4)^ := Value2;
end;
procedure TMemoryys.sEdit26DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$5)^ := Value2;
end;

procedure TMemoryys.sEdit27DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$6)^ := Value2;
end;

procedure TMemoryys.sEdit28DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$7)^ := Value2;
end;
procedure TMemoryys.sEdit29DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$8)^ := Value2;
end;

procedure TMemoryys.sEdit2DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$1)^ := Value2;
end;

procedure TMemoryys.sEdit30DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria3+$9)^ := Value2;
end;

procedure TMemoryys.sEdit31DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4)^ := Value2;
end;

procedure TMemoryys.sEdit32DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$1)^ := Value2;
end;

procedure TMemoryys.sEdit33DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$2)^ := Value2;
end;


procedure TMemoryys.sEdit34DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$3)^ := Value2;
end;


procedure TMemoryys.sEdit35DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$4)^ := Value2;
end;


procedure TMemoryys.sEdit36DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$5)^ := Value2;
end;


procedure TMemoryys.sEdit37DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$6)^ := Value2;
end;


procedure TMemoryys.sEdit38DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$7)^ := Value2;
end;


procedure TMemoryys.sEdit39DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$8)^ := Value2;
end;


procedure TMemoryys.sEdit3DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$2)^ := Value2;
end;

procedure TMemoryys.sEdit40DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria4+$9)^ := Value2;
end;


procedure TMemoryys.sEdit41DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5)^ := Value2;
end;


procedure TMemoryys.sEdit42DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$1)^ := Value2;
end;


procedure TMemoryys.sEdit43DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$2)^ := Value2;
end;

procedure TMemoryys.sEdit44DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$3)^ := Value2;
end;

procedure TMemoryys.sEdit45DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$4)^ := Value2;
end;

procedure TMemoryys.sEdit46DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$5)^ := Value2;
end;

procedure TMemoryys.sEdit47DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$6)^ := Value2;
end;

procedure TMemoryys.sEdit48DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$7)^ := Value2;
end;
procedure TMemoryys.sEdit49DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$8)^ := Value2;
end;

procedure TMemoryys.sEdit4DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$3)^ := Value2;
end;

procedure TMemoryys.sEdit50DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria5+$9)^ := Value2;
end;

procedure TMemoryys.sEdit5DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$4)^ := Value2;
end;

procedure TMemoryys.sEdit6DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$5)^ := Value2;
end;

procedure TMemoryys.sEdit7DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$6)^ := Value2;
end;

procedure TMemoryys.sEdit8DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$7)^ := Value2;
end;

procedure TMemoryys.sEdit9DblClick(Sender: TObject);
var
Values: String;
Value2:Byte;
begin
InputQuery('Nuevo Valor','Valor',Values);
Value2 := strtoint('$'+values);
Pbyte(Memoria1+$8)^ := Value2;
end;

procedure TMemoryys.Timer1Timer(Sender: TObject);
var
memoria: dword;
begin
try

Memoria := StrToInt('$'+slabel1.Caption);


Slabel1.Caption := InttoHex(memoria,0);
Slabel2.Caption := InttoHex(memoria+$10,0);
Slabel3.Caption := InttoHex(memoria+$20,0);
Slabel4.Caption := InttoHex(memoria+$30,0);
Slabel5.Caption := InttoHex(memoria+$40,0);
Memoria2 := StrToInt('$'+slabel2.Caption);
Memoria3 := StrToInt('$'+slabel3.Caption);
Memoria4 := StrToInt('$'+slabel4.Caption);
Memoria5 := StrToInt('$'+slabel5.Caption);
memoria1 := memoria;

LEERXD := StrToInt('$'+slabel1.Caption);
Slabel6.Caption := LeerTextoXD(leerxd);
LEERXD := StrToInt('$'+slabel2.Caption);
Slabel7.Caption := LeerTextoXD(leerxd+$16);
LEERXD := StrToInt('$'+slabel3.Caption);
Slabel8.Caption := LeerTextoXD(leerxd+$2c);
LEERXD := StrToInt('$'+slabel4.Caption);
Slabel9.Caption := LeerTextoXD(leerxd+$42);
LEERXD := StrToInt('$'+slabel5.Caption);
Slabel10.Caption := LeerTextoXD(leerxd+$58);

////// dar informacion;
///
informacion := Pbyte(Memoria)^;
sedit1.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$1)^;
sedit2.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$2)^;
sedit3.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$3)^;
sedit4.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$4)^;
sedit5.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$5)^;
sedit6.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$6)^;
sedit7.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$7)^;
sedit8.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$8)^;
sedit9.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria+$9)^;
sedit10.Text := IntToHex(informacion,0);


//22
informacion := Pbyte(Memoria2)^;
sedit11.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$1)^;
sedit12.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$2)^;
sedit13.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$3)^;
sedit14.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$4)^;
sedit15.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$5)^;
sedit16.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$6)^;
sedit17.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$7)^;
sedit18.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$8)^;
sedit19.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria2+$9)^;
sedit20.Text := IntToHex(informacion,0);

//22
//33
informacion := Pbyte(Memoria3)^;
sedit21.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$1)^;
sedit22.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$2)^;
sedit23.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$3)^;
sedit24.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$4)^;
sedit25.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$5)^;
sedit26.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$6)^;
sedit27.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$7)^;
sedit28.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$8)^;
sedit29.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria3+$9)^;
sedit30.Text := IntToHex(informacion,0);

//33

//44
informacion := Pbyte(Memoria4)^;
sedit31.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$1)^;
sedit32.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$2)^;
sedit33.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$3)^;
sedit34.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$4)^;
sedit35.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$5)^;
sedit36.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$6)^;
sedit37.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$7)^;
sedit38.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$8)^;
sedit39.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria4+$9)^;
sedit40.Text := IntToHex(informacion,0);

//44

//55
informacion := Pbyte(Memoria5)^;
sedit41.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$1)^;
sedit42.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$2)^;
sedit43.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$3)^;
sedit44.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$4)^;
sedit45.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$5)^;
sedit46.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$6)^;
sedit47.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$7)^;
sedit48.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$8)^;
sedit49.Text := IntToHex(informacion,0);
informacion := Pbyte(Memoria5+$9)^;
sedit50.Text := IntToHex(informacion,0);


//55



EXCEPT

end;

end;

end.
