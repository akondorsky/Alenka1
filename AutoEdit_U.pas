unit AutoEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,Db;

type
  TAutoEdit_F = class(TForm)
    Label1: TLabel;
    l_Client: TLabel;
    Label2: TLabel;
    E_Marka: TButtonedEdit;
    Label3: TLabel;
    E_Model: TEdit;
    Label4: TLabel;
    E_Vin: TEdit;
    Label5: TLabel;
    E_RegNum: TEdit;
    Label6: TLabel;
    E_Year: TEdit;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    E_Engine: TComboBox;
    procedure E_MarkaRightButtonClick(Sender: TObject);
    procedure E_VinKeyPress(Sender: TObject; var Key: Char);
    procedure E_RegNumKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AutoEdit_F: TAutoEdit_F;

implementation

{$R *.dfm}
uses dmunit,main, MarkAuto_U;

procedure TAutoEdit_F.E_VinKeyPress(Sender: TObject; var Key: Char);
begin
   if  not(Key in ['0'..'9','A'..'Z','a'..'z']) then Key:=#0;
end;

procedure TAutoEdit_F.E_RegNumKeyPress(Sender: TObject; var Key: Char);
begin
    if  not(Key in ['0'..'9','A'..'Z','a'..'z']) then Key:=#0;
end;

procedure TAutoEdit_F.BitBtn1Click(Sender: TObject);
var
 cur_id:Integer;
begin
try
 try
    cur_id:=Dmod.Qry_ClientAuto.FieldByName('ID').AsInteger;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('update clientlinkmodels set markid=:p0,model=:p1,vin=:p2, ');
    Dmod.Qry_Add.SQL.Add('regno=:p3,enginetype=:p4,yearproduction=:p5 where id=:p6');
    DMod.Qry_Add.Params[0].AsInteger:=DMod.Qry_MarkAuto.FieldByName('ID').asinteger;
    DMod.Qry_Add.Params[1].AsString:=E_Model.Text;
    DMod.Qry_Add.Params[2].AsString:=E_Vin.Text;
    DMod.Qry_Add.Params[3].AsString:=E_RegNum.Text;
    DMod.Qry_Add.Params[4].AsString:=E_Engine.Text;
    DMod.Qry_Add.Params[5].asString:=E_Year.Text;
    DMod.Qry_Add.Params[6].AsInteger:=cur_id;
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_ClientAuto.Close;
    DMod.Qry_ClientAuto.Open;
    DMod.Qry_ClientAuto.Locate('ID',cur_id,[]);
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

procedure TAutoEdit_F.E_MarkaRightButtonClick(Sender: TObject);
begin
 if MarkAuto_F.ShowModal =mrOK then E_Marka.Text:=DMod.Qry_MarkAuto.FieldByName('NAME').AsString;
end;

procedure TAutoEdit_F.FormShow(Sender: TObject);
begin
 if DMod.Qry_Client.FieldByName('CLIENTTYPE').AsString='P' then
    l_Client.Caption:=DMod.Qry_Client.FieldByName('LASTNAME').AsString
   else
    l_Client.Caption:=DMod.Qry_Client.FieldByName('ORGANIZATION').AsString;
 if Dmod.Qry_MarkAuto.Locate('ID',Dmod.Qry_ClientAuto.FieldByName('MARKID').AsInteger,[]) then
    E_Marka.Text:=DMod.Qry_MarkAuto.FieldByName('NAME').AsString
   else
    E_Marka.Clear;
 E_Model.Text:=DMod.Qry_ClientAuto.FieldByName('MODEL').AsString;
 E_Vin.Text:=DMod.Qry_ClientAuto.FieldByName('VIN').AsString;
 E_RegNum.Text:=DMod.Qry_ClientAuto.FieldByName('REGNO').AsString;
 E_Year.Text:=DMod.Qry_ClientAuto.FieldByName('YEARPRODUCTION').AsString;
 E_Engine.Text:=DMod.Qry_ClientAuto.FieldByName('ENGINETYPE').AsString;
end;

end.
