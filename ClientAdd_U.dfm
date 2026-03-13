object ClientAdd_F: TClientAdd_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1079#1072#1082#1072#1079#1095#1080#1082#1072'.'
  ClientHeight = 457
  ClientWidth = 457
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
  object Label12: TLabel
    Left = 12
    Top = 352
    Width = 61
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
  end
  object Rg1: TRadioGroup
    Left = 12
    Top = 8
    Width = 433
    Height = 49
    Caption = #1047#1072#1082#1072#1079#1095#1080#1082
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1060#1080#1079#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086
      #1070#1088#1080#1076#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086)
    TabOrder = 0
    OnClick = Rg1Click
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 79
    Width = 433
    Height = 82
    Caption = #1060#1080#1079#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      Left = 233
      Top = 24
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label3: TLabel
      Left = 6
      Top = 51
      Width = 49
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object E_LastName: TEdit
      Left = 58
      Top = 21
      Width = 160
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 0
    end
    object E_FirstName: TEdit
      Left = 258
      Top = 21
      Width = 160
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      TabOrder = 1
    end
    object E_MiddleName: TEdit
      Left = 58
      Top = 48
      Width = 160
      Height = 21
      MaxLength = 25
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 12
    Top = 167
    Width = 433
    Height = 82
    Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086
    Enabled = False
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 24
      Width = 48
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
    end
    object Label5: TLabel
      Left = 231
      Top = 51
      Width = 21
      Height = 13
      Caption = #1050#1055#1055
    end
    object Label6: TLabel
      Left = 8
      Top = 51
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object E_OrgName: TEdit
      Left = 60
      Top = 21
      Width = 358
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 80
      ParentFont = False
      TabOrder = 0
    end
    object E_INN: TEdit
      Left = 60
      Top = 48
      Width = 101
      Height = 21
      MaxLength = 12
      TabOrder = 1
    end
    object E_KPP: TEdit
      Left = 258
      Top = 48
      Width = 101
      Height = 21
      MaxLength = 10
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 12
    Top = 255
    Width = 433
    Height = 90
    Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103#1101
    TabOrder = 3
    object Label9: TLabel
      Left = 17
      Top = 35
      Width = 31
      Height = 13
      Caption = #1040#1076#1088#1077#1089
    end
    object Label11: TLabel
      Left = 17
      Top = 62
      Width = 110
      Height = 13
      Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
    end
    object E_Street: TEdit
      Left = 58
      Top = 32
      Width = 360
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 255
      ParentFont = False
      TabOrder = 0
    end
    object E_Phone: TEdit
      Left = 141
      Top = 59
      Width = 160
      Height = 21
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 11
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 127
    Top = 421
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
    Left = 224
    Top = 421
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
  object E_Note: TEdit
    Left = 12
    Top = 371
    Width = 433
    Height = 21
    MaxLength = 255
    TabOrder = 4
  end
end
