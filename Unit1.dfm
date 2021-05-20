object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 80
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 248
    Width = 75
    Height = 25
    Caption = 'Button2'
    Enabled = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 64
    Top = 160
    Width = 457
    Height = 82
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 16
    Width = 320
    Height = 120
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Left = 568
    Top = 16
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 568
    Top = 72
  end
end
