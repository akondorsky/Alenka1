unit Splash_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,  Graphics,
   Controls,  Forms,  Dialogs,  ExtCtrls,  StdCtrls,
   jpeg, ComCtrls;

type
  TSplashForm = class(TForm)
    Image1: TImage;
    Sb1: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

end.
