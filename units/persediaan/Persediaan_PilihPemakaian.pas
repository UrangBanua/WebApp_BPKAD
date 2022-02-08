unit Persediaan_PilihPemakaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniPanel, uniEdit, uniButton, uniBitBtn;

type
  TufrmPersediaanPilihPemakaian = class(TUniForm)
    qPilihPemakaian: TFDQuery;
    dsPilihPemakaian: TDataSource;
    qPilihPemakaiantahun: TIntegerField;
    qPilihPemakaiankode_unit: TStringField;
    qPilihPemakaianbidang: TStringField;
    qPilihPemakaianprogram_kegiatan: TStringField;
    qPilihPemakaiankode_ssh: TStringField;
    qPilihPemakaiannama: TStringField;
    qPilihPemakaiansatuan: TStringField;
    qPilihPemakaianspek: TStringField;
    qPilihPemakaiansumber: TStringField;
    qPilihPemakaiantersedia: TIntegerField;
    qPilihPemakaianharga_satuan: TCurrencyField;
    UniPanel1: TUniPanel;
    udbgPilihPemakaian: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    feKelompok: TUniEdit;
    feKode: TUniEdit;
    feBarang: TUniEdit;
    feSatuan: TUniEdit;
    feSpek: TUniEdit;
    feSumber: TUniEdit;
    feProgram: TUniEdit;
    feBidang: TUniEdit;
    btRefresh: TUniBitBtn;
    procedure udbgPilihPemakaianColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure udbgPilihPemakaianClearFilters(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure udbgPilihPemakaianBodyDblClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure udbgPilihPemakaianDrawColumnCell(Sender: TObject; ACol,
      ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure btRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ufrmPersediaanPilihPemakaian: TufrmPersediaanPilihPemakaian;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function ufrmPersediaanPilihPemakaian: TufrmPersediaanPilihPemakaian;
begin
  Result := TufrmPersediaanPilihPemakaian(UniMainModule.GetFormInstance(TufrmPersediaanPilihPemakaian));
end;

procedure TufrmPersediaanPilihPemakaian.btRefreshClick(Sender: TObject);
begin
    qPilihPemakaian.Refresh;
end;

procedure TufrmPersediaanPilihPemakaian.udbgPilihPemakaianBodyDblClick(
  Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TufrmPersediaanPilihPemakaian.udbgPilihPemakaianClearFilters(
  Sender: TObject);
var
  I : Integer;
begin
  if qPilihPemakaian.Active then
  begin
    //qPilihPemakaian.Params[0].Value := UniMainModule.TahunPersediaan;
    for I := 3 to qPilihPemakaian.ParamCount - 1 do
      qPilihPemakaian.Params[I].Value := '%%';
    qPilihPemakaian.Prepare;
    qPilihPemakaian.Open;
  end;

end;

procedure TufrmPersediaanPilihPemakaian.udbgPilihPemakaianColumnFilter(
  Sender: TUniDBGrid; const Column: TUniDBGridColumn; const Value: Variant);
begin
  if qPilihPemakaian.Active then
  begin
    qPilihPemakaian.Close;
    qPilihPemakaian.Params.ParamByName(Column.FieldName).Value := '%' + Value + '%';
    qPilihPemakaian.Open;
  end;

end;

procedure TufrmPersediaanPilihPemakaian.udbgPilihPemakaianDrawColumnCell(
  Sender: TObject; ACol, ARow: Integer; Column: TUniDBGridColumn;
  Attribs: TUniCellAttribs);
begin
  if Column.FieldName = 'tersedia' then
  if Column.Field.Value < 0 then
  begin
      Attribs.Color := $DFDFFF;
      Attribs.Font.Style := [fsItalic, fsBold];
  end
    else
      Attribs.Color := $DFFFFF;
end;

procedure TufrmPersediaanPilihPemakaian.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  ModalResult := mrCancel;
end;

procedure TufrmPersediaanPilihPemakaian.UniFormShow(Sender: TObject);
var
  I : Integer;
begin
  Caption := Caption + ' - TAHUN (' + IntToStr(UniMainModule.TahunPersediaan) + ')';

  qPilihPemakaian.Close;
  if not qPilihPemakaian.Active then
  begin
    qPilihPemakaian.Params[0].Value := UniMainModule.TahunPersediaan;
    //for I := 1 to qPilihPemakaian.ParamCount - 1 do
    //  qPilihPemakaian.Params[I].Value := '%%';
    //qPilihPemakaian.Prepare;
    qPilihPemakaian.Open;
    qPilihPemakaian.RefreshRecord(true);
  end;
end;

initialization
  RegisterClass(TufrmPersediaanPilihPemakaian);

end.
