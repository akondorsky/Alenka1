unit Unit_edship;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm_EdShip = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Firm: TEdit;
    E_LawName: TEdit;
    E_Adr: TEdit;
    E_Phone: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_EdShip: TForm_EdShip;

implementation

{$R *.dfm}
uses dmunit,main;
procedure TForm_EdShip.BitBtn1Click(Sender: TObject);
var
   R:Integer;
begin
  ModalResult:=mrNone;
  if Length(Trim(E_Firm.Text)) > 0 then
  begin
   if (Application.MessageBox('Занести данные в базу данных ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       R:=PagesDlg.Grid_Ship.DataSource.DataSet.FieldByName('ID_NUM').asInteger;
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('update shippers');
       DMod.Qry_Add.Sql.Add('set name=:p0, law_name=:p1, address=:p2, phone=:p3 ');
       DMod.Qry_Add.Sql.Add(' where id_num=:p4 ');
       DMod.Qry_Add.Params[0].Value:=E_Firm.Text;
       DMod.Qry_Add.Params[1].Value:=E_LawName.Text;
       DMod.Qry_Add.Params[2].Value:=E_Adr.Text;
       DMod.Qry_Add.Params[3].Value:=E_Phone.Text;
       DMod.Qry_Add.Params[4].Value:=R;
       DMod.Qry_Add.ExecQuery;
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
       ModalResult:=mrOk;
    except
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
       Application.MessageBox('Ошибка базы данных. Возможно неправильно сформирован запрос',
                                  'Внимание',mb_iconstop+mb_ok);
    end;
   end;
  end;
 if ModalResult = mrOk then
    begin
       DMod.Qry_Shippers.Close;
       DMod.Qry_Shippers.Open;
       Dmod.Qry_Shippers.Locate('ID_NUM',R,[]) ;
    end;
end;

procedure TForm_EdShip.FormShow(Sender: TObject);
begin
    E_Firm.Text:=PagesDlg.Grid_Ship.DataSource.DataSet.FieldByName('NAME').AsString;
    E_LawName.Text:= PagesDlg.Grid_Ship.DataSource.DataSet.FieldByName('LAW_NAME').AsString;
    E_Adr.Text:= PagesDlg.Grid_Ship.DataSource.DataSet.FieldByName('ADDRESS').AsString;
    E_Phone.Text:= PagesDlg.Grid_Ship.DataSource.DataSet.FieldByName('PHONE').AsString;
    E_Firm.SetFocus;

end;

end.
