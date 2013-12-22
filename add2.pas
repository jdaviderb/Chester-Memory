unit add2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  ADDNombre: String;
  ADDDireccion: String;
  ADDTipo: String;


implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
 ADDNombre := edit1.Text;
 ADDDireccion := edit2.Text;
 ADDTipo :=  ComboBox1.Items[ComboBox1.ItemIndex];
 if ADDTipo = '' then
 ADdTipo := 'Byte';
 form3.Close;

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
 ADDNombre := '';
 ADDDireccion := '';
end;

end.
