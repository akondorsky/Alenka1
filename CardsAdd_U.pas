unit CardsAdd_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask,Db;

type
  TMyMaskEdit = class(TMaskEdit)
    protected
      procedure ValidateError;override;
  end;

type
  TCardsAdd_F = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_Ncard: TEdit;
    E_LastName: TEdit;
    E_Fname: TEdit;
    E_Sname: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label5: TLabel;
    E_Discount: TEdit;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    E_Phone : TMyMaskEdit;
    procedure ClearControls;
  public
    { Public declarations }
  end;

var
  CardsAdd_F: TCardsAdd_F;

implementation

{$R *.dfm}
uses dmunit;
{ TMyMaskEdit }
procedure TMyMaskEdit.ValidateError;
begin
  Application.MessageBox('Ошибка ввода. Нажмите Esc для отмены.','Внимание',mb_ok+MB_ICONERROR);
end;

procedure TCardsAdd_F.BitBtn1Click(Sender: TObject);
begin
  ModalResult:=mrNone;
   if (Application.MessageBox('Занести данные в базу данных ?','Подтверждение занесения в базу данных',MB_YESNO+MB_ICONQUESTION)= IDYES)   then
     begin
      try
       if not Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.StartTransaction;
       DMod.Qry_Add.Sql.Clear;
       DMod.Qry_Add.Sql.Add('insert into cards');
       DMod.Qry_Add.Sql.Add('(numcard,lastname,firstname,midname,discount,phone)');
       DMod.Qry_Add.Sql.Add(' values (:p0,  :p1, :p2, :p3,:p4,:p5)');
       DMod.Qry_Add.Params[0].Value:=E_Ncard.Text;
       DMod.Qry_Add.Params[1].Value:=E_LastName.Text;
       DMod.Qry_Add.Params[2].Value:=E_Fname.Text;
       DMod.Qry_Add.Params[3].Value:=E_Sname.Text;
       DMod.Qry_Add.Params[4].Value:=E_Discount.Text;
       DMod.Qry_Add.Params[5].Value:=E_Phone.Text;
       DMod.Qry_Add.ExecQuery;
       if Dmod.Qry_Add.Transaction.InTransaction then Dmod.Qry_Add.Transaction.Commit;
       ModalResult:=mrOk;
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
 if ModalResult = mrOk then
    begin
       DMod.Qry_Cards.Close;
       DMod.Qry_Cards.Open;
       Dmod.Qry_Cards.Last;
    end;
end;

procedure TCardsAdd_F.ClearControls;
begin
  E_Ncard.Clear;
  E_LastName.Clear;
  E_Fname.Clear;
  E_Sname.Clear;
  E_Discount.Clear;
end;

procedure TCardsAdd_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FreeAndNil(E_Phone);
end;

procedure TCardsAdd_F.FormShow(Sender: TObject);
begin
  ClearControls;
  E_Phone:=TMyMaskEdit.Create(Self);
    with E_Phone do
     begin;
      Parent := Self;
      Left := 88;
      Top := 144;
      Width := 129;
      Height := 21;
      Font.Charset := DEFAULT_CHARSET;
      EditMask:='\8\ (000\)\ 000\-00\-00;1;_';
      Font.Color := clWindowText;
      Font.Height := -11;
      Font.Name := 'Tahoma';
      Font.Style := [];
      Font.Size := 9;
      ParentFont := False;
      TabOrder := 5;
//      Text := '8 (   )    -  -  ';
      MaxLength:=17;
    end;
end;

end.
