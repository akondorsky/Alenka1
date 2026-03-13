object CardsAdd_F: TCardsAdd_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1082#1072#1088#1090#1099
  ClientHeight = 244
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 26
    Top = 11
    Width = 51
    Height = 14
    Caption = #8470' '#1082#1072#1088#1090#1099
  end
  object Label2: TLabel
    Left = 25
    Top = 38
    Width = 52
    Height = 14
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label3: TLabel
    Left = 54
    Top = 65
    Width = 23
    Height = 14
    Caption = #1048#1084#1103
  end
  object Label4: TLabel
    Left = 23
    Top = 92
    Width = 54
    Height = 14
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label5: TLabel
    Left = 21
    Top = 119
    Width = 55
    Height = 14
    Caption = #1057#1082#1080#1076#1082#1072' %'
  end
  object Label6: TLabel
    Left = 24
    Top = 147
    Width = 53
    Height = 14
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object E_Ncard: TEdit
    Left = 87
    Top = 8
    Width = 51
    Height = 22
    MaxLength = 4
    TabOrder = 0
    Text = '0001'
  end
  object E_LastName: TEdit
    Left = 87
    Top = 35
    Width = 226
    Height = 22
    MaxLength = 20
    TabOrder = 1
  end
  object E_Fname: TEdit
    Left = 87
    Top = 62
    Width = 226
    Height = 22
    MaxLength = 20
    TabOrder = 2
  end
  object E_Sname: TEdit
    Left = 87
    Top = 89
    Width = 225
    Height = 22
    MaxLength = 20
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 73
    Top = 192
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
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 170
    Top = 192
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
    TabOrder = 6
  end
  object E_Discount: TEdit
    Left = 88
    Top = 116
    Width = 50
    Height = 22
    MaxLength = 2
    NumbersOnly = True
    TabOrder = 4
  end
end
