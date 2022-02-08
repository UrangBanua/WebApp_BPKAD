unit Persediaan_PilihPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniBasicGrid, uniDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniPanel, uniEdit;

type
  TufrmPersediaanPilihPembelian = class(TUniForm)
    UniPanel1: TUniPanel;
    dsPilihPembelian: TDataSource;
    dbgSSH: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    feKelompok: TUniEdit;
    feKode: TUniEdit;
    feBarang: TUniEdit;
    feSatuan: TUniEdit;
    feSpek: TUniEdit;
    qPilihPembelian: TFDQuery;
    qPilihPembeliankode: TStringField;
    qPilihPembeliannama: TStringField;
    qPilihPembeliansatuan: TStringField;
    qPilihPembelianspek: TStringField;
    qPilihPembelianket_teks: TMemoField;
    qPilihPembeliankelompok: TByteField;
    qPilihPembelianharga: TCurrencyField;
    qPilihPembeliankode_kel: TStringField;
    qPilihPembeliannama_kel: TStringField;
    qPilihPembelianupdate_at: TSQLTimeStampField;
    qPilihPembelianupdated_user: TIntegerField;
    procedure UniFormShow(Sender: TObject);
    procedure dbgSSHClearFilters(Sender: TObject);
    procedure dbgSSHColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure dbgSSHBodyDblClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ufrmPersediaanPilihPembelian: TufrmPersediaanPilihPembelian;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function ufrmPersediaanPilihPembelian: TufrmPersediaanPilihPembelian;
begin
  Result := TufrmPersediaanPilihPembelian(UniMainModule.GetFormInstance(TufrmPersediaanPilihPembelian));
end;

procedure TufrmPersediaanPilihPembelian.dbgSSHBodyDblClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TufrmPersediaanPilihPembelian.dbgSSHClearFilters(Sender: TObject);
var
  I : Integer;
begin
  if qPilihPembelian.Active then
  begin
    //qPilihPemakaian.Params[0].Value := UniMainModule.TahunPersediaan;
    for I := 1 to qPilihPembelian.ParamCount - 1 do
      qPilihPembelian.Params[I].Value := '%%';
    qPilihPembelian.Prepare;
    qPilihPembelian.Open;
  end;

end;
procedure TufrmPersediaanPilihPembelian.dbgSSHColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
  if qPilihPembelian.Active then
  begin
    qPilihPembelian.Close;
    qPilihPembelian.Params.ParamByName(Column.FieldName).Value := '%' + Value + '%';
    qPilihPembelian.Open;
  end;
end;

procedure TufrmPersediaanPilihPembelian.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //ModalResult := mrCancel;
end;

procedure TufrmPersediaanPilihPembelian.UniFormShow(Sender: TObject);
var
  I : Integer;
begin
  Caption := Caption + ' - TAHUN (' + IntToStr(UniMainModule.TahunPersediaan) + ')';

  qPilihPembelian.Close;
  if not qPilihPembelian.Active then
  begin
    qPilihPembelian.Params[0].Value := UniMainModule.TahunPersediaan;
//    for I := 1 to qPilihPembelian.ParamCount - 1 do
//      qPilihPembelian.Params[I].Value := '%%';
//    qPilihPembelian.Prepare;
    qPilihPembelian.Open;
  end;
end;

initialization
  RegisterClass(TufrmPersediaanPilihPembelian);

end.
