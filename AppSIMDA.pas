unit AppSIMDA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniURLFrame, uniGUIBaseClasses, uniPanel, uniLabel,
  uniButton, uniBitBtn, UniFSButton, Vcl.Menus, uniMainMenu;

type
  TfrmAppSimda = class(TUniFrame)
    UniPanel1: TUniPanel;
    uPanelBottom: TUniPanel;
    uPanelGaris: TUniPanel;
    UniLabel_Powered: TUniLabel;
    unfABC1: TUniFSButton;
    unfDetailAbsen: TUniFSButton;
    unfUtilitasPelaporan: TUniFSButton;
    unfUtilitasPembukuan: TUniFSButton;
    upopUtilitasPelaporan: TUniPopupMenu;
    LaporanAnggaranVSRealisasiBelanjaPerSubRincianObject1: TUniMenuItem;
    N1: TUniMenuItem;
    procedure unfUtilitasPembukuanClick(Sender: TObject);
    procedure unfABC1Click(Sender: TObject);
    procedure unfUtilitasPelaporanClick(Sender: TObject);
    procedure LaporanAnggaranVSRealisasiBelanjaPerSubRincianObject1Click(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, Simda_UtilitasPembukuan, Simda_Web;


procedure TfrmAppSimda.LaporanAnggaranVSRealisasiBelanjaPerSubRincianObject1Click(
  Sender: TObject);
begin
  frmSimdaWeb.ShowModal;
  frmSimdaWeb.Caption := 'Laporan Anggaran VS Realisasi Belanja Per SubRincian Object (P90)';
  frmSimdaWeb.urlSimdaWeb.URL := 'https://bpkad.hulusungaitengahkab.go.id:446/ReportServer/Pages/ReportViewer.aspx?%2fSIMDA_LaporanKeuangan%2fLaporan_Anggaran_VS_Realisasi_Belanja90&rs:Command=Render';
  UniMainModule.UniFSToast.Info('Login','#Username=laporan #Password=Bpkad123');
end;

procedure TfrmAppSimda.unfABC1Click(Sender: TObject);
begin
  frmSimdaWeb.ShowModal;
  frmSimdaWeb.Caption := 'Simda Web BPKAD HST';
  frmSimdaWeb.urlSimdaWeb.URL := 'https://bpkad.hulusungaitengahkab.go.id:444/simda_web/2021/public/auth';
end;

procedure TfrmAppSimda.unfUtilitasPelaporanClick(Sender: TObject);
begin
  upopUtilitasPelaporan.PopupBy(unfUtilitasPelaporan);
end;

procedure TfrmAppSimda.unfUtilitasPembukuanClick(Sender: TObject);

begin
  ufrmUtilitasPembukuan.ShowModal;

//  case M of
//    mrOK  : ShowMessage('OK');
//    mrCancel  : ShowMessage('Cancel');
//    mrNone  : ShowMessage('None');
//  end;

  //ShowMessage('Done, ' + UniForm1.UniEdit1.Text);
end;


initialization
  RegisterClass(TfrmAppSimda);

end.
