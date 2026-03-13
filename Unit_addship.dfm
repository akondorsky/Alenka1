object Form_AddShip: TForm_AddShip
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
  ClientHeight = 173
  ClientWidth = 352
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
    Left = 72
    Top = 8
    Width = 32
    Height = 13
    Caption = #1060#1080#1088#1084#1072
  end
  object Label2: TLabel
    Left = 9
    Top = 35
    Width = 95
    Height = 13
    Caption = #1053#1072#1079#1074'. '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object Label3: TLabel
    Left = 71
    Top = 62
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label4: TLabel
    Left = 58
    Top = 89
    Width = 52
    Height = 13
    Caption = #1058#1077#1083#1077#1092#1086#1085#1099
  end
  object E_Firm: TEdit
    Left = 119
    Top = 8
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object E_LawName: TEdit
    Left = 119
    Top = 35
    Width = 226
    Height = 21
    TabOrder = 1
  end
  object E_Adr: TEdit
    Left = 119
    Top = 62
    Width = 226
    Height = 21
    TabOrder = 2
  end
  object E_Phone: TEdit
    Left = 119
    Top = 89
    Width = 225
    Height = 21
    TabOrder = 3
    OnChange = E_PhoneChange
  end
  object BitBtn1: TBitBtn
    Left = 79
    Top = 135
    Width = 91
    Height = 25
    Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 135
    Width = 89
    Height = 25
    Hint = #1054#1090#1084#1077#1085#1080#1090#1100
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    DoubleBuffered = True
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
end
