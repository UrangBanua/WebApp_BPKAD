unit Persediaan_Pengaturan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, uniDBNavigator, uniBasicGrid, uniDBGrid, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniEdit, uniDBEdit, uniImage, uniDBImage,
  uniLabel, uniDBText, uniFileUpload, uniGroupBox, uniDateTimePicker, uniButton,
  uniBitBtn, uniWidgets;

type
  TfrmPersediaanPengaturan = class(TUniForm)
    upTop: TUniPanel;
    upBottom: TUniPanel;
    upCenter: TUniPanel;
    qSSH: TFDQuery;
    dsSSH: TDataSource;
    dsSALDO: TDataSource;
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
    upSALDOTitle: TUniPanel;
    upSSHTitle: TUniPanel;
    upSSH: TUniPanel;
    dbgSSH: TUniDBGrid;
    upSALDO: TUniPanel;
    dbgSALDO: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    feKelompok: TUniEdit;
    feKode: TUniEdit;
    feBarang: TUniEdit;
    feSatuan: TUniEdit;
    feSpek: TUniEdit;
    feNamaUnit: TUniEdit;
    feNamaSSH: TUniEdit;
    qSKPD: TFDQuery;
    qUnitkerja: TFDQuery;
    udbSKPD: TUniDBGrid;
    dsSKPD: TDataSource;
    udbLogo: TUniDBImage;
    UniDBEdit1: TUniDBEdit;
    dsProfile: TDataSource;
    UniDBText1: TUniDBText;
    ufileLogo: TUniFileUploadButton;
    UniGroupBox1: TUniGroupBox;
    UniPanel1: TUniPanel;
    dbnSSH: TUniDBNavigator;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniPanel2: TUniPanel;
    dbnSALDO: TUniDBNavigator;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniPanel3: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    qUnitkerjaid: TFDAutoIncField;
    qUnitkerjakode: TStringField;
    qUnitkerjabidang: TStringField;
    qSKPDId: TFDAutoIncField;
    qSKPDKode_Subunit: TStringField;
    qSKPDNama_Subunit: TStringField;
    qUnitkerjanama_subunit: TStringField;
    qSALDO: TFDQuery;
    qSALDOid: TFDAutoIncField;
    qSALDOkode_unitkerja: TIntegerField;
    qSALDOprogram_kegiatan: TStringField;
    qSALDOkode_ssh: TStringField;
    qSALDOharga_satuan: TCurrencyField;
    qSALDOsupplier: TStringField;
    qSALDOmodified_at: TSQLTimeStampField;
    qSALDOmodified_user: TIntegerField;
    qSALDOnama_ssh: TStringField;
    qSALDOnama_bidang: TStringField;
    feTA: TUniNumberEdit;
    eTA: TUniNumberEdit;
    btProfileUpdate: TUniBitBtn;
    qSSHupdated_user: TIntegerField;
    ubwPilih: TUniButtonWidget;
    qSALDOsatuan: TStringField;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBNavigator2: TUniDBNavigator;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    qSALDOtotal: TCurrencyField;
    qSALDOtahun: TIntegerField;
    qSALDOkode_skpd: TIntegerField;
    qSSHTahun: TIntegerField;
    qSALDOqty: TFloatField;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgSSHColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure dbgSSHClearFilters(Sender: TObject);
    procedure dbgSALDOClearFilters(Sender: TObject);
    procedure dbgSALDOColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure upSSHTitleClick(Sender: TObject);
    procedure upSALDOTitleClick(Sender: TObject);
    procedure upBottomClick(Sender: TObject);
    procedure ufileLogoCompleted(Sender: TObject; AStream: TFileStream);
    procedure qSSHAfterPost(DataSet: TDataSet);
    procedure qProfileAfterPost(DataSet: TDataSet);
    procedure qSALDOAfterPost(DataSet: TDataSet);
    procedure qUnitkerjaAfterPost(DataSet: TDataSet);
    procedure qSSHAfterCancel(DataSet: TDataSet);
    procedure qSSHAfterDelete(DataSet: TDataSet);
    procedure qSALDOAfterCancel(DataSet: TDataSet);
    procedure qSALDOAfterDelete(DataSet: TDataSet);
    procedure qProfileAfterDelete(DataSet: TDataSet);
    procedure qProfileAfterCancel(DataSet: TDataSet);
    procedure qUnitkerjaAfterCancel(DataSet: TDataSet);
    procedure qUnitkerjaAfterDelete(DataSet: TDataSet);
    procedure qSALDOBeforeInsert(DataSet: TDataSet);
    procedure btProfileUpdateClick(Sender: TObject);
    procedure qSALDOBeforePost(DataSet: TDataSet);
    procedure qSSHBeforePost(DataSet: TDataSet);
    procedure ubwPilihClick(Sender: TObject);
    procedure dbgSALDOColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure dbgSALDOColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure qSALDOCalcFields(DataSet: TDataSet);
    procedure dbgSALDOColumnSummaryTotal(Column: TUniDBGridColumn;
      Attribs: TUniCellAttribs; var Result: string);
    procedure dbgSALDOColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure dbgSSHColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure qSALDOAfterInsert(DataSet: TDataSet);
    procedure dsProfileStateChange(Sender: TObject);
  private
    { Private declarations }
    procedure PilihBarang(Sender: TComponent; AResult: Integer);
    procedure PromptQty(Sender: TComponent; AResult:Integer; AText: string);
  public
    { Public declarations }
  end;

function frmPersediaanPengaturan: TfrmPersediaanPengaturan;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ServerModule, Persediaan_PilihPembelian;

function frmPersediaanPengaturan: TfrmPersediaanPengaturan;
begin
  Result := TfrmPersediaanPengaturan(UniMainModule.GetFormInstance(TfrmPersediaanPengaturan));
end;

procedure TfrmPersediaanPengaturan.PromptQty(Sender: TComponent;
  AResult: Integer; AText: string);
begin
  if AResult = mrOK then
  begin
    qSALDOqty.Value := StrToInt(AText);
  end;
end;

procedure TfrmPersediaanPengaturan.PilihBarang(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = 1 then
  begin
    //qSALDOtahun.value := UniMainModule.TahunPersediaan;
    qSALDOkode_ssh.value := ufrmPersediaanPilihPembelian.qPilihPembeliankode.value;
    qSALDOnama_ssh.value := ufrmPersediaanPilihPembelian.qPilihPembeliannama.value;
    qSALDOharga_satuan.value := ufrmPersediaanPilihPembelian.qPilihPembelianharga.value;
    //Prompt('Berapa ?', '0', mtInformation, mbOKCancel, PromptQty);

  end else if AResult = 2 then
  begin
    Showmessage((Sender as TuniForm).Name+', Pilih barang dibatalkan ...');
  end;

end;

procedure TfrmPersediaanPengaturan.ubwPilihClick(Sender: TObject);
begin
  with ufrmPersediaanPilihPembelian do
  begin
    //ufrmPersediaanPilihPembelian.qPilihPembelian.ParamByName('kode_unit').Value := qUnitkerjakode.Value;
    //ufrmPersediaanPilihPembelian.qPilihPembelian.ParamByName('bidang').Value := '%%';
    ShowModal(PilihBarang);
  end;
end;

procedure TfrmPersediaanPengaturan.btProfileUpdateClick(Sender: TObject);
begin

  with UniMainModule.qProfile do
    if State in dsEditModes then
      Post
    else ShowMessage('Profile SKPD Belum di Edit');

end;

procedure TfrmPersediaanPengaturan.dbgSALDOClearFilters(Sender: TObject);
var
  I : Integer;
begin
//  if qSALDO.Active then
//  begin
//    qSALDO.Params[0].Value := UniMainModule.TahunPersediaan;
//    for I := 1 to qSALDO.ParamCount - 1 do
//      qSALDO.Params[I].Value := '%%';
//    qSALDO.Prepare;
//    qSALDO.Open;
//  end;
end;

procedure TfrmPersediaanPengaturan.dbgSALDOColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
//  if qSALDO.Active then
//  begin
//    qSALDO.Close;
//    qSALDO.Params.ParamByName(Column.FieldName).Value := '%' + FloatToStr(Value) + '%';
//    qSALDO.Open;
//  end;
end;

procedure TfrmPersediaanPengaturan.dbgSALDOColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  if SameText(Column.FieldName, 'nama_ssh') then
  begin
    qSALDO.IndexName:='id';
  end;
end;

procedure TfrmPersediaanPengaturan.dbgSALDOColumnSummary(
  Column: TUniDBGridColumn; GroupFieldValue: Variant);
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

procedure TfrmPersediaanPengaturan.dbgSALDOColumnSummaryResult(
  Column: TUniDBGridColumn; GroupFieldValue: Variant; Attribs: TUniCellAttribs;
  var Result: string);
var
  I : Integer;
  F : Real;
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
  Column.AuxValue := NULL;
end;

procedure TfrmPersediaanPengaturan.dbgSALDOColumnSummaryTotal(
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

procedure TfrmPersediaanPengaturan.dbgSSHClearFilters(Sender: TObject);
var
  I : Integer;
begin
  if qSSH.Active then
  begin
    qSSH.Params[0].Value := UniMainModule.TahunPersediaan;
    for I := 1 to qSSH.ParamCount - 1 do
      qSSH.Params[I].Value := '%%';
    qSSH.Prepare;
    qSSH.Open;
  end;
end;

procedure TfrmPersediaanPengaturan.dbgSSHColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
  if qSSH.Active then
  begin
    qSSH.Close;
    qSSH.Params.ParamByName(Column.FieldName).Value := '%' + Value + '%';
    qSSH.Open;
  end;
end;

procedure TfrmPersediaanPengaturan.dbgSSHColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  if SameText(Column.FieldName, 'nama_kel') then
  begin
    qSSH.IndexName:='nama_kel';
  end;
end;

procedure TfrmPersediaanPengaturan.dsProfileStateChange(Sender: TObject);
begin
  if (UniMainModule.qProfile.State = dsEdit) then
  begin
    ufileLogo.Enabled := true;
    UniDBEdit1.Enabled := true;
    UniDBEdit2.Enabled := true;
    UniDBEdit3.Enabled := true;
    UniDBEdit4.Enabled := true;
    UniDBEdit5.Enabled := true;
  end else
  begin
    ufileLogo.Enabled := false;
    UniDBEdit1.Enabled := false;
    UniDBEdit2.Enabled := false;
    UniDBEdit3.Enabled := false;
    UniDBEdit4.Enabled := false;
    UniDBEdit5.Enabled := false;
  end;

end;

procedure TfrmPersediaanPengaturan.qProfileAfterDelete(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Profile SKPD',2);
end;

procedure TfrmPersediaanPengaturan.qProfileAfterCancel(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Profile SKPD',1);
end;

procedure TfrmPersediaanPengaturan.qProfileAfterPost(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Profile SKPD',0);
end;

procedure TfrmPersediaanPengaturan.qSALDOAfterDelete(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Saldo',2);
end;

procedure TfrmPersediaanPengaturan.qSALDOAfterInsert(DataSet: TDataSet);
begin
    qSALDOtahun.value := UniMainModule.TahunPersediaan;
end;

procedure TfrmPersediaanPengaturan.qSALDOAfterCancel(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Saldo',1);
end;

procedure TfrmPersediaanPengaturan.qSALDOAfterPost(DataSet: TDataSet);
begin
  dbgSALDO.Grouping.Enabled := true;
  UniMainModule.NotifSaveDB('Data Saldo',0);
end;

procedure TfrmPersediaanPengaturan.qSALDOBeforeInsert(DataSet: TDataSet);
begin
  dbgSALDO.Grouping.Enabled := false;
  qSALDO.Last;
  eTA.EmptyText := IntToStr(UniMainModule.TahunPersediaan);
  eTA.Value := UniMainModule.TahunPersediaan;
end;

procedure TfrmPersediaanPengaturan.qSALDOBeforePost(DataSet: TDataSet);
begin
  if (qSALDO.State = dsInsert) or (qSALDO.State = dsEdit) then
  begin
    qSALDOTahun.Value := UniMainModule.TahunPersediaan;
    qSALDOModified_at.AsDateTime := Now;
    qSALDOkode_skpd.Value := UniMainModule.UserKodeSKPD;
    qSALDOModified_user.Value := UniMainmodule.UserId;
  end;
end;

procedure TfrmPersediaanPengaturan.qSALDOCalcFields(DataSet: TDataSet);
begin

  qSALDOTotal.Value := (qSALDOQty.Value * qSALDOHarga_Satuan.Value);
end;

procedure TfrmPersediaanPengaturan.qUnitkerjaAfterDelete(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Bidang SKPD',2);
end;

procedure TfrmPersediaanPengaturan.qUnitkerjaAfterCancel(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Bidang SKPD',1);
end;

procedure TfrmPersediaanPengaturan.qUnitkerjaAfterPost(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data Bidang SKPD',0);
end;

procedure TfrmPersediaanPengaturan.qSSHAfterDelete(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data SSH',2);
end;

procedure TfrmPersediaanPengaturan.qSSHAfterCancel(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data SSH',1);
end;

procedure TfrmPersediaanPengaturan.qSSHAfterPost(DataSet: TDataSet);
begin
  UniMainModule.NotifSaveDB('Data SSH',0);
  qSSH.Refresh;
end;

procedure TfrmPersediaanPengaturan.qSSHBeforePost(DataSet: TDataSet);
begin
  if (qSSH.State = dsInsert) or (qSSH.State = dsEdit) then
  begin
    qSSHupdate_at.AsDateTime := Now;
    qSSHupdated_user.Value := UniMainmodule.UserId;
  end;
end;

procedure TfrmPersediaanPengaturan.ufileLogoCompleted(Sender: TObject;
  AStream: TFileStream);
var
  FEditing : Boolean;
begin
  with UniMainModule.qProfile do
    if Active then
    begin
      FEditing := State in dsEditModes;
      if not FEditing then Edit;
      try
        TBlobField(FieldByName('logo')).LoadFromStream(AStream);
        if not FEditing then Post;
      except
        Cancel;
        raise;
      end;
    end;
end;

procedure TfrmPersediaanPengaturan.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qSKPD.Close;
  qUnitkerja.Close;
  qSKPD.Close;
  qSSH.Close;
  qSALDO.Close;

end;

procedure TfrmPersediaanPengaturan.UniFormShow(Sender: TObject);
begin
  Caption := Caption + ' - TAHUN (' + IntToStr(UniMainModule.TahunPersediaan) + ')';

  qSKPD.ParamByName('id').Value := UniMainModule.UserKodeSKPD;
  qSKPD.Open;

  qSSH.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
  qSSH.Open;

  qSALDO.ParamByName('kode_skpd').Value := UniMainModule.UserKodeSKPD;
  qSALDO.ParamByName('tahun').Value := UniMainModule.TahunPersediaan;
  qSALDO.Open;

  qUnitkerja.Open;

//  UniMainModule.qProfile.ParamByName('id').Value := UniMainModule.UserKodeSKPD;
//  if not UniMainModule.qProfile.Active then
//  UniMainModule.qProfile.Open;

  ufileLogo.Overwrite;
  ufileLogo.EraseCacheAfterCompleted;
  ufileLogo.MaxFiles := 1;
  ufileLogo.MaxAllowedSize := 10485760;
end;

procedure TfrmPersediaanPengaturan.upBottomClick(Sender: TObject);
begin
  upSSH.Collapsible := not upSSH.Collapsible;
  upSSH.Collapsed := not upSSH.Collapsed;
  upSALDO.Collapsible:= not upSALDO.Collapsible;
  upSALDO.Collapsed := not upSALDO.Collapsed;
end;

procedure TfrmPersediaanPengaturan.upSALDOTitleClick(Sender: TObject);
begin
  upSALDO.Collapsible:= not upSALDO.Collapsible;
  upSALDO.Collapsed := not upSALDO.Collapsed;
end;

procedure TfrmPersediaanPengaturan.upSSHTitleClick(Sender: TObject);
begin
  upSSH.Collapsible := not upSSH.Collapsible;
  upSSH.Collapsed := not upSSH.Collapsed;
end;

initialization
  RegisterClass(TfrmPersediaanPengaturan);

end.
