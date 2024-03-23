object frmSelEmp: TfrmSelEmp
  Left = 84
  Top = 385
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'frmSelEmp'
  ClientHeight = 281
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 283
    Height = 25
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 363
    object Panel2: TPanel
      Left = 255
      Top = 2
      Width = 21
      Height = 21
      Caption = 'X'
      Color = clBtnText
      ParentBackground = False
      TabOrder = 0
      OnClick = Panel2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 283
    Height = 256
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
