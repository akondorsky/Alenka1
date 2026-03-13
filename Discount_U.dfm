object Discount_F: TDiscount_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1082#1080#1076#1082#1080
  ClientHeight = 411
  ClientWidth = 687
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
  object Panel_Bottom: TPanel
    Left = 0
    Top = 41
    Width = 687
    Height = 370
    Align = alClient
    TabOrder = 0
    object Panel_Handy: TPanel
      Left = 1
      Top = 324
      Width = 685
      Height = 45
      Align = alBottom
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 11
        Top = 17
        Width = 105
        Height = 14
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1082#1080#1076#1082#1091' %'
      end
      object E_Discount: TEdit
        Left = 127
        Top = 14
        Width = 58
        Height = 24
        Alignment = taCenter
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 2
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '0'
      end
    end
    object Panel_card: TPanel
      Left = -5
      Top = 101
      Width = 691
      Height = 220
      Enabled = False
      TabOrder = 1
      object Label2: TLabel
        Left = 16
        Top = 92
        Width = 132
        Height = 14
        Caption = #8470' '#1082#1072#1088#1090#1099' '#1080#1083#1080' '#1092#1072#1084#1080#1083#1080#1103
      end
      object Label3: TLabel
        Left = 16
        Top = 132
        Width = 53
        Height = 14
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object SpeedButton1: TSpeedButton
        Left = 54
        Top = 175
        Width = 94
        Height = 33
        Caption = #1048#1089#1082#1072#1090#1100
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3934
          393430332F2B2C2925272421201D1BE7E7E73331300B0A090707060404030000
          00000000FFFFFFFFFFFFFFFFFF46413B857A70C3B8AE7C72687F756B36322DF2
          F2F14C4A4795897DBAAEA27C72687F756B010101FFFFFFFFFFFFFFFFFF4D4741
          83786FCCC3BA786F657B716734302DFEFEFE2C2A2795897DC2B8AD786F657C72
          68060505FFFFFFFFFFFFFFFFFF554E4883786FCCC3BA79706671685F585550FF
          FFFF494645857A70C2B8AD786F657B71670D0C0BFFFFFFFFFFFFFFFFFF817B76
          9F9286CCC3BAC0B4AAA6988B807D79FFFFFF74726F908479C2B8ADC0B4AAA89B
          8E494747FFFFFFFFFFFFFCFCFC605952423D3858514A3D3833332F2B393734D3
          D3D35F5E5C1A18162522201917150F0E0D121212FDFDFDFFFFFFFDFDFD9D9185
          B1A3967F756B7C7268776D646C635B2E2A26564F4880766C7C7268776D647067
          5E010101FAFAFAFFFFFFFEFDFDB8ACA1BAAEA282776D82776DAA917BBAA794B8
          A690B097819F8D7D836D5B71635795897D232322FCFCFCFFFFFFFDFCFCDDDAD7
          9B8E829D9185867B71564F48504A4480766C6E665D826C58A6917D948474564F
          488B8A8AFEFEFEFFFFFFFFFFFFFFFFFF746B62A4978A95897D9F92863E3934FF
          FFFF4C46407E746A857A703E393485817EF5F5F5FDFDFDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF9B9187C3B8AE655D55FFFFFF7C7268A89B8EA69B90FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA79C91BCB0A49D9185FF
          FFFFAEA0939D91857B756EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = SpeedButton1Click
      end
      object RGrp_Find: TRadioGroup
        Left = 16
        Top = 5
        Width = 175
        Height = 80
        Caption = #1050#1088#1080#1090#1077#1088#1080#1081'  '#1087#1086#1080#1089#1082#1072
        ItemIndex = 0
        Items.Strings = (
          #1055#1086' '#8470' '#1082#1072#1088#1090#1099
          #1055#1086' '#1092#1072#1084#1080#1083#1080#1080
          #1055#1086' '#1090#1077#1083#1077#1092#1086#1085#1091)
        TabOrder = 0
        OnClick = RGrp_FindClick
      end
      object E_Find: TButtonedEdit
        Left = 16
        Top = 108
        Width = 175
        Height = 22
        MaxLength = 4
        NumbersOnly = True
        RightButton.ImageIndex = 0
        RightButton.Visible = True
        TabOrder = 1
      end
      object Gb1: TGroupBox
        Left = 197
        Top = 5
        Width = 484
        Height = 172
        Caption = #1044#1072#1085#1085#1099#1077' '#1082#1072#1088#1090#1099
        Color = clBtnFace
        ParentColor = False
        TabOrder = 2
        object Label4: TLabel
          Left = 33
          Top = 35
          Width = 37
          Height = 14
          Caption = #1053#1086#1084#1077#1088
        end
        object Label5: TLabel
          Left = 43
          Top = 96
          Width = 27
          Height = 14
          Caption = #1060#1048#1054
        end
        object Label6: TLabel
          Left = 15
          Top = 63
          Width = 55
          Height = 14
          Caption = #1057#1082#1080#1076#1082#1072' %'
        end
        object Label7: TLabel
          Left = 17
          Top = 128
          Width = 53
          Height = 14
          Caption = #1058#1077#1083#1077#1092#1086#1085
        end
        object Lb_NumCard: TLabel
          Left = 76
          Top = 35
          Width = 43
          Height = 16
          Caption = #1053#1086#1084#1077#1088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Lb_Fio: TLabel
          Left = 76
          Top = 95
          Width = 28
          Height = 16
          Caption = #1060#1048#1054
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Lb_Phone: TLabel
          Left = 76
          Top = 127
          Width = 59
          Height = 16
          Caption = #1058#1077#1083#1077#1092#1086#1085
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object E_DiscountCard: TEdit
          Left = 76
          Top = 57
          Width = 58
          Height = 24
          Alignment = taCenter
          Color = clYellow
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 2
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          Text = '0'
        end
      end
    end
    object RG1: TRadioGroup
      Left = 12
      Top = 6
      Width = 175
      Height = 89
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1090#1080#1087' '#1089#1082#1080#1076#1082#1080
      Enabled = False
      Items.Strings = (
        #1055#1086' '#1082#1072#1088#1090#1077' '#1082#1083#1080#1077#1085#1090#1072
        #1042#1088#1091#1095#1085#1091#1102)
      TabOrder = 2
      OnClick = RG1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 687
    Height = 41
    Align = alTop
    TabOrder = 1
    object Ch1: TCheckBox
      Left = 16
      Top = 13
      Width = 145
      Height = 17
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1089#1082#1080#1076#1082#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Ch1Click
    end
  end
end
