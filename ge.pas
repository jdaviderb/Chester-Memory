unit ge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, sEdit, sLabel;

type
  Tgex = class(TForm)
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sButton1: TsButton;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  gex: Tgex;

implementation

{$R *.dfm}

procedure Tgex.sButton1Click(Sender: TObject);
var
Direccion: Dword;
begin
Direccion:= Dword(GetProcAddress(GetModuleHandle(PWideChar(sedit1.Text)), PWideChar(sedit2.Text)));
sedit3.Text := InttoHex(Direccion,0);
if sedit3.Text = '0' then
sedit3.Text := 'no encontre nada';
end;

end.
