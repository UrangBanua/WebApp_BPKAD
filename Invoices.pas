unit Invoices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, DBCtrls,
  uniGUIClasses, uniGUIFrame, Data.DB, Data.Win.ADODB, uniDBNavigator,
  uniGUIBaseClasses, uniPanel, uniBasicGrid, uniDBGrid, uniEdit,
  uniDateTimePicker;

type
  TFrmInvoices = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid1: TUniDBGrid;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    UniDBGrid2: TUniDBGrid;
    UniHiddenPanel1: TUniHiddenPanel;
    UniEdit1: TUniEdit;
    UniDateTimePicker1: TUniDateTimePicker;
    UniNumberEdit1: TUniNumberEdit;
    procedure UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure UniDBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid2ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid2ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
      Direction: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;


procedure TFrmInvoices.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  with ADOQuery2 do
   begin
     close;
     Parameters.ParamByName('id').Value:=UniMainModule.QueryInvoices.FieldByName('i.id').AsInteger;
     Open;
   end;
end;

procedure TFrmInvoices.UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
  UniMainModule.QueryInvoices.Filtered := False;
   if Value <>'' then
    begin
      UniMainModule.QueryInvoices.Filter := Column.FieldName+ ' like %'+Trim(Value)+'%';
      UniMainModule.QueryInvoices.Filtered := True;
    end;
end;


procedure TFrmInvoices.UniDBGrid1ColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  if SameText(Column.FieldName, 'Company') then
  begin
    UniMainModule.QueryInvoices.sort:='Company';
  end;
end;

procedure TFrmInvoices.UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
begin
  if SameText(Column.FieldName, 'Total') then
  begin
    if Column.AuxValue=NULL then Column.AuxValue:=0;
    Column.AuxValue:=Column.AuxValue + Column.Field.AsFloat;
  end;
end;

procedure TFrmInvoices.UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
  GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'Total') then
  begin
    F:=Column.AuxValue;
    Result:='Total : '+FormatCurr('0.00 ', F) + FormatSettings.CurrencyString;
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;
  Column.AuxValue:=NULL;
end;

procedure TFrmInvoices.UniDBGrid2ColumnSummary(Column: TUniDBGridColumn;
  GroupFieldValue: Variant);
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    if Column.AuxValue = NULL then Column.AuxValue:=0;
    Column.AuxValue := Column.AuxValue + Column.Field.AsInteger;
  end
  else if SameText(Column.FieldName, 'total') then
  begin
    if Column.AuxValue = NULL then Column.AuxValue:=0.0;
    Column.AuxValue := Column.AuxValue + Column.Field.AsFloat;
  end;
end;

procedure TFrmInvoices.UniDBGrid2ColumnSummaryResult(Column: TUniDBGridColumn;
  GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
var
  I : Integer;
  F : Real;
begin
  if SameText(Column.FieldName, 'quantity') then
  begin
    I:=Column.AuxValue;
    Result:=Format('Total Units: %d', [I]);
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clGreen;
  end
  else if SameText(Column.FieldName, 'total') then
  begin
    F:=Column.AuxValue;
    Result:='Total Cost: '+FormatCurr('0.00 ', F) + FormatSettings.CurrencyString;
    Attribs.Font.Style:=[fsBold];
    Attribs.Font.Color:=clNavy;
  end;
  Column.AuxValue:=NULL;
end;

procedure TFrmInvoices.UniDBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then
   begin
      MainForm.OpenFrame('TFrmNewInvoice', 'New Invoice');
   end;
end;

procedure TFrmInvoices.UniFrameCreate(Sender: TObject);
begin
  UniMainModule.QueryInvoices.Open;
   if UniMainModule.QueryInvoices.RecordCount>0 then
     UniDBGrid1CellClick(nil);
end;

initialization
  RegisterClass(TFrmInvoices);

end.
