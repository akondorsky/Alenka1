object MarkAuto_F: TMarkAuto_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1052#1072#1088#1082#1080' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1077#1081
  ClientHeight = 404
  ClientWidth = 217
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 25
    Width = 217
    Height = 379
    Align = alClient
    DataSource = DMod.Ds_MarkAuto
    DynProps = <>
    FooterParams.Color = clWindow
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        Alignment = taCenter
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 175
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 217
    Height = 25
    ButtonHeight = 24
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Images = PagesDlg.IL_BtnsShip
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = A_MarkAdd
    end
  end
  object ActionManager1: TActionManager
    Images = PagesDlg.IL_BtnsShip
    Left = 144
    Top = 64
    StyleName = 'Platform Default'
    object A_MarkAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1088#1082#1091
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1072#1088#1082#1091
      ImageIndex = 0
      OnExecute = A_MarkAddExecute
    end
    object A_MarkEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1084#1072#1088#1082#1091
      ImageIndex = 1
      OnExecute = A_MarkEditExecute
    end
  end
end
