object FormPrintNom: TFormPrintNom
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1092#1086#1088#1084#1091' '#1087#1077#1095#1072#1090#1080
  ClientHeight = 295
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Rg1: TRadioGroup
    Left = 3
    Top = 8
    Width = 274
    Height = 105
    Caption = #1059#1082#1072#1078#1080#1090#1077' '#1090#1080#1087' '#1086#1090#1095#1077#1090#1072
    ItemIndex = 0
    Items.Strings = (
      #1055#1077#1095#1072#1090#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1088#1086#1079#1085#1080#1095#1085#1099#1077' '#1094#1077#1085#1099
      #1055#1077#1095#1072#1090#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1086#1087#1090#1086#1074#1099#1077' '#1094#1077#1085#1099
      #1055#1077#1095#1072#1090#1072#1090#1100' '#1080' '#1088#1086#1079#1085#1080#1095#1085#1099#1077' '#1080' '#1086#1087#1090#1086#1074#1099#1077' '#1094#1077#1085#1099)
    TabOrder = 0
  end
  object Rg2: TRadioGroup
    Left = 3
    Top = 127
    Width = 274
    Height = 105
    Caption = #1059#1082#1072#1078#1080#1090#1077' '#1090#1080#1087' '#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
    ItemIndex = 0
    Items.Strings = (
      #1055#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
      #1055#1086' '#1082#1086#1076#1091)
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 90
    Top = 261
    Width = 91
    Height = 25
    Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100
    DoubleBuffered = True
    Kind = bkOK
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 187
    Top = 261
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
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object Ch1: TCheckBox
    Left = 3
    Top = 238
    Width = 274
    Height = 17
    Caption = #1055#1077#1095#1072#1090#1072#1090#1100' '#1090#1086#1083#1100#1082#1086' '#1087#1086#1079#1080#1094#1080#1080', '#1080#1084#1077#1102#1097#1080#1077#1089#1103' '#1085#1072' '#1089#1082#1083#1072#1076#1077
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
end
