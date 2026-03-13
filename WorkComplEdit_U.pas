unit WorkComplEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,Db;

type
  TWorkComplEdit_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    E_Name: TButtonedEdit;
    E_Cost: TEdit;
    E_Empl: TButtonedEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure E_CostKeyPress(Sender: TObject; var Key: Char);
    procedure E_NameRightButtonClick(Sender: TObject);
    procedure E_EmplRightButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WorkComplEdit_F: TWorkComplEdit_F;

implementation

{$R *.dfm}
uses dmunit,main, Works_U, Empl_U;

procedure TWorkComplEdit_F.BitBtn1Click(Sender: TObject);
var
 rec:integer;
begin

try
 try
    rec:=Dmod.Qry_WorksCompl.FieldByName('ID').AsInteger;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('update works set name=:p0,employee=:p1,cost=:p2 where id=:p3 ');
    DMod.Qry_Add.Params[0].AsString:=E_Name.Text;
    DMod.Qry_Add.Params[1].AsString:=E_Empl.Text;
    if Length(Trim(E_Cost.Text)) = 0  then
        DMod.Qry_Add.Params[2].AsFloat:=0
       else
        DMod.Qry_Add.Params[2].AsFloat:=StrToFloat(E_Cost.Text);
    DMod.Qry_Add.Params[3].AsInteger:=rec;
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    Modalresult:=mrOk;
    DMod.Qry_WorksCompl.Close;
    DMod.Qry_WorksCompl.Open;
    DMod.Qry_WorksCompl.Locate('ID',rec,[]);
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
  if DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.Rollback;
end;
end;

procedure TWorkComplEdit_F.E_CostKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=FormatSettings.DecimalSeparator;
 if not(Key in ['0'..'9',ch]) then Key:=#0;
end;

procedure TWorkComplEdit_F.E_EmplRightButtonClick(Sender: TObject);
begin
 if Empl_F.ShowModal=mrOk then
   begin
     E_Empl.Text:=Dmod.Qry_Employee.FieldByName('LASTNAME').asString+
                  ' '+
                  Trim(Copy(Dmod.Qry_Employee.FieldByName('FIRSTNAME').asString,1,1))+
                  '.';
   end;
end;

procedure TWorkComplEdit_F.E_NameRightButtonClick(Sender: TObject);
begin
 if Works_F.ShowModal=mrOk then
   begin
     E_Name.Text:=Dmod.Qry_Works.FieldByName('WORKNAME').asString;
     E_Cost.Text:=Dmod.Qry_Works.FieldByName('FINALPRICE').asString;
     E_Empl.SetFocus;
   end;
end;

procedure TWorkComplEdit_F.FormShow(Sender: TObject);
begin
WorkComplEdit_F.Caption:='Редактирование работы к заказ-наряду № '+Dmod.Qry_Order.FieldByName('N_ORDER').AsString;
E_Name.Text:=DMod.Qry_WorksCompl.FieldByName('NAME').AsString;
E_Cost.Text:=DMod.Qry_WorksCompl.FieldByName('COST').AsString;
E_Empl.Text:=DMod.Qry_WorksCompl.FieldByName('EMPLOYEE').AsString;
end;

end.
