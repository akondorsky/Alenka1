unit OrderEdit_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls,MemTableEh, MemTableDataEh, Db,
  DBGridEhGrouping, GridsEh, DBGridEh, Buttons;

type
  TOrderEdit_F = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    E_Zak: TButtonedEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    E_VidRep: TComboBox;
    Label9: TLabel;
    E_VidPay: TComboBox;
    Label10: TLabel;
    E_Trip: TEdit;
    Label11: TLabel;
    E_Reason: TMemo;
    Label12: TLabel;
    Label13: TLabel;
    L_Time: TLabel;
    L_Marka: TLabel;
    L_Vin: TLabel;
    L_Year: TLabel;
    L_RegNum: TLabel;
    Label15: TLabel;
    E_Cost: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label17: TLabel;
    E_Note: TMemo;
    Label18: TLabel;
    E_Crashes: TMemo;
    Label4: TLabel;
    L_Model: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    E_Note_Recom: TMemo;
    procedure FormShow(Sender: TObject);
    procedure E_ZakRightButtonClick(Sender: TObject);
    procedure E_CostKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Client_Id:Integer;
  public
    { Public declarations }
  end;

var
  OrderEdit_F: TOrderEdit_F;

implementation

{$R *.dfm}
uses dmunit,main, Client_U, Empl_U,myutils;

procedure TOrderEdit_F.BitBtn1Click(Sender: TObject);
var
 id_rec:Integer;
 pms:TMemoryStream;
begin
try
 try
    if Length(Trim(E_Zak.Text))=0 then
      begin
        Application.MessageBox('Не выбран заказчик.','Внимание',MB_ICONWARNING+MB_OK );
        ModalResult:=mrNone;
        Exit;
      end;
    id_rec:=DMod.Qry_Order.FieldByName('ID').asinteger;
    pms:=TMemoryStream.Create;
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('update zakaz_order set cl_id=:p0,vid_pl=:p1,ts_id=:p2,reason=:p3, ');
    DMod.Qry_Add.SQL.Add(' pre_calc=:p4,vid_rep=:p5,roundtrip=:p6,note=:p7,crashes=:p8, note_recom=:p9 where id=:p10 ');
    DMod.Qry_Add.Params[0].AsInteger:=Client_Id;
    DMod.Qry_Add.Params[1].AsString:=E_VidPay.Text;
    DMod.Qry_Add.Params[2].AsInteger:=DMod.Qry_ClientAuto.FieldByName('ID').asinteger;
    E_Reason.Lines.SaveToStream(pms);
    DMod.Qry_Add.Params[3].LoadFromStream(pms);
    DMod.Qry_Add.Params[4].AsDouble:=StrToFloat(E_Cost.Text);
    DMod.Qry_Add.Params[5].AsString:=E_VidRep.Text;
    DMod.Qry_Add.Params[6].AsInteger:=StrtoInt(E_Trip.Text);
    pms.Clear;
    E_Note.Lines.SaveToStream(pms);
    DMod.Qry_Add.Params[7].LoadFromStream(pms);
    pms.Clear;
    E_Crashes.Lines.SaveToStream(pms);
    DMod.Qry_Add.Params[8].LoadFromStream(pms);
    pms.Clear;
    E_Note_Recom.Lines.SaveToStream(pms);
    DMod.Qry_Add.Params[9].LoadFromStream(pms);
    pms.Clear;
    DMod.Qry_Add.Params[10].AsInteger:=id_rec;
    DMod.Qry_Add.ExecQuery;
    DMod.Qry_Add.Transaction.Commit;
    DMod.Qry_Order.Close;
    DMod.Qry_Order.Open;
    DMod.Qry_Order.Locate('ID',id_rec,[]);
  except
    on E: EdatabaseError do
      begin
       ShowMessage(E.Message);
      end;
  end;
finally
  pms.Free;
  if DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.Rollback;
end;
end;

procedure TOrderEdit_F.E_CostKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=FormatSettings.DecimalSeparator;
 if  not(Key in ['0'..'9',ch]) then Key:=#0;
end;

procedure TOrderEdit_F.E_ZakRightButtonClick(Sender: TObject);
begin
DMod.Qry_Client.Locate('ID',Client_Id,[]);
if Client_F.ShowModal= mrOk then
   begin
     if DMod.Qry_Client.FieldByName('CLIENTTYPE').asstring = 'P' then
        E_Zak.Text:=DMod.Qry_Client.FieldByName('LASTNAME').asstring+' '+
                    Copy(Trim(DMod.Qry_Client.FieldByName('FIRSTNAME').asstring),1,1)+'.'
       else
        E_Zak.Text:=DMod.Qry_Client.FieldByName('ORGANIZATION').asstring;
     Client_Id:=Dmod.Qry_Client.FieldByName('ID').AsInteger;
     L_Marka.Caption:=DMod.Qry_ClientAuto.FieldByName('MARKA').AsString;
     L_Model.Caption:=DMod.Qry_ClientAuto.FieldByName('MODEL').AsString;;
     L_Vin.Caption:=DMod.Qry_ClientAuto.FieldByName('VIN').AsString;
     L_Year.Caption:=DMod.Qry_ClientAuto.FieldByName('YEARPRODUCTION').AsString;
     L_RegNum.Caption:=DMod.Qry_ClientAuto.FieldByName('REGNO').AsString;

   end;

end;

procedure TOrderEdit_F.FormShow(Sender: TObject);
begin
 OrderEdit_F.Caption:='Редактирование заказ-наряда № '+DMod.Qry_Order.FieldByName('N_ORDER').asstring;
 L_Time.Caption:=DMod.Qry_Order.FieldByName('DT_OPEN').asstring;
 E_Zak.Text:=Dmod.Qry_Order.FieldByName('CLIENTNAME').AsString;
 L_Marka.Caption:=DMod.Qry_OrderAuto.FieldByName('NAME').AsString;
 L_Model.Caption:=DMod.Qry_OrderAuto.FieldByName('MODEL').AsString;
 L_Vin.Caption:=DMod.Qry_OrderAuto.FieldByName('VIN').AsString;
 L_Year.Caption:=DMod.Qry_OrderAuto.FieldByName('YEARPRODUCTION').AsString;
 L_RegNum.Caption:=DMod.Qry_OrderAuto.FieldByName('REGNO').AsString;
 E_Trip.Text:=Dmod.Qry_Order.FieldByName('ROUNDTRIP').asstring;
 E_Reason.Lines.Assign(DMod.Qry_OrderREASON);
 E_Note.Lines.Assign(DMod.Qry_OrderNOTE);
 E_Crashes.Lines.Assign(DMod.Qry_OrderCRASHES);
 E_Cost.Text:=Dmod.Qry_Order.FieldByName('PRE_CALC').asstring;
 E_Note_Recom.Lines.Assign(Dmod.Qry_OrderNOTE_RECOM);
 E_VidPay.Text:=Dmod.Qry_Order.FieldByName('VID_PL').asstring;
 E_VidRep.Text:=Dmod.Qry_Order.FieldByName('VID_REP').asstring;
 Client_Id:=Dmod.Qry_Order.FieldByName('CL_ID').AsInteger;

end;

end.
