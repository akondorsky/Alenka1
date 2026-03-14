unit AtolV10_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, System.Actions,
  Vcl.ActnList,Vcl.OleAuto,System.DateUtils;

type
  TAtolV10_F = class(TForm)
    Label1: TLabel;
    Lbl_Condition: TLabel;
    Label3: TLabel;
    Lbl_Shift: TLabel;
    GroupBox2: TGroupBox;
    XReportButton: TButton;
    ZReportButton: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    ActionList1: TActionList;
    A_KkmConnect: TAction;
    procedure A_KkmConnectExecute(Sender: TObject);
    procedure ZReportButtonClick(Sender: TObject);
    procedure XReportButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AtolV10_F: TAtolV10_F;
  fptr: OleVariant;
  isOpened: Boolean;
  errcode:Integer;
  errString:String;
  shiftstate:      Longint;
  shiftnumber:     Longint;
  shiftexpired:   TDateTime;


implementation

{$R *.dfm}
uses Main,Fptr10Lib_TLB;

procedure TAtolV10_F.A_KkmConnectExecute(Sender: TObject);
var
    state:      Longint;
    number:     Longint;
    dateTime:   TDateTime;
begin
  try
     if VarIsEmpty(fptr) then fptr:= CreateOleObject('AddIn.Fptr10');
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_MODEL, IntToStr(fptr.LIBFPTR_MODEL_ATOL_30F));
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_PORT, IntToStr(fptr.LIBFPTR_PORT_COM));
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_COM_FILE, CASH_PORT);
     fptr.setSingleSetting(fptr.LIBFPTR_SETTING_BAUDRATE, IntToStr(fptr.LIBFPTR_PORT_BR_115200));
     fptr.applySingleSettings;

     if fptr.open <> 0 then
        begin
          errcode:=fptr.errorCode;
          errString:=fptr.ErrorDescription();
        end
      else
        begin
         isOpened:=fptr.isOpened;
        end;

  except
     on E: Exception do
     begin
      errString:=errString + 'Exception: ' + E.Message;
     end;
  end;

  if not fptr.isOpened then
    begin
      Application.MessageBox(PwideChar('Невозможно подключиться к кассе. '+ errString),'Внимание!',MB_ICONERROR+MB_OK);
      Exit;
    end
  else
    Lbl_Condition.Caption:='Соединение установлено';
    fptr.setParam(fptr.LIBFPTR_PARAM_DATA_TYPE, fptr.LIBFPTR_DT_SHIFT_STATE);
    fptr.queryData;
    state       := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_STATE);
    number      := fptr.getParamInt(fptr.LIBFPTR_PARAM_SHIFT_NUMBER);
    dateTime    := fptr.getParamDateTime(fptr.LIBFPTR_PARAM_DATE_TIME);
    case state of
      //смена закрыта
      0:begin
        if Application.MessageBox(PwideChar('Смена закрыта.Открыть смену сейчас?'),
                              'Внимание!',MB_ICONQUESTION+MB_YESNO) = ID_YES then
           begin
            fptr.setParam(1021, 'Администратор');
            fptr.operatorLogin;
            fptr.openShift;
            Lbl_Shift.Caption:='Смена открыта.№ смены: '+IntToStr(number+1)+
                                '.Дата истечения '+ DateTimeToStr(IncDay(Now,1));
           end;
      end;
      1:begin
        Lbl_Shift.Caption:='Смена открыта.№ смены: '+IntToStr(number)+
                           '.Дата время истечения: '+DateTimeToStr(dateTime);
      end;
      2:begin
        Lbl_Shift.Caption:='Текущая смена истекла.№ смены: '+IntToStr(number)+
                           '.Дата время истечения: '+DateTimeToStr(dateTime);
        fptr.setParam(1021, 'Администратор');
        fptr.operatorLogin;
        fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
        fptr.report;
        if Application.MessageBox(PwideChar('Текущая смена истекла.Необходимо открыть смену.Открыть смену сейчас?'),
                              'Внимание!',MB_ICONQUESTION+MB_YESNO) = ID_YES then
        begin
          fptr.setParam(1021, 'Администратор');
          fptr.operatorLogin;
          fptr.openShift;
          Lbl_Shift.Caption:='Смена открыта.№ смены: '+IntToStr(number+1)+
                             '.Дата время истечения: '+DateTimeToStr(dateTime);
        end;
      end;

    end;
end;



procedure TAtolV10_F.XReportButtonClick(Sender: TObject);
begin
  if fptr.isOpened then
    begin
     fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_X);
     fptr.report;
    end;
end;

procedure TAtolV10_F.ZReportButtonClick(Sender: TObject);
begin
  if fptr.isOpened then
    begin
      fptr.setParam(fptr.LIBFPTR_PARAM_REPORT_TYPE, fptr.LIBFPTR_RT_CLOSE_SHIFT);
      fptr.report;
    end;
end;

end.
