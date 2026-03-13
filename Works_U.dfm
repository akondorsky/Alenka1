object Works_F: TWorks_F
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1072#1073#1086#1090
  ClientHeight = 522
  ClientWidth = 625
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
  object Splitter1: TSplitter
    Left = 200
    Top = 25
    Height = 497
    ExplicitLeft = 352
    ExplicitTop = 248
    ExplicitHeight = 100
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 625
    Height = 25
    ButtonHeight = 24
    ButtonWidth = 24
    Caption = 'ToolBar1'
    Images = PagesDlg.IL_BtnsShip
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = A_WorkAdd
    end
    object ToolButton2: TToolButton
      Left = 24
      Top = 0
      Action = A_WorkEdit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 200
    Height = 497
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 1
    object Grid_Group: TDBGridEh
      Left = 1
      Top = 1
      Width = 198
      Height = 495
      Align = alClient
      DataGrouping.GroupLevels = <>
      DataSource = DMod.DS_GroupWorks
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      IndicatorOptions = [gioShowRowIndicatorEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghData3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ReadOnly = True
      RowLines = 2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 2
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NAME'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1043#1088#1091#1087#1087#1072' '#1088#1072#1073#1086#1090
          Width = 170
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Grid_Works: TDBGridEh
    Left = 203
    Top = 25
    Width = 422
    Height = 497
    Align = alClient
    DataGrouping.GroupLevels = <>
    DataSource = DMod.DS_Works
    Flat = True
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'Tahoma'
    FooterFont.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    OnDblClick = Grid_WorksDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'WORKNAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
        Width = 296
      end
      item
        EditButtons = <>
        FieldName = 'FINALPRICE'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 84
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object PropStorageEh1: TPropStorageEh
    StorageManager = RegPropStorageManEh1
    StoredProps.Strings = (
      '<P>.Height'
      '<P>.Left'
      '<P>.PixelsPerInch'
      '<P>.Top'
      '<P>.Width'
      'Grid_Works.<P>.Columns.<ForAllItems>.Width'
      'Panel1.Grid_Group.<P>.Columns.<ForAllItems>.Width')
    Left = 336
    Top = 88
  end
  object RegPropStorageManEh1: TRegPropStorageManEh
    Left = 336
    Top = 152
  end
  object ActionManager1: TActionManager
    Images = PagesDlg.IL_BtnsShip
    Left = 432
    Top = 88
    StyleName = 'Platform Default'
    object A_WorkAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091
      ImageIndex = 0
      OnExecute = A_WorkAddExecute
    end
    object A_WorkEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1073#1086#1090#1091
      ImageIndex = 1
      OnExecute = A_WorkEditExecute
    end
  end
end
