unit Cards_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  StdCtrls, ExtCtrls, DBCtrls, Buttons, GridsEh, DBAxisGridsEh, DBGridEh,
  ComCtrls, ToolWin,DB, EhLibVCL;

type
  TCards_F = class(TForm)
    Grid_Main: TDBGridEh;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Panel7: TPanel;
    Label1: TLabel;
    RGrp_Find: TRadioGroup;
    E_FindBtn: TButtonedEdit;
    Button1: TButton;
    Btn_CardDisable: TToolButton;
    Btn_CardEnable: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Grid_MainDblClick(Sender: TObject);
    procedure Btn_CardDisableClick(Sender: TObject);
    procedure Btn_CardEnableClick(Sender: TObject);
    procedure Grid_MainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cards_F: TCards_F;

implementation

{$R *.dfm}
uses DmUnit,Main,CardsAdd_U, CardsEdit_U;

procedure TCards_F.Btn_CardDisableClick(Sender: TObject);
var
 rec:Integer;
begin
   if Dmod.Qry_Cards.FieldByName('BLOCKED').AsInteger  = 1 then Exit;
   if (Application.MessageBox('Заблокировать карту ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       rec:=Cards_F.Grid_Main.DataSource.DataSet.FieldByName('ID').AsInteger;
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update cards set ');
       DMod.Qry_Add.Sql.Add('blocked =:p0 ');
       DMod.Qry_Add.Sql.Add(' where id=:p1');
       DMod.Qry_Add.Params[0].AsInteger:=1;
       DMod.Qry_Add.Params[1].AsInteger:=rec;
       DMod.Qry_Add.ExecQuery;
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
    except
        on E: EdatabaseError do
          begin
           DMod.Qry_Add.Transaction.Rollback;
           ShowMessage(E.Message);
           Exit;
          end;

    //       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
//       Application.MessageBox('Ошибка базы данных. Возможно неправильно сформирован запрос',
//                                  'Внимание',mb_iconstop+mb_ok);
    end;
   end;
   DMod.Qry_Cards.Close;
   DMod.Qry_Cards.Open;
   Dmod.Qry_Cards.Locate('id',rec,[]);

end;
procedure TCards_F.Btn_CardEnableClick(Sender: TObject);
var
 rec:Integer;
begin
   if Dmod.Qry_Cards.FieldByName('BLOCKED').AsInteger <> 1 then Exit;

   if (Application.MessageBox('Разблокировать карту ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       rec:=Cards_F.Grid_Main.DataSource.DataSet.FieldByName('ID').AsInteger;
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update cards set ');
       DMod.Qry_Add.Sql.Add('blocked =:p0 ');
       DMod.Qry_Add.Sql.Add(' where id=:p1');
       DMod.Qry_Add.Params[0].AsInteger:=0;
       DMod.Qry_Add.Params[1].AsInteger:=rec;
       DMod.Qry_Add.ExecQuery;
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
    except
        on E: EdatabaseError do
          begin
           DMod.Qry_Add.Transaction.Rollback;
           ShowMessage(E.Message);
           Exit;
          end;


    //       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
//       Application.MessageBox('Ошибка базы данных. Возможно неправильно сформирован запрос',
//                                  'Внимание',mb_iconstop+mb_ok);
    end;
   end;
   DMod.Qry_Cards.Close;
   DMod.Qry_Cards.Open;
   Dmod.Qry_Cards.Locate('id',rec,[]);
end;
procedure TCards_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Dmod.Qry_Cards.Close;
end;

procedure TCards_F.FormShow(Sender: TObject);
begin
 if not Dmod.Qry_Cards.Active then dmod.Qry_Cards.Open;
 
end;

procedure TCards_F.Grid_MainDblClick(Sender: TObject);
begin
  ToolButton3Click(Self);
end;

procedure TCards_F.Grid_MainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
if (Sender as TDbgridEh).DataSource.DataSet.FieldByName('BLOCKED').AsInteger = 1 then
 begin
//  Grid_TS.Canvas.Font.Color := clYellow; // Font color
  (Sender as TDbgridEh).Canvas.Font.Style := [fsStrikeOut]; // Font color
//  Grid_TS.Canvas.Brush.Color := clRed; // Background color
//  Grid_TS.Canvas.FillRect(Rect);
 end;
(Sender as TDbgridEh).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TCards_F.ToolButton1Click(Sender: TObject);
begin
  CardsAdd_F.ShowModal;
end;

procedure TCards_F.ToolButton3Click(Sender: TObject);
begin
  CardsEdit_F.ShowModal;
end;

end.
