unit ADD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  TIPO: String;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
TIPO := 'Byte';

if ComboBox1.ItemIndex = 1 then
TIPO := '2 Bytes';

if ComboBox1.ItemIndex = 2 then
TIPO := '4 Bytes';

if ComboBox1.ItemIndex = 3 then
TIPO := '8 Bytes';

if ComboBox1.ItemIndex = 4 then
TIPO := 'Texto';
if ComboBox1.ItemIndex = 5 then
TIPO := 'Float';

form2.Close;


end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if tipo = '' then
BEGIN
  Tipo := 'Byte';
END;
end;

end.
