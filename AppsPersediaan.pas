unit AppsPersediaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, UniFSButton, uniGroupBox,
  uniChart, uniGUIBaseClasses, uniPanel, uniLabel, uniImage, uniDBImage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniDBText, UniFSConfirm, uniMultiItem, uniComboBox;

type
  TfrmAppsPersediaan = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    uChartStokBarang: TUniChart;
    UniGroupBox1: TUniGroupBox;
    UniGroupBox2: TUniGroupBox;
    ubtPersediaan: TUniFSButton;
    ubtSaldo: TUniFSButton;
    ubtTransaksi: TUniFSButton;
    unfStokBarang: TUniFSButton;
    unfPembelian: TUniFSButton;
    unfPemakaian: TUniFSButton;
    ugSKPD: TUniGroupBox;
    udbLogoSKPD: TUniDBImage;
    qStokBarang: TFDQuery;
    dsProfile: TDataSource;
    UniDBText1: TUniDBText;
    UniFSConfirm: TUniFSConfirm;
    btTahun: TUniBitBtn;
    dsStokBarang: TDataSource;
    ucbUnitKerja: TUniComboBox;
    qUnitkerja: TFDQuery;
    ucbSatuan: TUniComboBox;
    qProgramKegiatan: TFDQuery;
    qProgramKegiatanTahun: TSmallintField;
    qProgramKegiatankd_prog: TSmallintField;
    qProgramKegiatanid_prog: TSmallintField;
    qProgramKegiatankd_keg: TSmallintField;
    qProgramKegiatankd_sumber: TByteField;
    qProgramKegiatanket_kegiatan: TStringField;
    qProgramKegiatankelompok_sasaran: TStringField;
    qProgramKegiatanpagu_anggaran: TCurrencyField;
    qProgramKegiatanwaktu_pelaksanaan: TStringField;
    qProgramKegiatankode_subunit: TStringField;
    qStokBarangtahun: TIntegerField;
    qStokBarangkode_unit: TStringField;
    qStokBarangkode_ssh: TStringField;
    qStokBarangnama: TStringField;
    qStokBarangsatuan: TStringField;
    qStokBarangspek: TStringField;
    qStokBarangharga_satuan: TCurrencyField;
    qUnitkerjaid: TFDAutoIncField;
    qUnitkerjanama_subunit: TStringField;
    qUnitkerjakode_subunit: TStringField;
    qUnitkerjabidang: TStringField;
    ubsPersediaan: TUniBarSeries;
    ubsPengeluaran: TUniBarSeries;
    qStokBarangpenerimaan: TFloatField;
    qStokBarangpengeluaran: TFloatField;
    qStokBarangtersedia: TFloatField;
    procedure unfStokBarangClick(Sender: TObject);
    procedure unfPembelianClick(Sender: TObject);
    procedure unfPemakaianClick(Sender: TObject);
    procedure ubtTransaksiClick(Sender: TObject);
    procedure ubtPersediaanClick(Sender: TObject);
    procedure ubtSaldoClick(Sender: TObject);
    procedure UniFrameDestroy(Sender: TObject);
    procedure btTahunClick(Sender: TObject);
    procedure UniFrameReady(Sender: TObject);
    procedure ucbUnitKerjaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Persediaan_LaporanUrl, Persediaan_Pemakaian, Persediaan_Pembelian,
  Persediaan_Pengaturan;

procedure TfrmAppsPersediaan.ucbUnitKerjaChange(Sender: TObject);
begin
  if qUnitkerja.Active = false then
  begin
    qStokBarang.Close;
    qStokBarang.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qStokBarang.ParamByName('kode_unit').Value := UniMainModule.qProfileKode_Subunit.Value;

    if ucbUnitKerja.Text = 'All' then
      qStokBarang.ParamByName('bidang').Value := '%%'
    else
      qStokBarang.ParamByName('bidang').Value := ucbUnitKerja.Text;

    qStokBarang.Open;
    //ShowMessage('Total Chart Record '+IntToStr(qStokBarang.RecordCount));
    uChartStokBarang.RefreshData;
  end;

end;

procedure TfrmAppsPersediaan.unfPemakaianClick(Sender: TObject);
begin
  frmPersediaanPemakaian.ShowModal;
end;

procedure TfrmAppsPersediaan.unfPembelianClick(Sender: TObject);
begin
  frmPersediaanPembelian.ShowModal;
end;

procedure TfrmAppsPersediaan.unfStokBarangClick(Sender: TObject);
begin
  frmPersediaanPengaturan.ShowModal;
end;

procedure TfrmAppsPersediaan.btTahunClick(Sender: TObject);
var fTahun: String;
begin
  try
    UniFSConfirm.Prompt('Tahun','Masukan Tahun Persediaan', '', TTypeColor.orange, TTheme.light,
      procedure(Button: TConfirmButton; Result: string = '2000')
      begin
        if Button = Yes then
        begin
          UniFSConfirm.Alert('Tahun Persediaan ',Result);
          UniMainModule.TahunPersediaan := StrToInt(Result);
          ugSKPD.Caption := '                APLIKASI PERSEDIAAN - TAHUN(' + IntToStr(UniMainModule.TahunPersediaan) + ')';
          UniMainModule.qProfile.ParamByName('id').Value := UniMainModule.UserKodeSKPD;
          UniMainModule.qProfile.Open;

          // tampilkan Chart Data
          if qUnitkerja.Active = false then
          begin
            qStokBarang.Close;
            qStokBarang.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
            qStokBarang.ParamByName('kode_unit').Value := UniMainModule.qProfileKode_Subunit.Value;

            if ucbUnitKerja.Text = 'All' then
              qStokBarang.ParamByName('bidang').Value := '%%'
            else
              qStokBarang.ParamByName('bidang').Value := ucbUnitKerja.Text;

            qStokBarang.Open;
            //ShowMessage('Total Chart Record '+IntToStr(qStokBarang.RecordCount));
            uChartStokBarang.RefreshData;
          end;

        end;
        if Button = No then
          UniFSConfirm.Alert('Batal ','Batal Membuka Persediaan', 'fa fa-exclamation-circle', TTypeColor.red, TTheme.modern);
        end
    );
  finally
  end;
end;

procedure TfrmAppsPersediaan.UniFrameDestroy(Sender: TObject);
begin
  UniMainModule.qProfile.Close;
end;

procedure TfrmAppsPersediaan.UniFrameReady(Sender: TObject);
begin
  ugSKPD.Caption := '                APLIKASI PERSEDIAAN - TAHUN (' + IntToStr(UniMainModule.TahunPersediaan) + ')';


  // add items cbBidang
  try
    qUnitkerja.ParamByName('id').Value := UniMainModule.UserKodeSKPD;
    qUnitkerja.Open;
    qUnitkerja.First;
    ucbUnitKerja.Items.Clear;
    ucbUnitKerja.Items.Add('All');

    while not qUnitkerja.Eof do
    begin
      ucbUnitKerja.Items.Add(qUnitkerjaBidang.Value);
      qUnitkerja.Next;
    end;
  finally
    ucbUnitKerja.ItemIndex := 0;
    qUnitkerja.Close;
  end;

  // Tampilkan data Chart
    qStokBarang.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qStokBarang.ParamByName('kode_unit').Value := UniMainModule.qProfileKode_Subunit.Value;
    qStokBarang.ParamByName('bidang').Value := '%%';

    qStokBarang.Open;
    uChartStokBarang.RefreshData;

end;

procedure TfrmAppsPersediaan.ubtTransaksiClick(Sender: TObject);
begin
  //frmPersediaanLaporanUrl.ShowModal;

  // Open Cetak Transaksi Terima & Keluar
  UniSession.AddJS('window.open('+'''https://laporan:bpkad.123@bpkad.hulusungaitengahkab.go.id:444/'+
                   'ReportServer/Pages/ReportViewer.aspx?%2fReports_Persediaan%2fLaporan_Transaksi&rc:Parameters=Collapsed'+
                   '&tahun='+IntToStr(UniMainModule.TahunPersediaan)+
                   '&kode_skpd='+UniMainModule.qProfileKode_Subunit.Value+
                   '&bidang='+'%%'+
                   ''', ''_blank'', ''toolbar=no,location=no,status=yes,menubar=no,directories=no,scrollbars=yes,resizable=yes,width=1150,height=650'');'); // to open a new window/tab﻿

end;

procedure TfrmAppsPersediaan.ubtPersediaanClick(Sender: TObject);
begin
  // Open Cetak Persediaan
  UniSession.AddJS('window.open('+'''https://laporan:bpkad.123@bpkad.hulusungaitengahkab.go.id:444/'+
                   'ReportServer/Pages/ReportViewer.aspx?%2fReports_Persediaan%2fLaporan_Mutasi_Persediaan&rc:Parameters=Collapsed'+
                   '&tahun='+IntToStr(UniMainModule.TahunPersediaan)+
                   '&kode_skpd='+UniMainModule.qProfileKode_Subunit.Value+
                   '&bidang='+'%%'+
                   ''', ''_blank'', ''toolbar=no,location=no,status=yes,menubar=no,directories=no,scrollbars=yes,resizable=yes,width=1150,height=650'');'); // to open a new window/tab﻿

end;

procedure TfrmAppsPersediaan.ubtSaldoClick(Sender: TObject);
begin
  // Open Cetak Saldo Awal & Akhir
  UniSession.AddJS('window.open('+'''https://laporan:bpkad.123@bpkad.hulusungaitengahkab.go.id:444/'+
                   'ReportServer/Pages/ReportViewer.aspx?%2fReports_Persediaan%2fLaporan_Stockopname_Persediaan&rc:'+
                   'Tahun='+IntToStr(UniMainModule.TahunPersediaan)+
                   '&Kode_SKPD='+UniMainModule.qProfileKode_Subunit.Value+
                   '&Bidang='+'%%'+
                   ''', ''_blank'', ''toolbar=no,location=no,status=yes,menubar=no,directories=no,scrollbars=yes,resizable=yes,width=1150,height=650'');'); // to open a new window/tab﻿

end;

initialization
  RegisterClass(TfrmAppsPersediaan);


end.
