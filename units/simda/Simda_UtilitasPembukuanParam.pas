unit Simda_UtilitasPembukuanParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniMultiItem, uniComboBox, uniDateTimePicker,
  uniGUIBaseClasses, uniButton, uniEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TufrmUtilitasPembukuanParam = class(TUniForm)
    btBatal: TUniButton;
    btOk: TUniButton;
    pdtAwal: TUniDateTimePicker;
    pdtAkhir: TUniDateTimePicker;
    cbJenisDok: TUniComboBox;
    edTA: TUniEdit;
    cbSKPD: TUniComboBox;
    cbSemester: TUniComboBox;
    qSKPD: TFDQuery;
    qSKPDkd_urusan: TByteField;
    qSKPDkd_bidang: TByteField;
    qSKPDkd_unit: TByteField;
    qSKPDkd_sub: TSmallintField;
    qSKPDnm_sub_unit: TStringField;
    edNomorBukti: TUniEdit;
    procedure btOkClick(Sender: TObject);
    procedure btBatalClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure cbSemesterChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ufrmUtilitasPembukuanParam: TufrmUtilitasPembukuanParam;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function ufrmUtilitasPembukuanParam: TufrmUtilitasPembukuanParam;
begin
  Result := TufrmUtilitasPembukuanParam(UniMainModule.GetFormInstance(TufrmUtilitasPembukuanParam));
end;

procedure TufrmUtilitasPembukuanParam.btBatalClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TufrmUtilitasPembukuanParam.btOkClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TufrmUtilitasPembukuanParam.cbSemesterChange(Sender: TObject);
begin
  if cbSemester.Text = 'PERIODE' then
  begin
    pdtAwal.Visible := true;
    pdtAkhir.Visible := true;
  end
  else
  begin
    pdtAwal.Visible := false;
    pdtAkhir.Visible := false;
  end;
end;

procedure TufrmUtilitasPembukuanParam.UniFormCreate(Sender: TObject);
begin
  try
    qSKPD.Open;
    qSKPD.First;
    cbSKPD.Items.Clear;
    cbSKPD.Items.Add('All SKPD');

    while not qSKPD.Eof do
    begin
      cbSKPD.Items.Add(qSKPDnm_sub_unit.Value);
      qSKPD.Next;
    end;
  finally
    cbSKPD.ItemIndex := 0;
    qSKPD.Close;
  end;
end;

procedure TufrmUtilitasPembukuanParam.UniFormShow(Sender: TObject);
begin
  edTA.Text := SysUtils.CurrentYear.ToString;

  if SysUtils.IncMonth(Now) < 6 then cbSemester.ItemIndex := 1
  else cbSemester.ItemIndex := 2;

  cbSemester.ItemIndex := 0;

  pdtAwal.DateTime := Now();
  pdtAkhir.DateTime := Now();
end;

initialization
  RegisterClass(TufrmUtilitasPembukuanParam);
end.
