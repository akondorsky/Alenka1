object PartZakEdit_F: TPartZakEdit_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087'.'#1095#1072#1089#1090#1080
  ClientHeight = 273
  ClientWidth = 306
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
    Left = 9
    Top = 168
    Width = 26
    Height = 13
    Caption = #1062#1077#1085#1072
  end
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 60
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object E_Name: TLabeledEdit
    Left = 8
    Top = 21
    Width = 289
    Height = 21
    EditLabel.Width = 122
    EditLabel.Height = 13
    EditLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1095#1072#1089#1090#1080
    MaxLength = 255
    TabOrder = 0
  end
  object E_Edizm: TLabeledEdit
    Left = 8
    Top = 103
    Width = 89
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
    MaxLength = 10
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 238
    Width = 91
    Height = 25
    Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Default = True
    DoubleBuffered = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 164
    Top = 238
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
  object E_Price: TDBNumberEditEh
    Left = 8
    Top = 184
    Width = 89
    Height = 21
    DynProps = <>
    EditButtons = <>
    TabOrder = 4
    Visible = True
  end
  object E_Code: TLabeledEdit
    Left = 8
    Top = 62
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = #1050#1086#1076' '#1079'/'#1095#1072#1089#1090#1080
    MaxLength = 15
    TabOrder = 1
    OnKeyPress = E_CodeKeyPress
  end
  object E_Kol: TDBNumberEditEh
    Left = 7
    Top = 144
    Width = 89
    Height = 21
    DynProps = <>
    EditButtons = <>
    TabOrder = 3
    Visible = True
    OnKeyPress = E_KolKeyPress
  end
end
