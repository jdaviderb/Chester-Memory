object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Agregar Direccion'
  ClientHeight = 156
  ClientWidth = 237
  Color = clBtnText
  TransparentColorValue = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 50
    Height = 13
    Caption = 'Nombre :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 58
    Height = 13
    Caption = 'Direccion :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 30
    Height = 13
    Caption = 'Tipo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 88
    Top = 21
    Width = 89
    Height = 21
    TabOrder = 0
    Text = 'sin nombre'
  end
  object Edit2: TEdit
    Left = 88
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 1
    Text = '00400000'
  end
  object Button1: TButton
    Left = 158
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 83
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'Byte'
    Items.Strings = (
      'Byte'
      '2 Bytes'
      '4 Bytes'
      '8 Bytes'
      'Texto'
      'Float')
  end
end
