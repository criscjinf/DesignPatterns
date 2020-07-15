object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblConteudo: TLabel
    Left = 224
    Top = 160
    Width = 80
    Height = 23
    Caption = 'Conteudo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtTeste: TEdit
    Left = 120
    Top = 96
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 224
    Top = 208
    Width = 75
    Height = 25
    Caption = 'aplicar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 472
    Top = 136
  end
end
