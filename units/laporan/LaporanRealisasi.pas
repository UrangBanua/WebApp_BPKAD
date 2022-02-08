unit LaporanRealisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGroupBox, Vcl.Menus, uniMainMenu, uniLabel,
  uniButton, uniBitBtn, UniFSButton, uniGUIBaseClasses, uniPanel;

type
  TfrmLaporanRealisasi = class(TUniFrame)
    UniPanel1: TUniPanel;
    unfDetailAbsen: TUniFSButton;
    uPanelBottom: TUniPanel;
    uPanelGaris: TUniPanel;
    UniLabel_Powered: TUniLabel;
    upopUtilitasPelaporan: TUniPopupMenu;
    LaporanAnggaranVSRealisasiBelanjaPerSubRincianObject1: TUniMenuItem;
    N1: TUniMenuItem;
    UniGroupBox1: TUniGroupBox;
    btLaporanRealisasi_Pendatapan: TUniFSButton;
    btLaporanRealisasi_Belanja: TUniFSButton;
    procedure btLaporanRealisasi_BelanjaClick(Sender: TObject);
    procedure btLaporanRealisasi_PendatapanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Simda_Web;



procedure TfrmLaporanRealisasi.btLaporanRealisasi_BelanjaClick(Sender: TObject);
begin
  frmSimdaWeb.ShowModal;
  frmSimdaWeb.Caption := 'Laporan Anggaran VS Realisasi Belanja Per SubRincian Object (P90)';
  frmSimdaWeb.urlSimdaWeb.URL := 'https://bpkad.hulusungaitengahkab.go.id:446/ReportServer/Pages/ReportViewer.aspx?%2fSIMDA_LaporanKeuangan%2fLaporan_Anggaran_VS_Realisasi_Belanja90&rs:Command=Render';
  UniMainModule.UniFSToast.Info('Login','#Username=laporan #Password=Bpkad123');
end;

procedure TfrmLaporanRealisasi.btLaporanRealisasi_PendatapanClick(Sender: TObject);
begin
  frmSimdaWeb.ShowModal;
  frmSimdaWeb.Caption := 'Laporan Anggaran VS Realisasi Pendapatan Per SubRincian Object (P90)';
  frmSimdaWeb.urlSimdaWeb.URL := 'https://bpkad.hulusungaitengahkab.go.id:446/ReportServer/Pages/ReportViewer.aspx?%2fSIMDA_LaporanKeuangan%2fLaporan_Anggaran_VS_Realisasi_Pendapatan90&rs:Command=Render';
  UniMainModule.UniFSToast.Info('Login','#Username=laporan #Password=Bpkad123');
end;

initialization
  RegisterClass(TfrmLaporanRealisasi);

end.
