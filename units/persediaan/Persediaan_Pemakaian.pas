unit Persediaan_Pemakaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniEdit, uniPanel, uniMemo,
  uniMultiItem, uniComboBox, uniDateTimePicker, uniGroupBox, uniBasicGrid,
  uniDBGrid, uniDBNavigator, uniGUIBaseClasses, uniLabel, uniWidgets, uniButton,
  uniBitBtn, uniDBComboBox;

type
  TfrmPersediaanPemakaian = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel3: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    dtTanggal: TUniDateTimePicker;
    cbProgram: TUniComboBox;
    umKeterangan: TUniMemo;
    cbBidang: TUniComboBox;
    cbSKPD: TUniComboBox;
    qPemakaian: TFDQuery;
    dsPemakaian: TDataSource;
    qUnitkerja: TFDQuery;
    qSKPD: TFDQuery;
    edPemohon: TUniEdit;
    upPemakaian: TUniPanel;
    udbgPemakaian: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    uicbProgram: TUniComboBox;
    qPemakaianid: TFDAutoIncField;
    qPemakaiantanggal: TDateField;
    qPemakaianpemohon: TStringField;
    qPemakaiankode_unitkerja: TIntegerField;
    qPemakaiankode_ssh: TStringField;
    qPemakaianqty: TIntegerField;
    qPemakaianharga_satuan: TCurrencyField;
    qPemakaianprogram_kegiatan: TStringField;
    qPemakaianketerangan: TStringField;
    qPemakaianpersetujuan: TBooleanField;
    qPemakaiancreated_at: TSQLTimeStampField;
    qPemakaiancreated_user: TIntegerField;
    qPemakaiandeleted: TBooleanField;
    qPemakaiannama_barang: TStringField;
    qPemakaiantersedia: TIntegerField;
    qUnitkerjaid: TFDAutoIncField;
    qUnitkerjakode: TStringField;
    qUnitkerjabidang: TStringField;
    uicbNamaBarang: TUniComboBox;
    uieQty: TUniNumberEdit;
    ubwPilih: TUniButtonWidget;
    qPemakaiansatuan: TStringField;
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
    cbKodeBAST: TUniComboBox;
    ubStatusPagu: TUniBitBtn;
    UniPanel2: TUniPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    qBASTPengeluaran: TFDQuery;
    qBASTPengeluarannew_bast: TStringField;
    qPemakaiankode_bast: TStringField;
    qPemakaianbidang: TStringField;
    qSKPDId: TFDAutoIncField;
    qSKPDKode_Subunit: TStringField;
    qSKPDNama_Subunit: TStringField;
    qProgramKegiatan: TFDQuery;
    qProgramKegiatanTahun: TSmallintField;
    qProgramKegiatankd_prog: TSmallintField;
    qProgramKegiatanid_prog: TSmallintField;
    qProgramKegiatankd_keg: TSmallintField;
    qProgramKegiatankd_sumber: TByteField;
    qProgramKegiatanket_kegiatan: TStringField;
    qProgramKegiatangap_kegiatan: TStringField;
    qProgramKegiatanpagu_anggaran: TWideStringField;
    qProgramKegiatankelompok_sasaran: TStringField;
    qProgramKegiatanwaktu_pelaksanaan: TStringField;
    qProgramKegiatankode_subunit: TStringField;
    qPemakaiantotal: TCurrencyField;
    upTombol: TUniPanel;
    dbnSSH: TUniDBNavigator;
    ubtCetakBA: TUniBitBtn;
    qPemakaiansumber: TStringField;
    qPemakaiankode_skpd: TIntegerField;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure udbGridColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure udbGridColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure qPemakaianCalcFields(DataSet: TDataSet);
    procedure qPemakaianBeforePost(DataSet: TDataSet);
    procedure qPemakaianAfterDelete(DataSet: TDataSet);
    procedure qPemakaianAfterPost(DataSet: TDataSet);
    procedure qPemakaianAfterCancel(DataSet: TDataSet);
    procedure uicbProgramChange(Sender: TObject);
    procedure ubwPilihClick(Sender: TObject);
    procedure cbKodeBASTChange(Sender: TObject);
    procedure cbProgramChange(Sender: TObject);
    procedure qPemakaianBeforeEdit(DataSet: TDataSet);
    procedure udbgPemakaianColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
    procedure udbgPemakaianColumnSummaryTotal(Column: TUniDBGridColumn;
      Attribs: TUniCellAttribs; var Result: string);
    procedure ubtCetakBAClick(Sender: TObject);
    procedure qPemakaianBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure PilihPemakaian(Sender: TComponent; AResult:Integer);
    procedure GetDataBAST;
  var
    PInsertStat : boolean;
    PKode_UnitKerja: Integer;
    PKode_SubUnit: String;
    PKode_Bidang: String;
  public
    { Public declarations }
  end;

function frmPersediaanPemakaian: TfrmPersediaanPemakaian;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Persediaan_PilihPemakaian;

function frmPersediaanPemakaian: TfrmPersediaanPemakaian;
begin
  Result := TfrmPersediaanPemakaian
    (UniMainModule.GetFormInstance(TfrmPersediaanPemakaian));
end;


procedure TfrmPersediaanPemakaian.cbKodeBASTChange(Sender: TObject);
begin
  if cbKOdeBAST.Text = 'BARU' then
  begin
    // GET DATA BAST
    qPemakaian.Close;
    qPemakaian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qPemakaian.ParamByName('kode_bast').Value := 'BARU';
    qPemakaian.Open;
    dtTanggal.Enabled := true;
    edPemohon.Enabled := true;
    cbBidang.Enabled := true;
    cbProgram.Enabled := true;
    umKeterangan.Enabled := true;
    dtTanggal.DateTime := now();
    umKeterangan.Text := '-';
    udbgPemakaian.Grouping.Enabled := false;
    ubStatusPagu.Caption := 'Status Pagu';

  end else
  if cbKOdeBAST.Text = 'SEMUA' then
  begin
    // GET DATA BAST
    qPemakaian.Close;
    qPemakaian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qPemakaian.ParamByName('kode_bast').Value := '%%';
    qPemakaian.Open;
    dtTanggal.Enabled := false;
    edPemohon.Enabled := false;
    cbBidang.Enabled := false;
    cbProgram.Enabled := false;
    umKeterangan.Enabled := false;
    dtTanggal.DateTime := qPemakaiantanggal.Value;
    cbBidang.Text := qPemakaianbidang.Value;
    cbProgram.Text := qPemakaianprogram_kegiatan.Value;
    edPemohon.Text := qPemakaianpemohon.Value;
    umKeterangan.Text := qPemakaianketerangan.Value;
    udbgPemakaian.Grouping.Enabled := true;
    ubStatusPagu.Caption := 'Status Pagu';
  end else
  begin
    // GET DATA BAST
    qPemakaian.Close;
    qPemakaian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
    qPemakaian.ParamByName('kode_bast').Value := cbKodeBAST.Text;
    qPemakaian.Open;
    dtTanggal.Enabled := true;
    edPemohon.Enabled := true;
    cbBidang.Enabled := true;
    cbProgram.Enabled := true;
    umKeterangan.Enabled := true;
    dtTanggal.DateTime := qPemakaiantanggal.Value;
    cbBidang.Text := qPemakaianbidang.Value;
    cbProgram.Text := qPemakaianprogram_kegiatan.Value;
    edPemohon.Text := qPemakaianpemohon.Value;
    umKeterangan.Text := qPemakaianketerangan.Value;
    udbgPemakaian.Grouping.Enabled := false;
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
end;

procedure TfrmPersediaanPemakaian.cbProgramChange(Sender: TObject);
begin
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

procedure TfrmPersediaanPemakaian.GetDataBAST;
var
  SQL : String;
  Q : TFDQuery;
begin
  // add items KodeBast
  SQL := 'SELECT DISTINCT kode_bast FROM db_persediaan.dbo.data_pemakaian ' +
         'WHERE DATEPART(YEAR,tanggal) =' + IntToStr(UniMainModule.TahunPersediaan);
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

procedure TfrmPersediaanPemakaian.PilihPemakaian(Sender: TComponent;
  AResult: Integer);
begin
  if (AResult = 1) AND (ufrmPersediaanPilihPemakaian.qPilihPemakaiantersedia.value > 0) then
  begin
    qPemakaiankode_ssh.value := ufrmPersediaanPilihPemakaian.qPilihPemakaiankode_ssh.value;
    qPemakaiannama_barang.value := ufrmPersediaanPilihPemakaian.qPilihPemakaiannama.value;
    qPemakaianprogram_kegiatan.value := ufrmPersediaanPilihPemakaian.qPilihPemakaianprogram_kegiatan.value;
    qPemakaianharga_satuan.value := ufrmPersediaanPilihPemakaian.qPilihPemakaianharga_satuan.value;
    qPemakaiantersedia.value := ufrmPersediaanPilihPemakaian.qPilihPemakaiantersedia.value;
    qPemakaiansumber.value := ufrmPersediaanPilihPemakaian.qPilihPemakaiansumber.value;
    udbgPemakaian.RowEditor := true;
    //udbgPemakaian.SetFocus;
    //udbgPemakaian.SelectedRows[6];

  end else if AResult = 2 then
  begin
    Showmessage((Sender as TuniForm).Name+', Pilih barang dibatalkan ...');
  end;
end;

procedure TfrmPersediaanPemakaian.qPemakaianAfterCancel(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Pengeluaran', 1);
end;

procedure TfrmPersediaanPemakaian.qPemakaianAfterDelete(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Pengeluaran ('+qPemakaiankode_bast.Value+')',2);
end;

procedure TfrmPersediaanPemakaian.qPemakaianAfterPost(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Pengeluaran ('+qPemakaiankode_bast.Value+')',0);
end;

procedure TfrmPersediaanPemakaian.qPemakaianBeforeEdit(DataSet: TDataSet);
begin
  PInsertStat := false;
  //if not (qPemakaian.State in [dsEdit]) then qPemakaian.Edit;

end;

procedure TfrmPersediaanPemakaian.qPemakaianBeforeInsert(DataSet: TDataSet);
begin
  if (dtTanggal.DateTime <= strtodate('31/12/'+IntToStr(UniMainModule.TahunPersediaan))) and
     (edPemohon.Text <> '') then
  begin
    PInsertStat := true;
    qPemakaian.Last;
  end else
  begin
    qPemakaian.Cancel;
    edPemohon.SetFocus;
    ShowMessage('Nama Pemohon wajib diisi...');
  end;
end;

procedure TfrmPersediaanPemakaian.qPemakaianBeforePost(DataSet: TDataSet);
begin
  qPemakaiantanggal.Value := dtTanggal.DateTime;

  // get Id UnitKerja
  try
    qUnitkerja.ParamByName('kode_subunit').Value := PKode_SubUnit;
    qUnitkerja.ParamByName('bidang').Value := cbBidang.Text;
    qUnitkerja.Open;
  finally
    qUnitkerja.First;
    qPemakaiankode_unitkerja.Value := qUnitkerjaid.Value;
    qPemakaianprogram_kegiatan.AsString := cbProgram.Text;
    qPemakaiancreated_user.Value := UniMainModule.UserKodeSKPD;
    qPemakaianketerangan.AsString := umKeterangan.Text;
    qPemakaianpemohon.Value := edPemohon.Text;
    qPemakaianpersetujuan.Value := true;
    qPemakaiancreated_user.Value := UniMainModule.UserId;
    qPemakaiankode_skpd.Value := UniMainModule.UserKodeSKPD;

    if cbKodeBAST.Text = 'BARU' then
    // Get KodeBAST Penerimaan
      try
        if qBASTPengeluaran.Active = true then qBASTPengeluaran.Close;
        qBASTPengeluaran.ParamByName('skpd').Value := UniMainModule.qProfileKeterangan.Value;
        qBASTPengeluaran.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
        qBASTPengeluaran.Open;
      finally
        qPemakaiankode_bast.Value := qBASTPengeluarannew_bast.Value;
        cbKodeBAST.Items.Add(qBASTPengeluarannew_bast.Value);
        cbKodeBAST.Text := qBASTPengeluarannew_bast.Value;
      end
    else
    if cbKodeBAST.Text <> 'SEMUA' then
      qPemakaiankode_bast.Value := cbKodeBAST.Text;

    qUnitkerja.Close;
  end;

end;

procedure TfrmPersediaanPemakaian.qPemakaianCalcFields(DataSet: TDataSet);
begin
  if qPemakaiantersedia.Value >= 0 then
  try
    if qPemakaiantersedia.Value = 0 then
      qPemakaiantotal.Value := 0.0;
    if qPemakaiantersedia.Value > 0 then
      //qPemakaiantotal.Value := (qPemakaiantersedia.Value - qPemakaianqty.Value);
      qPemakaiantotal.Value := (qPemakaianQty.Value * qPemakaianHarga_Satuan.Value);
  finally
    if qPemakaianTotal.Value < 0 then
      Showmessage('Sisa Persediaan Tidak Mencukupi');
  end;

end;

procedure TfrmPersediaanPemakaian.udbgPemakaianColumnSort(
  Column: TUniDBGridColumn; Direction: Boolean);
begin
  if SameText(Column.FieldName, 'nama_barang') then
  begin
    qPemakaian.IndexName:='id';
  end;
end;

procedure TfrmPersediaanPemakaian.udbGridColumnSummaryResult
  (Column: TUniDBGridColumn; GroupFieldValue: Variant; Attribs: TUniCellAttribs;
  var Result: string);
var
  I: Integer;
  F: Real;
begin
//  if SameText(Column.FieldName, 'tersedia') then
//  begin
//    Result := 'Total Pemakaian';
//    Attribs.Font.Style := [fsBold];
//    Attribs.Font.Color := clGreen;
//  end
//  else if SameText(Column.FieldName, 'qty') then
//  begin
//    if not Column.AuxValue = NULL then
//    begin
//      I := Column.AuxValue;
//      Result := Format('%d', [I]);
//    end else Result := '0';
//    Attribs.Font.Style := [fsBold];
//    Attribs.Font.Color := clGreen;
//  end;
//  Column.AuxValue := NULL;

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

procedure TfrmPersediaanPemakaian.udbgPemakaianColumnSummaryTotal(
  Column: TUniDBGridColumn; Attribs: TUniCellAttribs; var Result: string);
var
  I : Integer;
  F : Real;
begin
  // Hitung Grand Total
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

procedure TfrmPersediaanPemakaian.udbGridColumnSummary(Column: TUniDBGridColumn;
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

procedure TfrmPersediaanPemakaian.uicbProgramChange(Sender: TObject);
begin
//  if qPemakaian.State in dsEditModes then
//  begin
//    try
//      qCekBarang.Close;
//      qCekBarang.ParamByName('kode_unit').Value := PKode_SubUnit;
//      qCekBarang.ParamByName('program_kegiatan').Value := qPemakaianprogram_kegiatan.Value;
//    finally
//      qCekBarang.Open;
//    end;
//  end;

end;

procedure TfrmPersediaanPemakaian.ubwPilihClick(Sender: TObject);
begin
  with ufrmPersediaanPilihPemakaian do
  begin
    if not (qPemakaian.State in [dsEdit, dsInsert]) then qPemakaian.Edit;
    ufrmPersediaanPilihPemakaian.qPilihPemakaian.ParamByName('kode_unit').Value := PKode_SubUnit;
    ufrmPersediaanPilihPemakaian.qPilihPemakaian.ParamByName('bidang').Value := cbBidang.Text;
    ShowModal(PilihPemakaian);
  end;

end;

procedure TfrmPersediaanPemakaian.ubtCetakBAClick(Sender: TObject);
var
  kd_bast : String;
begin
  if SameText(cbKodeBAST.Text, 'SEMUA') then kd_bast := '%%' else kd_bast := cbKodeBAST.Text;

  // Open Cetak BAST
  UniSession.AddJS('window.open('+'''https://laporan:Bpkad123@bpkad.hulusungaitengahkab.go.id:446/'+
                   'ReportServer/Pages/ReportViewer.aspx?%2fReports_Persediaan%2fBAST_Pengeluaran&rc:Parameters=Collapsed'+
                   '&tahun='+IntToStr(UniMainModule.TahunPersediaan)+
                   '&kode_bast='+kd_bast+
                   ''', ''_blank'', ''toolbar=no,location=no,status=yes,menubar=no,directories=no,scrollbars=yes,resizable=yes,width=1150,height=650'');'); // to open a new window/tab﻿

end;

procedure TfrmPersediaanPemakaian.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //qCekBarang.Close;
  qBASTPengeluaran.Close;
  qPemakaian.Close;
  qSSH.Close;
end;

procedure TfrmPersediaanPemakaian.UniFormShow(Sender: TObject);
begin
  Caption := Caption + ' - TAHUN (' + IntToStr(UniMainModule.TahunPersediaan) + ')';
  dtTanggal.DateTime := Now();
  dtTanggal.MaxDate := strtodate('31/12/'+IntToStr(UniMainModule.TahunPersediaan));

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
      cbSKPD.Items.Add(qSKPDNama_Subunit.Value);
      qSKPD.Next;
    end;
  finally
    cbSKPD.ItemIndex := 0;
    PKode_SubUnit := qSKPDKode_Subunit.Value;
  end;

  // add items cbBidang
  try
    qUnitkerja.ParamByName('kode_subunit').Value := PKode_SubUnit;
    qUnitkerja.Open;
    qUnitkerja.First;
    cbBidang.Items.Clear;

    while not qUnitkerja.Eof do
    begin
      cbBidang.Items.Add(qUnitkerjabidang.Value);
      qUnitkerja.Next;
    end;
  finally
    cbBidang.ItemIndex := 0;
    PKode_Bidang := qUnitkerjabidang.Value;
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

  // add items program kegiatan dari pembelian
//  try
//    qProgram.ParamByName('kode_unit').Value := PKode_SubUnit;
//    qProgram.Open;
//
//    while not qProgram.Eof do
//    begin
//      uicbProgram.Items.Add(qProgramprogram_kegiatan.Value);
//      qProgram.Next;
//    end;
//  finally
//    qProgram.Close;
//  end;
//
//  // open data Cek Barang
//  try
//    qCekBarang.Close;
//    qCekBarang.ParamByName('kode_unit').Value := PKode_SubUnit;
//    qCekBarang.ParamByName('program_kegiatan').Value := cbProgram.Text;
//  finally
//    qCekBarang.Open;
//  end;

  qSKPD.Close;
  qUnitkerja.Close;
  qProgramKegiatan.Close;

  // open data ssh
  qSSH.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
  qSSH.Open;

  // open data Pembelian
  qPemakaian.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
  qPemakaian.ParamByName('kode_skpd').Value := UniMainModule.UserKodeSKPD;
  qPemakaian.ParamByName('kode_bast').Value := cbKodeBAST.Text;
  qPemakaian.Open;


  qBASTPengeluaran.Open;
  dtTanggal.SetFocus;
end;

initialization

RegisterClass(TfrmPersediaanPemakaian);

end.
