{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  WebApp_BPKAD;

uses
  //EAppUniGUI, // EurekaLog
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  LoginForm in 'LoginForm.pas' {frmLogin: TUniLoginForm},
  AppSIMDA in 'AppSIMDA.pas' {frmAppSimda: TUniFrame},
  OpenUrlFrame in 'OpenUrlFrame.pas' {FrmOpenUrlFrame: TUniFrame},
  RosterJamKerja in 'units\kepegawaian\RosterJamKerja.pas' {frmRosterJamkerja: TUniForm},
  AppsKepegawaian in 'AppsKepegawaian.pas' {frmKepegaiwaian: TUniFrame},
  Simda_UtilitasPembukuan in 'units\simda\Simda_UtilitasPembukuan.pas' {ufrmUtilitasPembukuan: TUniForm},
  Setting in 'Setting.pas' {frmSetting: TUniFrame},
  AppsPersediaan in 'AppsPersediaan.pas' {frmAppsPersediaan: TUniFrame},
  Simda_UtilitasPembukuanParam in 'units\simda\Simda_UtilitasPembukuanParam.pas' {ufrmUtilitasPembukuanParam: TUniForm},
  HtmlPengumuman in 'units\publik\HtmlPengumuman.pas' {frmHtmlPengumuman: TUniFrame},
  HtmlPanduan in 'units\publik\HtmlPanduan.pas' {frmHtmlPanduan: TUniFrame},
  HtmlVisiMisi in 'units\bpkad\HtmlVisiMisi.pas' {frmHtmlVisiMisi: TUniFrame},
  HtmlTujuan in 'units\bpkad\HtmlTujuan.pas' {frmHtmlTujuan: TUniFrame},
  HtmlTugasFungsi in 'units\bpkad\HtmlTugasFungsi.pas' {frmHtmlTugasFungsi: TUniFrame},
  HtmlStrategiKebijakan in 'units\bpkad\HtmlStrategiKebijakan.pas' {frmHtmlStrategiKebijakan: TUniFrame},
  HtmlStrukturOrganisasi in 'units\bpkad\HtmlStrukturOrganisasi.pas' {frmHtmlStrukturOrganisasi: TUniFrame},
  Persediaan_Pembelian in 'units\persediaan\Persediaan_Pembelian.pas' {frmPersediaanPembelian: TUniForm},
  Persediaan_Pemakaian in 'units\persediaan\Persediaan_Pemakaian.pas' {frmPersediaanPemakaian: TUniForm},
  Persediaan_LaporanUrl in 'units\persediaan\Persediaan_LaporanUrl.pas' {frmPersediaanLaporanUrl: TUniForm},
  Persediaan_Pengaturan in 'units\persediaan\Persediaan_Pengaturan.pas' {frmPersediaanPengaturan: TUniForm},
  Simda_Web in 'units\simda\Simda_Web.pas' {frmSimdaWeb: TUniForm},
  Simda_DataLog in 'units\simda\Simda_DataLog.pas' {frmSimdaDataLog: TUniForm},
  LaporanRealisasi in 'units\laporan\LaporanRealisasi.pas' {frmLaporanRealisasi: TUniFrame},
  Persediaan_PilihPemakaian in 'units\persediaan\Persediaan_PilihPemakaian.pas' {ufrmPersediaanPilihPemakaian: TUniForm},
  Persediaan_PilihPembelian in 'units\persediaan\Persediaan_PilihPembelian.pas' {ufrmPersediaanPilihPembelian: TUniForm};

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
