unit Vprotect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, sLabel, sEdit,
  sRadioButton;

type
  Tprx = class(TForm)
    sRadioButton1: TsRadioButton;
    sRadioButton2: TsRadioButton;
    sRadioButton3: TsRadioButton;
    sEdit1: TsEdit;
    sLabel1: TsLabel;
    sButton1: TsButton;
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  prx: Tprx;

implementation

{$R *.dfm}

procedure Tprx.sButton1Click(Sender: TObject);
var
OldProtect: cardinal;
Direccion: dword;

begin
Direccion := strToInt('$'+sedit1.Text);
if sRadioButton1.Checked = True then
VirtualProtect(PTR(Direccion), 96, PAGE_EXECUTE_READWRITE,@OldProtect);
if sRadioButton2.Checked = True then
VirtualProtect(PTR(Direccion), 96, PAGE_NOACCESS,@OldProtect);
if sRadioButton3.Checked = True then
VirtualProtect(PTR(Direccion), 96, PAGE_READONLY,@OldProtect);
end;

end.
