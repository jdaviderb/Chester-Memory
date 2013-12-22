object APIH: TAPIH
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Chester API Hooking'
  ClientHeight = 181
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 196
    Top = 273
    Width = 36
    Height = 13
    Caption = 'sLabel1'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sBitBtn1: TsBitBtn
    Left = 115
    Top = 259
    Width = 75
    Height = 25
    Caption = 'sBitBtn1'
    TabOrder = 0
    OnClick = sBitBtn1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sCheckBox1: TsCheckBox
    Left = 8
    Top = 8
    Width = 46
    Height = 20
    Caption = 'Sleep'
    TabOrder = 1
    OnClick = sCheckBox1Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox2: TsCheckBox
    Left = 8
    Top = 34
    Width = 120
    Height = 20
    Caption = 'ReadProcessMemory'
    TabOrder = 2
    OnClick = sCheckBox2Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox3: TsCheckBox
    Left = 8
    Top = 60
    Width = 121
    Height = 20
    Caption = 'WriteProcessMemory'
    TabOrder = 3
    OnClick = sCheckBox3Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox4: TsCheckBox
    Left = 8
    Top = 86
    Width = 78
    Height = 20
    Caption = 'OpenProces'
    TabOrder = 4
    OnClick = sCheckBox4Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox5: TsCheckBox
    Left = 8
    Top = 112
    Width = 81
    Height = 20
    Caption = 'ShellExecute'
    TabOrder = 5
    OnClick = sCheckBox5Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox6: TsCheckBox
    Left = 8
    Top = 137
    Width = 75
    Height = 20
    Caption = 'ExitProcess'
    TabOrder = 6
    OnClick = sCheckBox6Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox7: TsCheckBox
    Left = 8
    Top = 162
    Width = 79
    Height = 20
    Caption = 'timeGetTime'
    TabOrder = 7
    OnClick = sCheckBox7Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox8: TsCheckBox
    Left = 8
    Top = 187
    Width = 78
    Height = 20
    Caption = 'sCheckBox8'
    TabOrder = 8
    OnClick = sCheckBox8Click
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sCheckBox9: TsCheckBox
    Left = 8
    Top = 264
    Width = 78
    Height = 20
    Caption = 'sCheckBox9'
    TabOrder = 9
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object sGroupBox1: TsGroupBox
    Left = 115
    Top = 118
    Width = 217
    Height = 63
    Caption = 'Opciones del hook'
    TabOrder = 10
    SkinData.SkinSection = 'GROUPBOX'
    object sRadioButton1: TsRadioButton
      Left = 3
      Top = 24
      Width = 106
      Height = 20
      Caption = 'Hook por Mensaje'
      Checked = True
      TabOrder = 0
      TabStop = True
      SkinData.SkinSection = 'RADIOBUTTON'
    end
    object sEdit1: TsEdit
      Left = 115
      Top = 22
      Width = 78
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Djcheats API Hook'
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
  end
end
