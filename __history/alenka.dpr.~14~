program alenka;



uses
  Vcl.Forms,
  SysUtils,
  Windows,
  Main in 'Main.pas' {PagesDlg},
  sumprops in 'sumprops.pas',
  DMUnit in 'DMUnit.pas' {DMod: TDataModule},
  Global_U in 'Global_U.pas',
  Add in 'Add.pas' {AddForm},
  AutoAdd_U in 'AutoAdd_U.pas' {AutoAdd_F},
  AutoEdit_U in 'AutoEdit_U.pas' {AutoEdit_F},
  Cards_U in 'Cards_U.pas' {Cards_F},
  CardsAdd_U in 'CardsAdd_U.pas' {CardsAdd_F},
  CardsEdit_U in 'CardsEdit_U.pas' {CardsEdit_F},
  Client_U in 'Client_U.pas' {Client_F},
  ClientAdd_U in 'ClientAdd_U.pas' {ClientAdd_F},
  ClientEdit_U in 'ClientEdit_U.pas' {ClientEdit_F},
  Discount_U in 'Discount_U.pas' {Discount_F},
  Edit in 'Edit.pas' {EdForm},
  Empl_U in 'Empl_U.pas' {Empl_F},
  EmplAdd_U in 'EmplAdd_U.pas' {EmplAdd_F},
  EmplEdit_U in 'EmplEdit_U.pas' {EmplEdit_F},
  Kol in 'Kol.pas' {Kol_Form},
  Kol2 in 'Kol2.pas' {Kol_Form2},
  KolRet_U in 'KolRet_U.pas' {KolRet_F},
  KursVal_U in 'KursVal_U.pas' {KursVal_F},
  MarkAuto_U in 'MarkAuto_U.pas' {MarkAuto_F},
  MarkAutoAdd_U in 'MarkAutoAdd_U.pas' {MarkAutoAdd_F},
  myutils in 'myutils.pas',
  OrderAdd_U in 'OrderAdd_U.pas' {OrderAdd_F},
  OrderEdit_U in 'OrderEdit_U.pas' {OrderEdit_F},
  PartZakAdd_U in 'PartZakAdd_U.pas' {PartZakAdd_F},
  PartZakEdit_U in 'PartZakEdit_U.pas' {PartZakEdit_F},
  Print_Sale in 'Print_Sale.pas' {Pr_Sale_Form},
  Regti_U in 'Regti_U.pas' {Regti_F},
  RegTiAdd_U in 'RegTiAdd_U.pas' {RegTiAdd_F},
  RegTiEdit_U in 'RegTiEdit_U.pas' {RegTiEdit_F},
  RepUnit in 'RepUnit.pas' {ReportFm},
  Unit_login1 in 'Unit_login1.pas' {FormLogin},
  Splash_U in 'Splash_U.pas' {SplashForm},
  Settings_U in 'Settings_U.pas' {Settings_F},
  Fptr10Lib_TLB in 'Fptr10Lib_TLB.pas',
  AtolV10_U in 'AtolV10_U.pas' {AtolV10_F};

{$R *.res}

 var
   Start:Cardinal;
   FileName:String;
begin
  Application.Initialize;
  Start:=GetTickCount;
  FileName:='connectstring.ini';
  try
      AssignFile(F,FileName);
      Reset(F);
  except
      on E: Exception do
        begin
            Application.MessageBox('Файл настроек не найден.Запуск программы невозможен.','Внимание',MB_ICONERROR + mb_Ok);
            Application.Terminate;
        end;
  end;
  SplashForm := TSplashForm.Create( Application );
  SplashForm.Show;
  SplashForm.Update;
  Application.MainFormOnTaskbar := True;
  SplashForm.Sb1.Panels[0].Text:='Подключение к базе данных...';
  SplashForm.Update;
  Application.CreateForm(TPagesDlg, PagesDlg);
  Application.CreateForm(TDMod, DMod);
  //  if not _ConnectionFlag then
//    begin
//      Application.MessageBox('Подключение не удалось.Запуск программы невозможен.','Внимание',MB_ICONERROR + mb_Ok);
//      Halt;
//    end;
  Application.CreateForm(TAddForm, AddForm);
  Application.CreateForm(TAutoAdd_F, AutoAdd_F);
  Application.CreateForm(TAutoEdit_F, AutoEdit_F);
  Application.CreateForm(TCards_F, Cards_F);
  Application.CreateForm(TCardsAdd_F, CardsAdd_F);
  Application.CreateForm(TCardsEdit_F, CardsEdit_F);
  Application.CreateForm(TClient_F, Client_F);
  Application.CreateForm(TClientAdd_F, ClientAdd_F);
  Application.CreateForm(TClientEdit_F, ClientEdit_F);
  Application.CreateForm(TDiscount_F, Discount_F);
  Application.CreateForm(TEdForm, EdForm);
  Application.CreateForm(TEmpl_F, Empl_F);
  Application.CreateForm(TEmplAdd_F, EmplAdd_F);
  Application.CreateForm(TEmplEdit_F, EmplEdit_F);
  Application.CreateForm(TKol_Form, Kol_Form);
  Application.CreateForm(TKol_Form2, Kol_Form2);
  Application.CreateForm(TKolRet_F, KolRet_F);
  Application.CreateForm(TKursVal_F, KursVal_F);
  Application.CreateForm(TMarkAuto_F, MarkAuto_F);
  Application.CreateForm(TMarkAutoAdd_F, MarkAutoAdd_F);
  Application.CreateForm(TOrderAdd_F, OrderAdd_F);
  Application.CreateForm(TOrderEdit_F, OrderEdit_F);
  Application.CreateForm(TPartZakAdd_F, PartZakAdd_F);
  Application.CreateForm(TPartZakEdit_F, PartZakEdit_F);
  Application.CreateForm(TPr_Sale_Form, Pr_Sale_Form);
  Application.CreateForm(TRegti_F, Regti_F);
  Application.CreateForm(TRegTiAdd_F, RegTiAdd_F);
  Application.CreateForm(TRegTiEdit_F, RegTiEdit_F);
  Application.CreateForm(TReportFm, ReportFm);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TSettings_F, Settings_F);
  SplashForm.Sb1.Panels[0].Text:='Запуск приложения...';
  SplashForm.Update;
  while (GetTickCount - Start) < 2500 do
    begin
     SplashForm.Update;
    end;
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
