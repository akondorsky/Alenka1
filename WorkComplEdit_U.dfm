object WorkComplEdit_F: TWorkComplEdit_F
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
  ClientHeight = 149
  ClientWidth = 539
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
    Top = 16
    Width = 114
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
  end
  object Label2: TLabel
    Left = 27
    Top = 41
    Width = 95
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1088#1072#1073#1086#1090#1099
  end
  object Label3: TLabel
    Left = 33
    Top = 68
    Width = 89
    Height = 13
    Caption = #1056#1072#1073#1086#1090#1091' '#1074#1099#1087#1086#1083#1085#1080#1083
  end
  object E_Name: TButtonedEdit
    Left = 128
    Top = 13
    Width = 393
    Height = 21
    Images = PagesDlg.IL_BtnsShip
    MaxLength = 175
    RightButton.ImageIndex = 3
    RightButton.Visible = True
    TabOrder = 0
    OnRightButtonClick = E_NameRightButtonClick
  end
  object E_Cost: TEdit
    Left = 128
    Top = 38
    Width = 121
    Height = 21
    MaxLength = 10
    NumbersOnly = True
    TabOrder = 1
    Text = 'E_Cost'
    OnKeyPress = E_CostKeyPress
  end
  object E_Empl: TButtonedEdit
    Left = 128
    Top = 65
    Width = 193
    Height = 21
    Images = PagesDlg.IL_BtnsShip
    MaxLength = 100
    ReadOnly = True
    RightButton.ImageIndex = 3
    RightButton.Visible = True
    TabOrder = 2
    OnRightButtonClick = E_EmplRightButtonClick
  end
  object BitBtn1: TBitBtn
    Left = 167
    Top = 116
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
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 275
    Top = 116
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
    TabOrder = 4
  end
end
