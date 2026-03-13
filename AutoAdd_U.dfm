object AutoAdd_F: TAutoAdd_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
  ClientHeight = 264
  ClientWidth = 319
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
    Left = 8
    Top = 8
    Width = 53
    Height = 16
    Caption = #1047#1072#1082#1072#1079#1095#1080#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l_Client: TLabel
    Left = 67
    Top = 8
    Width = 244
    Height = 18
    AutoSize = False
    Caption = 'l_Client'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 95
    Height = 13
    Caption = #1052#1072#1088#1082#1072' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103
  end
  object Label3: TLabel
    Left = 72
    Top = 75
    Width = 39
    Height = 13
    Caption = #1052#1086#1076#1077#1083#1100
  end
  object Label4: TLabel
    Left = 94
    Top = 103
    Width = 17
    Height = 13
    Caption = 'VIN'
  end
  object Label5: TLabel
    Left = 57
    Top = 130
    Width = 54
    Height = 13
    Caption = #1056#1077#1075'. '#1085#1086#1084#1077#1088
  end
  object Label6: TLabel
    Left = 46
    Top = 157
    Width = 65
    Height = 13
    Caption = #1043#1086#1076' '#1074#1099#1087#1091#1089#1082#1072
  end
  object Label7: TLabel
    Left = 36
    Top = 184
    Width = 75
    Height = 13
    Caption = #1058#1080#1087' '#1076#1074#1080#1075#1072#1090#1077#1083#1103
  end
  object E_Marka: TButtonedEdit
    Left = 117
    Top = 45
    Width = 172
    Height = 21
    Images = PagesDlg.IL_BtnsShip
    ReadOnly = True
    RightButton.ImageIndex = 3
    RightButton.Visible = True
    TabOrder = 0
    OnRightButtonClick = E_MarkaRightButtonClick
  end
  object E_Model: TEdit
    Left = 117
    Top = 72
    Width = 172
    Height = 21
    MaxLength = 25
    TabOrder = 1
  end
  object E_Vin: TEdit
    Left = 117
    Top = 100
    Width = 172
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 17
    TabOrder = 2
    OnKeyPress = E_VinKeyPress
  end
  object E_RegNum: TEdit
    Left = 117
    Top = 127
    Width = 172
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 15
    TabOrder = 3
    OnKeyPress = E_RegNumKeyPress
  end
  object E_Year: TEdit
    Left = 117
    Top = 154
    Width = 60
    Height = 21
    MaxLength = 4
    NumbersOnly = True
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 228
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
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 169
    Top = 228
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
    TabOrder = 7
  end
  object E_Engine: TComboBox
    Left = 117
    Top = 181
    Width = 172
    Height = 21
    TabOrder = 5
    Items.Strings = (
      #1041#1077#1085#1079#1080#1085#1086#1074#1099#1081
      #1044#1080#1079#1077#1083#1100#1085#1099#1081
      #1043#1080#1073#1088#1080#1076#1085#1099#1081
      #1043#1072#1079'-'#1041#1077#1085#1079#1080#1085
      #1069#1083#1077#1082#1090#1088#1080#1095#1077#1089#1082#1080#1081)
  end
end
