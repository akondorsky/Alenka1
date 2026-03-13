unit Kol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons,Db;

type
  TKol_Form = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kol_Form: TKol_Form;

implementation

uses DMUnit,main;

{$R *.DFM}

procedure TKol_Form.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
       begin
         SelectNext(Sender as TWinControl, True, True);
         Key := #0;
       end;
end;

procedure TKol_Form.FormShow(Sender: TObject);
begin
 Edit1.Text:=IntToStr(PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('ZAK').asInteger);
 Edit1.SetFocus;
end;

procedure TKol_Form.BitBtn1Click(Sender: TObject);
var
   R:Integer;
begin
  ModalResult:=mrNone;
    R:=PagesDlg.Grid_Kat.DataSource.DataSet.FieldByName('NN').AsInteger;
   if (Application.MessageBox('Занести данные в базу данных ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
          try
           if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
           DMod.Qry_Add.Sql.Clear;
           DMod.Qry_Add.Sql.Add('update katalog set ');
           DMod.Qry_Add.Sql.Add('zak=:p0  where nn=:p1 ');
           DMod.Qry_Add.Params[0].Value:=StrToFloat(Edit1.Text);
           DMod.Qry_Add.Params[1].Value:=R;
          DMod.Qry_Add.ExecQuery;
          if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
          ModalResult:=mrOk;
        except
          on EdatabaseError do
            begin
              if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Rollback;
              Application.MessageBox('Ошибка базы данных. Возможно неправильно сформирован запрос',
                                      'Внимание',mb_iconstop+mb_ok);
            end;
        end;
    end  ;
 if ModalResult = mrOk then
    begin
       DMod.QKatalog.Close;
       DMod.QKatalog.Open;
       Dmod.QKatalog.Locate('NN',R,[]);
    end;
end;


end.
