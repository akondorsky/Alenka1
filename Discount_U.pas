unit Discount_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons,ibx.IbQuery,Db, Mask;

type
    TMyMaskEdit = class(TMaskEdit)
    protected
      procedure ValidateError;override;
  end;

  TDiscount_F = class(TForm)
    Panel_Bottom: TPanel;
    Panel2: TPanel;
    Ch1: TCheckBox;
    Panel_Handy: TPanel;
    Label1: TLabel;
    E_Discount: TEdit;
    Panel_card: TPanel;
    RGrp_Find: TRadioGroup;
    E_Find: TButtonedEdit;
    Label2: TLabel;
    RG1: TRadioGroup;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Gb1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Lb_NumCard: TLabel;
    Lb_Fio: TLabel;
    Lb_Phone: TLabel;
    E_DiscountCard: TEdit;
    procedure FormShow(Sender: TObject);
    procedure Ch1Click(Sender: TObject);
    procedure RG1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RGrp_FindClick(Sender: TObject);
  private
    { Private declarations }
    e_findphone:TMyMaskEdit;
  public
    { Public declarations }
  end;

var
  Discount_F: TDiscount_F;
const
 sql_body:String = 'select first 1 * from cards_used ';

implementation

{$R *.dfm}
uses Main,DMUnit;

procedure TMyMaskEdit.ValidateError;
begin
  Application.MessageBox('Ошибка ввода. Нажмите Esc для отмены.','Внимание',mb_ok+MB_ICONERROR);
end;


procedure TDiscount_F.Ch1Click(Sender: TObject);
begin
  Rg1.Enabled := Ch1.Checked;
end;

procedure TDiscount_F.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Ch1.Checked then
    begin
      case RG1.ItemIndex of
        -1: begin
                Application.MessageBox('Скидка не установлена.Установите или отмените скидку','Внимание',MB_ICONERROR+MB_OK);
                Action:=caNone;
                Exit;
        end;
        0:begin
               try
                  DISCOUNT_CARD:=StrToInt(E_DiscountCard.Text);
               except
                  On EConvertError do
                    begin
                      Application.MessageBox('Скидка не установлена.Установите или отмените скидку','Внимание',MB_ICONERROR+MB_OK);
                      Action:=caNone;
                      Exit;
                    end;
               end;
        end;
        1:begin
               try
                  DISCOUNT_CARD:=StrToInt(E_Discount.Text);
               except
                  On EConvertError do
                    begin
                      Application.MessageBox('Скидка не установлена.Установите или отмените скидку','Внимание',MB_ICONERROR+MB_OK);
                      Action:=caNone;
                      Exit;
                    end;
               end;
        end;
      end;
    end;
  if (Ch1.Checked) and (DISCOUNT_CARD = 0) then
    begin
      Application.MessageBox('Скидка не установлена.Установите или отмените скидку','Внимание',MB_ICONERROR+MB_OK);
      Action:=caNone;
      Exit;
    end;
  FreeAndNil(e_findphone);
end;

procedure TDiscount_F.FormShow(Sender: TObject);
begin
  DISCOUNT_CARD:=0;
  ID_CARD:=0;
  Ch1.Checked:=False;
  Rg1.Enabled:=False;
  Panel_card.Enabled:=False;
  Panel_Handy.Enabled:=False;
  Lb_NumCard.Caption:='';
  E_DiscountCard.Clear;
  Lb_Fio.Caption:='';
  Lb_Phone.Caption:='';
  E_Discount.Clear;
  E_Find.Clear;
  e_findphone:=TMyMaskEdit.Create(Self);
    with e_findphone do
     begin;
      Parent := Panel_card;
      Left := 16;
      Top := 148;
      Width := 175;
      Height := 21;
      Font.Charset := DEFAULT_CHARSET;
      EditMask:='\8\ (000\)\ 000\-00\-00;1;_';
      Font.Color := clWindowText;
      Font.Height := -11;
      Font.Name := 'Tahoma';
      Font.Style := [];
      Font.Size := 9;
      ParentFont := False;
      TabOrder := 2;
//      Text := '8 (   )    -  -  ';
      MaxLength:=17;
    end;

end;

procedure TDiscount_F.RG1Click(Sender: TObject);
begin

 case Rg1.ItemIndex of
  0:begin
    Panel_card.Enabled:=True;
    Panel_Handy.Enabled:=False;
  end;
  1:begin
    Panel_card.Enabled:=False;
    Panel_Handy.Enabled:=True;
  end;

 end;

end;

procedure TDiscount_F.RGrp_FindClick(Sender: TObject);
begin
  case RGrp_Find.ItemIndex of
    0:
      begin
        E_Find.MaxLength:=4;
        E_Find.NumbersOnly:=True;
      end;
    1:
      begin
        E_Find.MaxLength:=20;
        E_Find.NumbersOnly:=False;;
      end;
  end;
end;

procedure TDiscount_F.SpeedButton1Click(Sender: TObject);
var
  sql_text,sql_cond:String;
  qry:TIBQuery;
begin
   qry := TIBQuery.Create(Self);
   try
     qry.Database:=Dmod.DB;
     case RGrp_Find.ItemIndex of
     0: sql_cond := ' where numcard = :p0 ';
     1: sql_cond := ' where lastname containing :p0 ';
     2: sql_cond := ' where phone= :p0 ';
     end;
   sql_text:=sql_body + sql_cond;
   qry.SQL.Add(sql_text);
     case RGrp_Find.ItemIndex of
     0,1: qry.Params[0].AsString := Trim(E_Find.Text);
     2: qry.Params[0].AsString:= e_findphone.Text;
     end;
   qry.Open;
   if qry.RecordCount > 0 then
    begin
      Lb_NumCard.Caption:=Qry.FieldByName('NUMCARD').AsString;
      E_DiscountCard.Text:=Qry.FieldByName('DISCOUNT').AsString;
      Lb_Fio.Caption:=Qry.FieldByName('FIO').AsString;
      Lb_Phone.Caption:=Qry.FieldByName('PHONE').AsString;
      ID_CARD:=Qry.FieldByName('ID').AsInteger;
    end
   else
    begin
      Lb_NumCard.Caption:='';
      E_DiscountCard.Clear;
      Lb_Fio.Caption:='';
      Lb_Phone.Caption:='';
      Application.MessageBox('Данные не найдены','Внимание',MB_ICONWARNING+mb_OK);
    end;

   finally
     qry.Free;
   end;
end;

end.
