unit Seldate_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,DateUtils;

type
  TSelDate_F = class(TForm)
    D1: TDateTimePicker;
    D2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelDate_F: TSelDate_F;

implementation

{$R *.dfm}

procedure TSelDate_F.BitBtn1Click(Sender: TObject);
begin
 if DateOf(D2.Date) < DateOf(D1.Date) then
   begin
    Application.MessageBox('Конечная дата не может быть меньше начальной!','Внимание',MB_ICONWARNING+MB_OK );
    ModalResult:=mrNone;
    Exit;
   end;
 ModalResult:=mrOk;
end;

procedure TSelDate_F.FormCreate(Sender: TObject);
begin
  D1.Date:=Date;
  D2.Date:=Date;
end;

end.
