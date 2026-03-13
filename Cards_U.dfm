object Cards_F: TCards_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1082#1072#1088#1090' '#1089#1082#1080#1076#1086#1082
  ClientHeight = 548
  ClientWidth = 974
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
  object Grid_Main: TDBGridEh
    Left = 0
    Top = 89
    Width = 974
    Height = 459
    Align = alClient
    DataSource = DMod.Ds_Cards
    DynProps = <>
    Flat = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleParams.RowLines = 2
    OnDblClick = Grid_MainDblClick
    OnDrawColumnCell = Grid_MainDrawColumnCell
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NUMCARD'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1082#1072#1088#1090#1099
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DISCOUNT'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1080#1076#1082#1072' %'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'FIO'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1060#1048#1054
        Width = 253
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PHONE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TOTALSUM'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1091#1084#1084#1072' '#1087#1086#1082#1091#1087#1086#1082
        Width = 112
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 974
    Height = 26
    ButtonHeight = 25
    Caption = 'ToolBar1'
    Images = PagesDlg.IL_BtnsShip
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1088#1090#1091
      Caption = 'ToolButton1'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
    object ToolButton3: TToolButton
      Left = 23
      Top = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1091
      Caption = 'ToolButton3'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton3Click
    end
    object ToolButton4: TToolButton
      Left = 46
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object Btn_CardDisable: TToolButton
      Left = 54
      Top = 0
      Hint = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1091
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1091
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_CardDisableClick
    end
    object Btn_CardEnable: TToolButton
      Left = 77
      Top = 0
      Hint = #1047#1072#1076#1077#1081#1089#1090#1074#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1091
      Caption = #1047#1072#1076#1077#1081#1089#1090#1074#1086#1074#1072#1090#1100' '#1082#1072#1088#1090#1091
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_CardEnableClick
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 26
    Width = 974
    Height = 63
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 3
      Top = 9
      Width = 75
      Height = 13
      Caption = #1057#1090#1088#1086#1082#1072' '#1087#1086#1080#1089#1082#1072
    end
    object RGrp_Find: TRadioGroup
      Left = 281
      Top = 1
      Width = 212
      Height = 56
      Caption = #1050#1088#1080#1090#1077#1088#1080#1081'  '#1087#1086#1080#1089#1082#1072
      ItemIndex = 0
      Items.Strings = (
        #1055#1086' '#1092#1072#1084#1080#1083#1080#1080
        #1055#1086' '#1090#1077#1083#1077#1092#1086#1085#1091)
      TabOrder = 0
    end
    object E_FindBtn: TButtonedEdit
      Left = 95
      Top = 8
      Width = 175
      Height = 21
      RightButton.ImageIndex = 0
      RightButton.Visible = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 1040
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Button1'
      Enabled = False
      TabOrder = 2
      Visible = False
    end
  end
end
