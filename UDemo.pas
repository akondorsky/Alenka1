unit UDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComPort, StdCtrls, Buttons, ComCtrls, ComSignal, ExtCtrls;

type
  TFormComPort = class(TForm)
    ComPort: TComPort;
    Memo: TMemo;
    SpeedButtonOpenClose: TSpeedButton;
    ComboBoxDeviceName: TComboBox;
    StatusBar: TStatusBar;
    SpeedButtonSetRTS: TSpeedButton;
    SpeedButtonClearRTS: TSpeedButton;
    SpeedButtonSetDTR: TSpeedButton;
    SpeedButtonClearDTR: TSpeedButton;
    ComSignalRX: TComSignal;
    PanelTXLed: TPanel;
    ComSignalTX: TComSignal;
    PanelCTSLed: TPanel;
    ComSignalCTS: TComSignal;
    PanelDSRLed: TPanel;
    ComSignalDSR: TComSignal;
    PanelRXLed: TPanel;
    PanelRingLed: TPanel;
    ComSignalRing: TComSignal;
    PanelRLSDLed: TPanel;
    ComSignalRLSD: TComSignal;
    PanelBreakLed: TPanel;
    ComSignal1: TComSignal;
    SpeedButtonConfig: TSpeedButton;
    procedure ComPortRxChar(Sender: TObject);
    procedure SpeedButtonOpenCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxDeviceNameChange(Sender: TObject);
    procedure ComPortError(ComPort: TCustomComPort; E: EComError;
      var Action: TComAction);
    procedure ComPortLineError(Sender: TObject; LineErrors: TLineErrors);
    procedure ComPortAfterWrite(Sender: TObject; Buffer: Pointer;
      Length: Integer; WaitOnCompletion: Boolean);
    procedure SpeedButtonSetRTSClick(Sender: TObject);
    procedure SpeedButtonClearRTSClick(Sender: TObject);
    procedure SpeedButtonClearDTRClick(Sender: TObject);
    procedure SpeedButtonSetDTRClick(Sender: TObject);
    procedure ComSignalCTSSignal(Sender: TObject);
    procedure ComSignalDSRSignal(Sender: TObject);
    procedure ComPortAfterClose(ComPort: TCustomComPort);
    procedure ComPortAfterOpen(ComPort: TCustomComPort);
    procedure SpeedButtonConfigClick(Sender: TObject);
    procedure MemoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FReadCount: Integer;
    FWriteCount: Integer;
    procedure AddReadBytes(ReadCount: Integer);
    procedure AddWriteBytes(WriteCount: Integer);
    procedure UpdateComInfo;
  public
    { Public declarations }
  end;

var
  FormComPort: TFormComPort;

implementation

{$R *.DFM}

procedure TFormComPort.ComPortRxChar(Sender: TObject);
var Text: AnsiString;
begin
  Text := ComPort.ReadAnsiString;
  Memo.SelText := Text;
  AddReadBytes(SizeOf(AnsiChar) * Length(Text));
end;

procedure TFormComPort.SpeedButtonOpenCloseClick(Sender: TObject);
begin
  ComPort.Active := not ComPort.Active;
end;

procedure TFormComPort.ComboBoxDeviceNameChange(Sender: TObject);
begin
  ComPort.DeviceName := '\\.\' + ComboBoxDeviceName.Text;
end;

procedure TFormComPort.FormCreate(Sender: TObject);
begin

  with ComboBoxDeviceName do
  begin
    ComPort.EnumComDevicesFromRegistry(Items);
    ItemIndex := 0;
    ComPort.DeviceName := '\\.\' + Text;
  end;

  AddReadBytes(0);
  AddWriteBytes(0);
end;

procedure TFormComPort.ComPortError(ComPort: TCustomComPort; E: EComError;
  var Action: TComAction);
begin
  MessageDlg('Error ' + IntToStr(E.ErrorCode) + ': ' + E.Message, mtError, [mbOK], 0);
  Action := caAbort;
end;

procedure TFormComPort.ComPortLineError(Sender: TObject; LineErrors: TLineErrors);
begin
  if leBreak in LineErrors then MessageDlg('Break detected', mtError, [mbOK], 0);
  if leDeviceNotSelected in LineErrors then MessageDlg('Device not selected', mtError, [mbOK], 0);
  if leFrame in LineErrors then MessageDlg('Frame error', mtError, [mbOK], 0);
  if leIO in LineErrors then MessageDlg('IO error', mtError, [mbOK], 0);
  if leMode in LineErrors then MessageDlg('Mode error', mtError, [mbOK], 0);
  if leOutOfPaper in LineErrors then MessageDlg('Out of paper', mtError, [mbOK], 0);
  if leOverrun in LineErrors then MessageDlg('Overrun error', mtError, [mbOK], 0);
  if leDeviceTimeOut in LineErrors then MessageDlg('Device timeout', mtError, [mbOK], 0);
  if leRxOverflow in LineErrors then MessageDlg('Receiver overflow', mtError, [mbOK], 0);
  if leParity in LineErrors then MessageDlg('Parity error', mtError, [mbOK], 0);
  if leTxFull in LineErrors then MessageDlg('Transmitter full', mtError, [mbOK], 0);
end;

procedure TFormComPort.AddReadBytes(ReadCount: Integer);
begin
  FReadCount := FReadCount + ReadCount;
  StatusBar.Panels[0].Text := 'Read bytes: ' + IntToStr(FReadCount);
end;

procedure TFormComPort.AddWriteBytes(WriteCount: Integer);
begin
  FWriteCount := FWriteCount + WriteCount;
  StatusBar.Panels[1].Text := 'Write bytes: ' + IntToStr(FWriteCount);
end;

procedure TFormComPort.ComPortAfterWrite(Sender: TObject; Buffer: Pointer;
  Length: Integer; WaitOnCompletion: Boolean);
begin
  AddWriteBytes(Length);
end;

procedure TFormComPort.SpeedButtonSetRTSClick(Sender: TObject);
begin
  ComPort.SetRTS;
end;

procedure TFormComPort.SpeedButtonClearRTSClick(Sender: TObject);
begin
  ComPort.ClearRTS;
end;

procedure TFormComPort.SpeedButtonSetDTRClick(Sender: TObject);
begin
  ComPort.SetDTR;
end;

procedure TFormComPort.SpeedButtonClearDTRClick(Sender: TObject);
begin
  ComPort.ClearDTR;
end;

procedure TFormComPort.ComSignalCTSSignal(Sender: TObject);
begin
  if ComSignalCTS.SignalValue then
  begin
    PanelCTSLed.Color := ComSignalCTS.ColorOn;
    PanelCTSLed.Font.Color := clBlack;
  end
  else
  begin
    PanelCTSLed.Color := ComSignalCTS.ColorOff;
    PanelCTSLed.Font.Color := clWhite;
  end
end;

procedure TFormComPort.ComSignalDSRSignal(Sender: TObject);
begin
  if ComSignalDSR.SignalValue then
  begin
    PanelDSRLed.Color := ComSignalDSR.ColorOn;
    PanelDSRLed.Font.Color := clBlack;
  end
  else
  begin
    PanelDSRLed.Color := ComSignalDSR.ColorOff;
    PanelDSRLed.Font.Color := clWhite;
  end
end;

procedure TFormComPort.UpdateComInfo;
begin
  if Visible then
    with ComPort do
    begin
      if Active then
        SpeedButtonOpenClose.Caption := 'Close'
      else
        SpeedButtonOpenClose.Caption := 'Open';

      Memo.Enabled := Active;
      if Active then
        Memo.SetFocus;
      ComboBoxDeviceName.Enabled := not Active;
      SpeedButtonSetRTS.Enabled := Active;
      SpeedButtonClearRTS.Enabled := Active;
      SpeedButtonSetDTR.Enabled := Active;
      SpeedButtonClearDTR.Enabled := Active;
    end;
end;

procedure TFormComPort.ComPortAfterClose(ComPort: TCustomComPort);
begin
  UpdateComInfo;
end;

procedure TFormComPort.ComPortAfterOpen(ComPort: TCustomComPort);
begin
  UpdateComInfo;
end;

procedure TFormComPort.SpeedButtonConfigClick(Sender: TObject);
begin
  ComPort.ConfigDialog;
end;

procedure TFormComPort.MemoKeyPress(Sender: TObject; var Key: Char);
begin
  ComPort.WriteAnsiChar(AnsiChar(Key));
end;

end.