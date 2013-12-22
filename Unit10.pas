unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, sBitBtn,
  sLabel, sCheckBox, sEdit, sRadioButton, sGroupBox,MMSystem;

type
  TAPIH = class(TForm)
    sBitBtn1: TsBitBtn;
    sLabel1: TsLabel;
    sCheckBox1: TsCheckBox;
    sCheckBox2: TsCheckBox;
    sCheckBox3: TsCheckBox;
    sCheckBox4: TsCheckBox;
    sCheckBox5: TsCheckBox;
    sCheckBox6: TsCheckBox;
    sCheckBox7: TsCheckBox;
    sCheckBox8: TsCheckBox;
    sCheckBox9: TsCheckBox;
    sGroupBox1: TsGroupBox;
    sRadioButton1: TsRadioButton;
    sEdit1: TsEdit;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sCheckBox1Click(Sender: TObject);
    procedure sCheckBox2Click(Sender: TObject);
    procedure sCheckBox3Click(Sender: TObject);
    procedure sCheckBox4Click(Sender: TObject);
    procedure sCheckBox5Click(Sender: TObject);
    procedure sCheckBox6Click(Sender: TObject);
    procedure sCheckBox7Click(Sender: TObject);
    procedure sCheckBox8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  APIH: TAPIH;


implementation




procedure hook(target, newfunc:pointer);
var
jmpto:dword;
OldProtect: Cardinal;
begin
jmpto:=dword(newfunc)-dword(target)-5;
VirtualProtect(target, 96, PAGE_EXECUTE_READWRITE,@OldProtect);
pbyte(target)^:=$e9;
pdword(dword(target)+$1)^:=jmpto;
end;

procedure DjcheatsHooked(Const hola: dword);
begin
try

BEGIN
MessageBox(0, PWideChar(apih.sEdit1.Text), 'ChesterAPIHook', MB_OK);
END;





Except
end;
end;





{$R *.dfm}

procedure TAPIH.sBitBtn1Click(Sender: TObject);
begin



//sleep(99999999);
end;

procedure TAPIH.sCheckBox1Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('kernel32.dll'), 'Sleep'), @DjcheatsHooked);
end;

procedure TAPIH.sCheckBox2Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('kernel32.dll'), 'ReadProcessMemory'), @DjcheatsHooked);
end;

procedure TAPIH.sCheckBox3Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('kernel32.dll'), 'WriteProcessMemory'), @DjcheatsHooked);
end;

procedure TAPIH.sCheckBox4Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('kernel32.dll'), 'OpenProcess'), @DjcheatsHooked);
end;

procedure TAPIH.sCheckBox5Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('shell32.dll'), 'ShellExecuteA'), @DjcheatsHooked);
end;

procedure TAPIH.sCheckBox6Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('kernel32.dll'), 'ExitProcess'), @DjcheatsHooked);
end;

procedure TAPIH.sCheckBox7Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('WINMM.dll'), 'timeGetTime'), @DjcheatsHooked);
end;

procedure TAPIH.sCheckBox8Click(Sender: TObject);
begin
hook(GetProcAddress(GetModuleHandle('entitiesmp.dll'), '??0EPlayerDeath@@QAE@XZ'), @DjcheatsHooked);
end;

end.
