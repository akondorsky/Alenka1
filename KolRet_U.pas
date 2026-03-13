unit KolRet_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TKolRet_F = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KolRet_F: TKolRet_F;

implementation

{$R *.dfm}

procedure TKolRet_F.BitBtn1Click(Sender: TObject);
begin
  if (Length(trim(Edit1.Text)) = 0) or (StrToFloat(Trim(Edit1.Text))=0) then ModalResult:=mrNone
    else
     ModalResult:=mrOk;
end;

end.
