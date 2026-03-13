object SetUsdPrice_F: TSetUsdPrice_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1086#1087#1090#1086#1074#1099#1093' '#1094#1077#1085' '#1074' USD'
  ClientHeight = 109
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 80
    Height = 13
    Caption = #1050#1091#1088#1089' '#1087#1077#1088#1077#1089#1095#1077#1090#1072
  end
  object E_Kurs: TDBNumberEditEh
    Left = 126
    Top = 13
    Width = 67
    Height = 21
    Alignment = taCenter
    DynProps = <>
    EditButtons = <>
    TabOrder = 0
    Visible = True
  end
  object BitBtn1: TBitBtn
    Left = 69
    Top = 56
    Width = 97
    Height = 25
    Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
