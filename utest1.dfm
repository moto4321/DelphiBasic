object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 524
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MyButton: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'close'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = MyButtonClick
  end
  object Button1: TButton
    Left = 136
    Top = 34
    Width = 75
    Height = 25
    Caption = #49549#49457#48320#44221
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 34
    Width = 75
    Height = 25
    Caption = #54648#46308#47084#44277#50976
    TabOrder = 2
  end
  object Button3: TButton
    Left = 344
    Top = 34
    Width = 75
    Height = 25
    Caption = #54648#46308#47084' '#54840#52636
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = #48320#49688
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 136
    Top = 96
    Width = 75
    Height = 25
    Caption = #54532#47196#49884#51256
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 240
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 344
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Divide'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 32
    Top = 160
    Width = 75
    Height = 25
    Caption = 'th '#49373#49457
    TabOrder = 8
    OnClick = Button8Click
  end
  object GroupBox1: TGroupBox
    Left = 136
    Top = 160
    Width = 283
    Height = 241
    Caption = 'th '#51221#48372
    TabOrder = 9
    object Edit1: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 32
      Top = 67
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 32
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 32
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 32
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 32
      Top = 201
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object Button9: TButton
    Left = 32
    Top = 217
    Width = 75
    Height = 25
    Caption = #48260#53948' '#49373#49457
    TabOrder = 10
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 32
    Top = 316
    Width = 75
    Height = 25
    Caption = 'Font'
    TabOrder = 11
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 32
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Color'
    TabOrder = 12
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 32
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Show'
    TabOrder = 13
    OnClick = Button12Click
  end
  object Button13: TButton
    Left = 32
    Top = 456
    Width = 75
    Height = 25
    Caption = 'ShowModal'
    TabOrder = 14
    OnClick = Button13Click
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 368
    Top = 176
  end
end
