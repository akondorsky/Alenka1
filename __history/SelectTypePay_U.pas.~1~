unit SelectTypePay_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, Buttons;

type
  TSelectTypePay_F = class(TForm)
    Card_Btn: TSpeedButton;
    Cash_Btn: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure Card_BtnClick(Sender: TObject);
    procedure Cash_BtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TypePay:Integer;
  end;

var
  SelectTypePay_F: TSelectTypePay_F;

implementation

{$R *.dfm}

procedure TSelectTypePay_F.FormShow(Sender: TObject);
begin
 TypePay:=-1;
end;

procedure TSelectTypePay_F.Card_BtnClick(Sender: TObject);
begin
  TypePay:=1;
  ModalResult:=mrOk;
end;

procedure TSelectTypePay_F.Cash_BtnClick(Sender: TObject);
begin
  TypePay:=0;
  ModalResult:=mrOk;
end;

end.
