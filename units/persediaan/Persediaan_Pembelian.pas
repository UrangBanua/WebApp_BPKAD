unit Persediaan_Pembelian;

interface

uses
  Windows, Messages, SysUtils, DateUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGroupBox, uniBasicGrid,
  uniDBGrid, uniMultiItem, uniComboBox, uniDateTimePicker, uniMemo,
  uniDBNavigator, uniEdit, uniDBComboBox,
  uniLabel, uniWidgets, uniCheckBox, uniButton, uniBitBtn;

type
  TfrmPersediaanPembelian = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    qPembelian: TFDQuery;
    dsPembelian: TDataSource;
    dtTanggal: TUniDateTimePicker;
    cbProgram: TUniComboBox;
    umKeterangan: TUniMemo;
    qUnitkerja: TFDQuery;
    qSKPD: TFDQuery;
    cbSKPD: TUniComboBox;
    cbBidang: TUniComboBox;
    qProgramKegiatan: TFDQuery;
    qProgramKegiatanTahun: TSmallintField;
    qProgramKegiatankd_prog: TSmallintField;
    qProgramKegiatanid_prog: TSmallintField;
    qProgramKegiatankd_keg: TSmallintField;
    qProgramKegiatankd_sumber: TByteField;
    qProgramKegiatanket_kegiatan: TStringField;
    qProgramKegiatankelompok_sasaran: TStringField;
    qProgramKegiatanwaktu_pelaksanaan: TStringField;
    qProgramKegiatankode_subunit: TStringField;
    qUnitkerjaid: TFDAutoIncField;
    qUnitkerjakode: TStringField;
    qUnitkerjabidang: TStringField;
    qPembelianid: TFDAutoIncField;
    qPembeliantanggal: TDateField;
    qPembeliankode_ssh: TStringField;
    qPembelianharga_satuan: TCurrencyField;
    qPembeliansupplier: TStringField;
    qPembelianprogram_kegiatan: TStringField;
    qPembelianketerangan: TStringField;
    qPembeliancreated_at: TSQLTimeStampField;
    qPembeliancreated_user: TIntegerField;
    qPembeliandeleted: TBooleanField;
    qPembeliankode_unitkerja: TIntegerField;
    qPembeliantotal: TCurrencyField;
    udbgPmbelian: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniHiddenPanel1: TUniHiddenPanel;
    feKelompok: TUniEdit;
    feKode: TUniEdit;
    feBarang: TUniEdit;
    feSatuan: TUniEdit;
    feSpek: TUniEdit;
    feTA: TUniEdit;
    feNamaUnit: TUniEdit;
    feNamaSSH: TUniEdit;
    qPembeliannama_barang: TStringField;
    qPembeliansatuan: TStringField;
    ubwPilih: TUniButtonWidget;
    qPemakaian: TFDQuery;
    qPemakaianid: TFDAutoIncField;
    qPemakaiantanggal: TDateField;
    qPemakaianpemohon: TStringField;
    qPemakaiankode_unitkerja: TIntegerField;
    qPemakaiankode_ssh: TStringField;
    qPemakaianharga_satuan: TCurrencyField;
    qPemakaianprogram_kegiatan: TStringField;
    qPemakaianketerangan: TStringField;
    qPemakaianpersetujuan: TBooleanField;
    qPemakaiancreated_at: TSQLTimeStampField;
    qPemakaiancreated_user: TIntegerField;
    qPemakaiandeleted: TBooleanField;
    uchPemakaian: TUniCheckBox;
    qProgramKegiatangap_kegiatan: TStringField;
    qProgramKegiatanpagu_anggaran: TWideStringField;
    UniLabel5: TUniLabel;
    qBASTPenerimaan: TFDQuery;
    qPembeliankode_bast: TStringField;
    qPemakaiankode_bast: TStringField;
    qBASTPenerimaannew_bast: TStringField;
    qBASTPengeluaran: TFDQuery;
    qBASTPengeluarannew_bast: TStringField;
    ubStatusPagu: TUniBitBtn;
    cbKodeBAST: TUniComboBox;
    qSSH: TFDQuery;
    qSSHkode: TStringField;
    qSSHnama: TStringField;
    qSSHsatuan: TStringField;
    qSSHspek: TStringField;
    qSSHket_teks: TMemoField;
    qSSHkelompok: TByteField;
    qSSHharga: TCurrencyField;
    qSSHkode_kel: TStringField;
    qSSHnama_kel: TStringField;
    qSSHupdate_at: TSQLTimeStampField;
    qSSHupdated_user: TIntegerField;
    ulKodeBASTPengeluaran: TUniLabel;
    qPembelianbidang: TStringField;
    qSKPDId: TFDAutoIncField;
    qSKPDKode_Subunit: TStringField;
    qSKPDNama_Subunit: TStringField;
    upTombol: TUniPanel;
    dbnTombol: TUniDBNavigator;
    ubtCetakBA: TUniBitBtn;
    dtFaktur: TUniDateTimePicker;
    qPembeliankode_skpd: TIntegerField;
    qPemakaiansumber: TStringField;
    qPemakaiankode_skpd: TIntegerField;
    qPembelianqty: TFloatField;
    qPemakaianqty: TFloatField;
    qPemakaiantersedia: TFloatField;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure qPembelianAfterCancel(DataSet: TDataSet);
    procedure qPembelianAfterDelete(DataSet: TDataSet);
    procedure qPembelianBeforePost(DataSet: TDataSet);
    procedure qPembelianAfterPost(DataSet: TDataSet);
    procedure udbgPmbelianColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure udbgPmbelianColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure qPembelianCalcFields(DataSet: TDataSet);
    procedure ubwPilihClick(Sender: TObject);
    procedure cbProgramChange(Sender: TObject);
    procedure qPemakaianAfterPost(DataSet: TDataSet);
    procedure qPembelianBeforeEdit(DataSet: TDataSet);
    procedure cbKodeBASTChange(Sender: TObject);
    procedure udbgPmbelianColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure udbgPmbelianColumnSummaryTotal(Column: TUniDBGridColumn;
      Attribs: TUniCellAttribs; var Result: string);
    procedure ubtCetakBAClick(Sender: TObject);
    procedure qPembelianBeforeInsert(DataSet: TDataSet);
    procedure ubStatusPaguClick(Sender: TObject);
  private
    var
      PInsertStat : boolean;
      PKode_SubUnit : String;
      PKode_Bidang : String;

    { Private declarations }
    procedure PilihBarang(Sender: TComponent; AResult: Integer);
    procedure GetDataBAST;
  public
    { Public declarations }
  end;

function frmPersediaanPembelian: TfrmPersediaanPembelian;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Persediaan_PilihPembelian, Vcl.DBCtrls;

function frmPersediaanPembelian: TfrmPersediaanPembelian;
begin
  Result := TfrmPersediaanPembelian(UniMainModule.GetFormInstance(TfrmPersediaanPembelian));
end;

procedure TfrmPersediaanPembelian.cbKodeBASTChange(Sender: TObject);
begin
  if (cbKOdeBAST.Text = 'BARU') AND (cbKOdeBAST.Text <> 'SEMUA') then
  begin
    // GET DATA BAST
    qPembelian.Close;
    qPembelian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qPembelian.ParamByName('kode_skpd').Value := UniMainModule.UserKodeSKPD;
    qPembelian.ParamByName('kode_bast').Value := 'BARU';
    qPembelian.Open;
    ulKodeBASTPengeluaran.Caption := 'BARU';
    dtTanggal.Enabled := true;
    dtFaktur.Enabled := true;
    cbBidang.Enabled := true;
    cbProgram.Enabled := true;
    umKeterangan.Enabled := true;
    dtTanggal.DateTime := now();
    dtFaktur.DateTime := now();
    umKeterangan.Text := '-';
    udbgPmbelian.Grouping.Enabled := false;
    ubStatusPagu.Caption := 'Status Pagu';
    dbnTombol.VisibleButtons := [nbInsert,nbDelete,nbPost,nbCancel];

  end else
  if cbKOdeBAST.Text = 'SEMUA' then
  begin
    // GET DATA BAST
    qPembelian.Close;
    qPembelian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qPembelian.ParamByName('kode_skpd').Value := UniMainModule.UserKodeSKPD;
    qPembelian.ParamByName('kode_bast').Value := '%%';
    qPembelian.Open;

//    ShowMessage('Param tahun=' + qPembelian.ParamByName('tahun').AsString +
//                ', kode_skpd=' + qPembelian.ParamByName('kode_skpd').AsString +
//                ', kode_bast=' + qPembelian.ParamByName('kode_bast').AsString);

    dtTanggal.Enabled := false;
    dtFaktur.Enabled := false;
    cbBidang.Enabled := false;
    cbProgram.Enabled := false;
    umKeterangan.Enabled := false;
    udbgPmbelian.Grouping.Enabled := true;
    ubStatusPagu.Caption := 'Status Pagu';
    dbnTombol.VisibleButtons := [nbDelete,nbPost,nbCancel];
  end else
  begin
    // GET DATA BAST
    qPembelian.Close;
    qPembelian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qPembelian.ParamByName('kode_skpd').Value := UniMainModule.UserKodeSKPD;
    qPembelian.ParamByName('kode_bast').Value := cbKodeBAST.Text;
    qPembelian.Open;

//    ShowMessage('Param tahun=' + qPembelian.ParamByName('tahun').AsString +
//                ', kode_skpd=' + qPembelian.ParamByName('kode_skpd').AsString +
//                ', kode_bast=' + qPembelian.ParamByName('kode_bast').AsString);

    dtTanggal.Enabled := true;
    dtFaktur.Enabled := true;
    cbBidang.Enabled := true;
    cbProgram.Enabled := true;
    umKeterangan.Enabled := true;
    dtTanggal.DateTime := qPembeliantanggal.Value;
    dtFaktur.DateTime := qPembeliancreated_at.AsDateTime;
    cbBidang.Text := qPembelianbidang.Value;
    cbProgram.Text := qPembelianprogram_kegiatan.Value;
    umKeterangan.Text := qPembelianketerangan.Value;
    udbgPmbelian.Grouping.Enabled := false;

    // Cek Pagu Anggaran
    if qProgramKegiatan.Active = true then qProgramKegiatan.Close;
    try
      qProgramKegiatan.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
      qProgramKegiatan.ParamByName('kode_subunit').Value := PKode_SubUnit;
      qProgramKegiatan.ParamByName('gap_keg').Value := cbProgram.Text;
      qProgramKegiatan.Open;
      ubStatusPagu.Caption := 'PAGU ANGGARAN DARI PROGRAM KEGIATAN (' +
                              qProgramKegiatanPagu_Anggaran.Value + ')';
    finally
        qProgramKegiatan.Close;
    end;

    dbnTombol.VisibleButtons := [nbInsert,nbDelete,nbPost,nbCancel];
  end;
end;

procedure TfrmPersediaanPembelian.cbProgramChange(Sender: TObject);
begin
  // Cek Pagu Anggaran
  if qProgramKegiatan.Active = true then qProgramKegiatan.Close;
  try
    qProgramKegiatan.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qProgramKegiatan.ParamByName('kode_subunit').Value := PKode_SubUnit;
    qProgramKegiatan.ParamByName('gap_keg').Value := cbProgram.Text;
    qProgramKegiatan.Open;
    ubStatusPagu.Caption := 'PAGU ANGGARAN DARI PROGRAM KEGIATAN (' +
                            qProgramKegiatanPagu_Anggaran.Value + ')';
  finally
      qProgramKegiatan.Close;
  end;
end;

procedure TfrmPersediaanPembelian.GetDataBAST;
var
  SQL : String;
  Q : TFDQuery;
begin
  // add items KodeBast
  SQL := 'SELECT DISTINCT kode_bast FROM db_persediaan.dbo.data_pembelian ' +
         'WHERE DATEPART(YEAR,tanggal) =' + IntToStr(UniMainModule.TahunPersediaan) + ' AND ' +
         'kode_skpd =' + IntToStr(UniMainModule.UserKodeSKPD);
  try
    Q := TFDQuery.Create(Self);
    Q.Connection := UniMainModule.FDConnection;
    //Q.Params.CreateParam(ftString, 'Nom', ptOutput);// tambahkan param
    Q.SQL.Text := SQL;
    Q.Open;
    cbKodeBAST.Items.Clear;
    cbKodeBAST.Items.Add('BARU');
    cbKodeBAST.Items.Add('SEMUA');

    while not Q.Eof do
    begin
      cbKodeBAST.Items.Add(Q.FieldByName('kode_bast').Value);
      Q.Next;
    end;
  finally
    Q.Free;  // otherwise you have a memory leak
  end;
end;

procedure TfrmPersediaanPembelian.PilihBarang(Sender: TComponent;
  AResult: Integer);
var desc_barang : String;
begin
  if AResult = 1 then
  begin
    if ufrmPersediaanPilihPembelian.qPilihPembelianspek.ToString <> '' then
      desc_barang := ufrmPersediaanPilihPembelian.qPilihPembeliannama.value +
      ' - ' + ufrmPersediaanPilihPembelian.qPilihPembelianspek.ToString
    else
      desc_barang := ufrmPersediaanPilihPembelian.qPilihPembeliannama.AsString+ '';

    qPembeliankode_ssh.value := ufrmPersediaanPilihPembelian.qPilihPembeliankode.value;
    qPembeliannama_barang.AsString := desc_barang;
    qPembeliansatuan.value := ufrmPersediaanPilihPembelian.qPilihPembeliansatuan.value;
    qPembelianharga_satuan.value := ufrmPersediaanPilihPembelian.qPilihPembelianharga.value;
    //udbgPmbelian.SetFocus;
    //udbgPmbelian.SelectedRows[5];

  end else if AResult = 2 then
  begin
    Showmessage((Sender as TuniForm).Name+', Pilih barang dibatalkan ...');
  end;

end;

procedure TfrmPersediaanPembelian.qPembelianAfterDelete(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Penerimaan',2);
end;

procedure TfrmPersediaanPembelian.qPemakaianAfterPost(DataSet: TDataSet);
begin
    UniMainModule.NotifSaveDB('Data Pemakaian ('+ulKodeBASTPengeluaran.Caption+')',0);
end;

procedure TfrmPersediaanPembelian.qPembelianAfterCancel(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Penerimaan',1);
end;

procedure TfrmPersediaanPembelian.qPembelianBeforeEdit(DataSet: TDataSet);
begin
  PInsertStat := false;
  //if not (qPembelian.State in [dsEdit]) then qPembelian.Edit;
end;

procedure TfrmPersediaanPembelian.qPembelianBeforeInsert(DataSet: TDataSet);
begin
  if (dtTanggal.DateTime <= strtodate('30/12/'+IntToStr(UniMainModule.TahunPersediaan))) AND
     (dtFaktur.DateTime <= strtodate('30/12/'+IntToStr(UniMainModule.TahunPersediaan))) AND
     (dtFaktur.DateTime <= dtTanggal.DateTime) then
  begin
    PInsertStat := true;
    qPembelian.Last;
  end else
    qPembelian.Cancel;
end;

procedure TfrmPersediaanPembelian.qPembelianBeforePost(DataSet: TDataSet);
begin

  if (cbKodeBAST.Text = 'BARU') OR (cbKodeBAST.Text <> 'SEMUA') then
  begin
    qPembelianTanggal.Value := dtTanggal.DateTime;

    // get Id UnitKerja
    try
      if qUnitkerja.Active then qUnitkerja.Close;
      qUnitkerja.ParamByName('kode_subunit').Value := PKode_SubUnit;
      qUnitkerja.ParamByName('bidang').Value := cbBidang.Text;
      qUnitkerja.Open;
    finally
      qUnitkerja.First;
      qPembelianKode_UnitKerja.Value := qUnitkerjaId.Value;
      qPembelianProgram_Kegiatan.AsString := cbProgram.Text;
      qPembelianCreated_User.Value := UniMainmodule.UserKodeSKPD;
      qPembelianCreated_At.AsDateTime := dtTanggal.DateTime;
      qPembelianKeterangan.AsString := umKeterangan.Text;
      qPembeliankode_skpd.Value := UniMainModule.UserKodeSKPD;

      if cbKodeBAST.Text = 'BARU' then
      // Get KodeBAST Penerimaan
        try
          if qBASTPenerimaan.Active = true then qBASTPenerimaan.Close;
          qBASTPenerimaan.ParamByName('skpd').Value := UniMainModule.qProfileKeterangan.Value;
          qBASTPenerimaan.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
          qBASTPenerimaan.ParamByName('kode_skpd').Value := IntToStr(UniMainModule.UserKodeSKPD);
          qBASTPenerimaan.Open;
        finally
          qPembeliankode_bast.Value := qBASTPenerimaannew_bast.Value;
          cbKodeBAST.Items.Add(qBASTPenerimaannew_bast.Value);
          cbKodeBAST.Text := qBASTPenerimaannew_bast.Value;
        end
      else
      if cbKodeBAST.Text <> 'SEMUA' then
        qPembeliankode_bast.Value := cbKodeBAST.Text;

      qUnitkerja.Close;
    end;

  end;

end;

procedure TfrmPersediaanPembelian.qPembelianAfterPost(DataSet: TDataSet);
begin
  try
    UniMainModule.NotifSaveDB('Data Penerimaan ('+qPembeliankode_bast.Value+')',0);
  finally
    // check Auto Pakai
    if (PInsertStat = true) and (uchPemakaian.Checked) then
      if MessageDlg('Auto Pakai', mtConfirmation, mbYesNo) = mrYes then
      begin
        if not qPemakaian.Active then qPemakaian.Open;
        qPemakaian.Insert;

//        if ulKodeBASTPengeluaran.Caption = 'BARU' then
//        // Get KodeBAST Penerimaan
//          try
//            if qBASTPengeluaran.Active = true then qBASTPenerimaan.Close;
//            qBASTPengeluaran.ParamByName('skpd').Value := UniMainModule.qProfileKeterangan.Value;
//            qBASTPengeluaran.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
//            qBASTPengeluaran.Open;
//          finally
//            qPemakaiankode_bast.Value := qBASTPengeluarannew_bast.Value;
//          end
//        else

          qPemakaiankode_bast.Value := stringreplace(cbKodeBAST.Text , 'BAST-TERIMA', 'BAST-KELUAR',
                                       [rfReplaceAll, rfIgnoreCase]);
          ulKodeBASTPengeluaran.Caption := qPemakaiankode_bast.Value;

        qPemakaiantanggal.Value := IncDay(qPembeliantanggal.Value,1);
        qPemakaianpemohon.AsString := cbBidang.Text;
        qPemakaiankode_unitkerja.Value := qPembeliankode_unitkerja.Value;
        qPemakaiankode_skpd.Value := qPembeliankode_skpd.Value;
        qPemakaiankode_ssh.Value := qPembeliankode_ssh.Value;
        qPemakaianqty.Value := qPembelianqty.Value;
        qPemakaiantersedia.Value := qPembelianqty.Value;
        qPemakaianharga_satuan.Value := qPembelianharga_satuan.Value;
        qPemakaianprogram_kegiatan.Value := qPembelianprogram_kegiatan.Value;
        qPemakaianketerangan.Value := qPembelianketerangan.Value;
        qPemakaianpersetujuan.Value := true;
        qPemakaiansumber.Value := 'Pembelian';
        qPemakaiancreated_user.Value := qPembeliancreated_user.Value;
        qPemakaian.Post;
      end else uchPemakaian.Checked := false;

  end;
end;

procedure TfrmPersediaanPembelian.qPembelianCalcFields(DataSet: TDataSet);
begin
  qPembelianTotal.Value := (qPembelianQty.Value * qPembelianHarga_Satuan.Value);

end;

procedure TfrmPersediaanPembelian.ubStatusPaguClick(Sender: TObject);
begin
  //
  Sleep(3000);

end;

procedure TfrmPersediaanPembelian.ubtCetakBAClick(Sender: TObject);
var
  kd_bast : String;
begin
  if SameText(cbKodeBAST.Text, 'SEMUA') then kd_bast := '%%' else kd_bast := cbKodeBAST.Text;

  // Open Cetak BAST
  UniSession.AddJS('window.open('+'''https://laporan:bpkad.123@bpkad.hulusungaitengahkab.go.id:444/'+
                   'ReportServer/Pages/ReportViewer.aspx?%2fReports_Persediaan%2fBAST_Penerimaan&rc:Parameters=Collapsed'+
                   '&tahun='+IntToStr(UniMainModule.TahunPersediaan)+
                   '&kode_skpd='+UniMainModule.qProfileKode_Subunit.Value+
                   '&kode_bast='+kd_bast+
                   ''', ''_blank'', ''toolbar=no,location=no,status=yes,menubar=no,directories=no,scrollbars=yes,resizable=yes,width=1150,height=650'');'); // to open a new window/tab﻿

end;

procedure TfrmPersediaanPembelian.ubwPilihClick(Sender: TObject);
begin
  with ufrmPersediaanPilihPembelian do
  begin
    //ufrmPersediaanPilihPembelian.qPilihPembelian.ParamByName('kode_unit').Value := qUnitkerjakode.Value;
    //ufrmPersediaanPilihPembelian.qPilihPembelian.ParamByName('bidang').Value := '%%';
    if not (qPembelian.State in [dsEdit, dsInsert]) then qPembelian.Edit;
    ShowModal(PilihBarang);
  end;
end;

procedure TfrmPersediaanPembelian.udbgPmbelianColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  if SameText(Column.FieldName, 'nama_barang') then
  begin
    qPembelian.IndexName:='id';
  end;
end;

procedure TfrmPersediaanPembelian.udbgPmbelianColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
var
  F : Real;
begin
  if SameText(Column.FieldName, 'qty') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0;
    if Column.AuxValues[1]=NULL then Column.AuxValues[1]:=0;

    Column.AuxValue:=Column.AuxValue + Column.Field.AsInteger;
    Column.AuxValues[1]:=Column.AuxValues[1] + Column.Field.AsInteger;
  end
  else if SameText(Column.FieldName, 'total') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0.0;
    if Column.AuxValues[1]=NULL then Column.AuxValues[1]:=0;

    F:=Column.Field.AsFloat;

    Column.AuxValue:=Column.AuxValue + F;
    Column.AuxValues[1]:=Column.AuxValues[1] + F;
  end;
end;

procedure TfrmPersediaanPembelian.udbgPmbelianColumnSummaryResult(
  Column: TUniDBGridColumn; GroupFieldValue: Variant; Attribs: TUniCellAttribs;
  var Result: string);
var
  I : Integer;
  F : Real;
begin

  if cbKodeBAST.Text = 'SEMUA' then
  begin
    // Hitung Total
    if SameText(Column.FieldName, 'qty') then
    begin
      I:=Column.AuxValue;
      Result:=Format('%d', [I]);
      Attribs.Font.Style:=[fsBold];
      Attribs.Font.Color:=clGreen;
    end
    else if SameText(Column.FieldName, 'total') then
    begin
      F:=Column.AuxValue;
      Result:=FloatToStrF(F , ffCurrency , 12 , 2);
      Attribs.Font.Style:=[fsBold];
      Attribs.Font.Color:=clNavy;
    end;
  end;
  Column.AuxValue := NULL;
end;

procedure TfrmPersediaanPembelian.udbgPmbelianColumnSummaryTotal(
  Column: TUniDBGridColumn; Attribs: TUniCellAttribs; var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'qty') then
  begin
    Result:='GTotal :';
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end
  else if SameText(Column.FieldName, 'total') then
  begin
    F:=Column.AuxValues[1];
    Result:=FloatToStrF(F , ffCurrency , 12 , 2);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;
end;

procedure TfrmPersediaanPembelian.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qBASTPenerimaan.Close;
  qBASTPengeluaran.Close;
  qPembelian.Close;
  qSSH.Close;
end;

procedure TfrmPersediaanPembelian.UniFormShow(Sender: TObject);
begin
  Caption := Caption + ' - TAHUN (' + IntToStr(UniMainModule.TahunPersediaan) + ')';
  dtTanggal.DateTime := Now();
  dtTanggal.MaxDate := strtodate('30/12/'+IntToStr(UniMainModule.TahunPersediaan));
  dtFaktur.DateTime := Now();
  dtFaktur.MaxDate := strtodate('30/12/'+IntToStr(UniMainModule.TahunPersediaan));

  // add item cbBAST;
  GetDataBAST;
  cbKodeBAST.ItemIndex := 0;

  // add items cbSKPD
  try
    qSKPD.ParamByName('IdSKPD').AsString := UniMainModule.UserKodeSKPD.ToString;
    qSKPD.Open;
    qSKPD.First;
    cbSKPD.Items.Clear;

    while not qSKPD.Eof do
    begin
      cbSKPD.Items.Add(qSKPDNama_Subunit.AsString);
      qSKPD.Next;
    end;
  finally
    cbSKPD.ItemIndex := 0;
    PKode_SubUnit := qSKPDKode_Subunit.AsString;
  end;

  // add items cbBidang
  try
    qUnitkerja.ParamByName('kode_subunit').Value := PKode_SubUnit;
    qUnitkerja.Open;
    qUnitkerja.First;
    cbBidang.Items.Clear;

    while not qUnitkerja.Eof do
    begin
      cbBidang.Items.Add(qUnitkerjaBidang.AsString);
      qUnitkerja.Next;
    end;
  finally
    cbBidang.ItemIndex := 0;
    PKode_Bidang := qUnitkerjaBidang.AsString;
  end;

  // add items cbKodeProgram
  try
    qProgramKegiatan.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qProgramKegiatan.ParamByName('kode_subunit').Value := PKode_SubUnit;
    qProgramKegiatan.Open;
    qProgramKegiatan.First;
    cbProgram.Items.Clear;

    while not qProgramKegiatan.Eof do
    begin
      cbProgram.Items.Add(qProgramKegiatanGap_Kegiatan.AsString);
      qProgramKegiatan.Next;
    end;
  finally
    cbProgram.ItemIndex := 0;
  end;

  qSKPD.Close;
  qUnitkerja.Close;
  qProgramKegiatan.Close;

  // open data ssh
  qSSH.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
  qSSH.Open;

  // open data Pembelian
  qPembelian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
  qPembelian.ParamByName('kode_skpd').Value := UniMainModule.UserKodeSKPD;
  qPembelian.ParamByName('kode_bast').Value := cbKodeBAST.Text;
  qPembelian.Open;

  dtTanggal.SetFocus;
end;

initialization
  RegisterClass(TfrmPersediaanPembelian);

end.
