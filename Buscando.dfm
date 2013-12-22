object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Buscando en la memoria.....'
  ClientHeight = 128
  ClientWidth = 562
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 96
    Top = 50
    Width = 396
    Height = 23
    Caption = 'Buscando en la memoria por favor espere'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LinkLabel1: TLinkLabel
    Left = 360
    Top = 16
    Width = 53
    Height = 17
    Caption = 'LinkLabel1'
    TabOrder = 0
  end
  object ProgressBar1: TProgressBar
    Left = 216
    Top = 27
    Width = 150
    Height = 17
    Min = 1
    Position = 50
    TabOrder = 1
  end
end
