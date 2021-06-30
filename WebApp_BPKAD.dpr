{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  WebApp_BPKAD;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  LoginForm in 'LoginForm.pas' {frmLogin: TUniLoginForm},
  Customers in 'Customers.pas' {FrmCustomers: TUniFrame},
  Invoices in 'Invoices.pas' {FrmInvoices: TUniFrame},
  NewInvioce in 'NewInvioce.pas' {FrmNewInvoice: TUniFrame},
  Kepegawaian in 'Kepegawaian.pas' {frmKepegaiwaian: TUniFrame};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
