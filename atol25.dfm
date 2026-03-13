object Formatol25f: TFormatol25f
  Left = 571
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1072#1089#1089#1099
  ClientHeight = 219
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object InfoLabel: TLabel
    Left = 0
    Top = 202
    Width = 393
    Height = 17
    Align = alBottom
    AutoSize = False
    ExplicitTop = 594
    ExplicitWidth = 458
  end
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 106
    Height = 16
    Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1050#1050#1052': '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 3
    Width = 5
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 62
    Top = 25
    Width = 45
    Height = 16
    Caption = #1057#1084#1077#1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 114
    Top = 25
    Width = 5
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 99
    Width = 353
    Height = 65
    Caption = #1054#1090#1095#1077#1090#1099' '
    TabOrder = 0
    object XReportButton: TButton
      Left = 184
      Top = 24
      Width = 113
      Height = 25
      Caption = 'X-'#1054#1090#1095#1077#1090
      TabOrder = 0
      OnClick = XReportButtonClick
    end
    object ZReportButton: TButton
      Left = 9
      Top = 24
      Width = 152
      Height = 25
      Caption = 'Z-'#1054#1090#1095#1077#1090'('#1079#1072#1082#1088#1099#1090#1080#1077' '#1089#1084#1077#1085#1099')'
      TabOrder = 1
      OnClick = ZReportButtonClick
    end
  end
  object ChTest: TCheckBox
    Left = 8
    Top = 56
    Width = 121
    Height = 17
    Caption = #1058#1077#1089#1090#1086#1074#1099#1081' '#1088#1077#1078#1080#1084
    Enabled = False
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 184
    Top = 10
    object N2: TMenuItem
      Caption = #1050#1072#1089#1089#1080#1088
      object PopMn_ConnectKKM: TMenuItem
        Action = A_KkmEnable
      end
      object PopMn_DisconnectKKM: TMenuItem
        Action = A_KKMDisabled
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object PopMn_OpenDay: TMenuItem
        Action = A_OpenSession
      end
      object It_KKMCondition: TMenuItem
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1050#1050#1052
        OnClick = It_KKMConditionClick
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object PopMn_ReturnSell: TMenuItem
        Caption = #1042#1086#1079#1074#1088#1072#1090' '#1087#1088#1086#1076#1072#1078#1080
        Enabled = False
        OnClick = PopMn_ReturnSellClick
      end
    end
    object N9: TMenuItem
      Caption = #1057#1080#1089'. '#1072#1076#1084#1080#1085
      object PopMn_TestMode: TMenuItem
        Caption = #1058#1077#1089#1090#1086#1074#1099#1081' '#1088#1077#1078#1080#1084
        OnClick = PopMn_TestModeClick
      end
      object PopMn_WorkMode: TMenuItem
        Caption = #1056#1072#1073#1086#1095#1080#1081' '#1088#1077#1078#1080#1084
        OnClick = PopMn_WorkModeClick
      end
    end
  end
  object ActionList1: TActionList
    Left = 228
    Top = 10
    object A_KkmEnable: TAction
      Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1050#1050#1052
      OnExecute = A_KkmEnableExecute
    end
    object A_KKMDisabled: TAction
      Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1077' '#1050#1050#1052
      OnExecute = A_KKMDisabledExecute
    end
    object A_OpenSession: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1089#1084#1077#1085#1091
      OnExecute = A_OpenSessionExecute
    end
    object A_DelItem: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
  end
end
