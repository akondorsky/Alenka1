unit OrderAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls,MemTableEh, MemTableDataEh, Db,
  DBGridEhGrouping, GridsEh, DBGridEh, Buttons, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, DBAxisGridsEh, EhLibVCL;

type
  TOrderAdd_F = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    E_Zak: TButtonedEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    Label14: TLabel;
    MT_ClParts: TMemTableEh;
    DS_MTClParts: TDataSource;
    DBGridEh1: TDBGridEh;
    L_Time: TLabel;
    DBNavigator1: TDBNavigator;
    L_Marka: TLabel;
    L_Model: TLabel;
    L_Vin: TLabel;
    L_Year: TLabel;
    L_RegNum: TLabel;
    Label15: TLabel;
    E_Cost: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label16: TLabel;
    E_Empl: TButtonedEdit;
    Label17: TLabel;
    E_Note: TMemo;
    Label18: TLabel;
    E_Crashes: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure E_ZakRightButtonClick(Sender: TObject);
    procedure E_CostKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure E_EmplRightButtonClick(Sender: TObject);
    procedure DBGridEh1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderAdd_F: TOrderAdd_F;

implementation

{$R *.dfm}
uses dmunit,main, Client_U, Empl_U,myutils;

procedure TOrderAdd_F.BitBtn1Click(Sender: TObject);
var
 g:TGuid;
 KeyClientPart:String;
 pms:TMemoryStream;

begin
try
 pms:=TMemoryStream.Create;
 try
    if Length(Trim(E_Zak.Text))=0 then
      begin
        Application.MessageBox('Не выбран заказчик.','Внимание',MB_ICONWARNING+MB_OK );
        //ModalResult:=mrNone;
        Exit;
      end;

    if CreateGUID(g) = S_Ok then  KeyClientPart:=GUIDToString(g);
    if not DMod.Qry_Add.Transaction.InTransaction then DMod.Qry_Add.Transaction.StartTransaction;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('insert into zakaz_order (dt_open,cl_id,vid_pl,empl_in,ts_id,reason, ');
    DMod.Qry_Add.SQL.Add(' pre_calc,n_order,vid_rep,roundtrip,client_parts_key,note,crashes) ');
    DMod.Qry_Add.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12 ) ');
    DMod.Qry_Add.Params[0].AsDateTime:=now;
    DMod.Qry_Add.Params[1].AsInteger:=DMod.Qry_Client.FieldByName('ID').asinteger;
    DMod.Qry_Add.Params[2].AsString:=E_VidPay.Text;
    DMod.Qry_Add.Params[3].AsInteger:=DMod.Qry_Employee.FieldByName('ID').asinteger;
    DMod.Qry_Add.Params[4].AsInteger:=DMod.Qry_ClientAuto.FieldByName('ID').asinteger;
    E_Reason.Lines.SaveToStream(pms);
    DMod.Qry_Add.Params[5].LoadFromStream(pms);
    DMod.Qry_Add.Params[6].AsDouble:=StrToFloat(E_Cost.Text);
    DMod.Refresh_Settings;
    DMod.Qry_Add.Params[7].AsString:=DMod.Qry_Settings.FieldByName('NEXT_ORDER').asString;
    DMod.Qry_Add.Params[8].AsString:=E_VidRep.Text;
    DMod.Qry_Add.Params[9].AsInteger:=StrtoInt(E_Trip.Text);
    DMod.Qry_Add.Params[10].AsString:=KeyClientPart;
    pms.Clear;
    E_Note.Lines.SaveToStream(pms);
    DMod.Qry_Add.Params[11].LoadFromStream(pms);
    pms.Clear;
    E_Crashes.Lines.SaveToStream(pms);
    DMod.Qry_Add.Params[12].LoadFromStream(pms);
    DMod.Qry_Add.ExecQuery;
    //обновим счетчик ордеров
    DMod.Refresh_Settings;
    DMod.Qry_Add.Close;
    DMod.Qry_Add.SQL.Clear;
    DMod.Qry_Add.SQL.Add('update settings set next_order=:p0 ');
    DMod.Qry_Add.Params[0].AsInteger:=DMod.Qry_Settings.FieldByName('NEXT_ORDER').asinteger+1;
    DMod.Qry_Add.ExecQuery;
    //добавим запчасти
    if MT_ClParts.RecordCount <> 0 then
      begin
        MT_ClParts.First;
        while not MT_ClParts.Eof do
          begin
            DMod.Qry_Add.Close;
            DMod.Qry_Add.SQL.Clear;
            DMod.Qry_Add.SQL.Add('insert into client_parts (nameparts,edizm,kol,id_order,price )');
            DMod.Qry_Add.SQL.Add(' values ( :p0,:p1,:p2,:p3,:p4 ) ');
            DMod.Qry_Add.Params[0].AsString:=MT_ClParts.FieldByName('NAMEPARTS').AsString;
            DMod.Qry_Add.Params[1].AsString:=MT_ClParts.FieldByName('EDIZM').AsString;
            DMod.Qry_Add.Params[2].AsDouble:=MT_ClParts.FieldByName('KOL').AsFloat;
            DMod.Qry_Add.Params[3].AsString:=KeyClientPart;
            DMod.Qry_Add.Params[4].AsCurrency:=MT_ClParts.FieldByName('PRICE').AsFloat;
            DMod.Qry_Add.ExecQuery;
            MT_ClParts.Next;
          end;
      end;
    DMod.Qry_Add.Transaction.Commit;
    ModalResult:=mrOk;
    DMod.Qry_Order.Close;
    DMod.Qry_Order.Open;
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

procedure TOrderAdd_F.BitBtn2Click(Sender: TObject);
begin
ModalResult:=mrCancel;
end;

procedure TOrderAdd_F.DBGridEh1Exit(Sender: TObject);
begin
  if MT_ClParts.State in [dsInsert,dsEdit] then MT_ClParts.Post;
end;

procedure TOrderAdd_F.E_CostKeyPress(Sender: TObject; var Key: Char);
var
 ch:Char;
begin
 ch:=FormatSettings.DecimalSeparator;
 if  not(Key in ['0'..'9',ch]) then Key:=#0;
end;

procedure TOrderAdd_F.E_EmplRightButtonClick(Sender: TObject);
begin
  if Empl_F.ShowModal=mrOk then E_Empl.Text :=Dmod.Qry_Employee.FieldByName('LASTNAME').AsString;
end;

procedure TOrderAdd_F.E_ZakRightButtonClick(Sender: TObject);
begin
if Client_F.ShowModal= mrOk then
   begin
     if DMod.Qry_Client.FieldByName('CLIENTTYPE').asstring = 'P' then
        E_Zak.Text:=DMod.Qry_Client.FieldByName('LASTNAME').asstring+' '+
                    Copy(Trim(DMod.Qry_Client.FieldByName('FIRSTNAME').asstring),1,1)+'.'
       else
        E_Zak.Text:=DMod.Qry_Client.FieldByName('ORGANIZATION').asstring;
     L_Marka.Caption:=DMod.Qry_ClientAuto.FieldByName('MARKA').AsString;
     L_Model.Caption:=DMod.Qry_ClientAuto.FieldByName('MODEL').AsString;;
     L_Vin.Caption:=DMod.Qry_ClientAuto.FieldByName('VIN').AsString;
     L_Year.Caption:=DMod.Qry_ClientAuto.FieldByName('YEARPRODUCTION').AsString;
     L_RegNum.Caption:=DMod.Qry_ClientAuto.FieldByName('REGNO').AsString;
   end;

end;

procedure TOrderAdd_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MT_ClParts.EmptyTable;
  Mt_ClParts.Close;
end;

procedure TOrderAdd_F.FormCreate(Sender: TObject);
begin
 MT_ClParts.FieldDefs.Add('NAMEPARTS',ftString,255);
 MT_ClParts.FieldDefs.Add('EDIZM',ftString,10);
 MT_ClParts.FieldDefs.Add('KOL',ftFloat);
 MT_ClParts.FieldDefs.Add('PRICE',ftCurrency);
 MT_ClParts.CreateDataSet;
end;

procedure TOrderAdd_F.FormShow(Sender: TObject);
begin
 L_Time.Caption:=DateTimeToStr(now);
 E_zak.Clear;
 L_Marka.Caption:='';
 L_Model.Caption:='';
 L_Vin.Caption:='';
 L_Year.Caption:='';
 L_RegNum.Caption:='';
 E_Trip.Text:='0';
 E_Reason.Lines.Clear;
 E_Note.Lines.Clear;
 E_Crashes.Lines.Clear;
 E_Cost.Text:='0';
 E_Empl.Text :=Dmod.Qry_Employee.FieldByName('LASTNAME').AsString;
 DBGridEh1.Columns[0].FieldName:='NAMEPARTS';
 DBGridEh1.Columns[1].FieldName:='EDIZM';
 DBGridEh1.Columns[2].FieldName:='KOL';
 DBGridEh1.Columns[3].FieldName:='PRICE';
 MT_ClParts.Open;
end;

end.
