unit NewInvioce;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, unipagecontrol,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, Data.DB,
  Data.Win.ADODB, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniEdit, uniButton, uniBasicGrid, uniDBGrid, uniDBNavigator, Datasnap.DBClient;

type
  TFrmNewInvoice = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    DataSource1: TDataSource;
    AdoQuery1: TADOQuery;
    edTotal: TUniNumberEdit;
    UniButton1: TUniButton;
    UniDBGrid1: TUniDBGrid;
    DataSource2: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    UniHiddenPanel1: TUniHiddenPanel;
    UniNumberEdit2: TUniNumberEdit;
    UniNumberEdit3: TUniNumberEdit;
    ClientDataSet1: TClientDataSet;
    ADOQuery2: TADOQuery;
    procedure UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
      GroupFieldValue: Variant);
    procedure UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
      GroupFieldValue: Variant; Attribs: TUniCellAttribs; var Result: string);
    procedure ClientDataSet1BeforePost(DataSet: TDataSet);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, Invoices;



procedure TFrmNewInvoice.ClientDataSet1BeforePost(DataSet: TDataSet);
begin
  ClientDataSet1.FieldByName('total').AsFloat := ClientDataSet1.FieldByName('quantity').AsFloat*ClientDataSet1.FieldByName('price').AsFloat;
end;

procedure TFrmNewInvoice.UniButton1Click(Sender: TObject);
var
  InsertedId, i : integer;
begin
  if UniDBLookupComboBox1.ItemIndex = -1 then
    ShowMessage('Please Select Customer')
  else if ClientDataSet1.RecordCount = 0 then
    ShowMessage('Please Add At Least One Product')
  else
   begin
     with ADOQuery2 do
      begin
        sql.Clear;
        sql.Add('insert into Invoice (CustomerId, InvoiceDate, Total) values (:CustomerId, :InvoiceDate, :Total)');
        Parameters.ParamByName('CustomerId').Value:=UniDBLookupComboBox1.KeyValue;
        Parameters.ParamByName('InvoiceDate').Value:=Now;
        Parameters.ParamByName('Total').Value:=edTotal.Value;
        ExecSQL;

        SQL.Clear;
        sql.Add('Select  @@Identity as InsertedId ');
        Active:=True;
          InsertedId := FieldByName('InsertedId').AsInteger;

        sql.Clear;
        sql.Add('insert into InvoiceDetails (InvoiceId, product, quantity, price, total) values (:InvoiceId, :product, :quantity, :price, :total)');
        Parameters.ParamByName('InvoiceId').Value:=InsertedId;

        ClientDataSet1.DisableControls;
        ClientDataSet1.First;

          while Not ClientDataSet1.Eof do
           begin
             Parameters.ParamByName('product').Value := ClientDataSet1.FieldByName('product').AsString;
             Parameters.ParamByName('quantity').Value := ClientDataSet1.FieldByName('quantity').AsInteger;
             Parameters.ParamByName('price').Value := ClientDataSet1.FieldByName('price').AsFloat;
             Parameters.ParamByName('total').Value := ClientDataSet1.FieldByName('total').AsFloat;
             ExecSQL;

             ClientDataSet1.Next;
           end;

        ClientDataSet1.EnableControls;

        UniMainModule.QueryInvoices.Close;
        UniMainModule.QueryInvoices.Open;

        (Parent as TUniTabSheet).Close;
      end;
   end;
end;

procedure TFrmNewInvoice.UniDBGrid1ColumnSummary(Column: TUniDBGridColumn;
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

procedure TFrmNewInvoice.UniDBGrid1ColumnSummaryResult(Column: TUniDBGridColumn;
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

    edTotal.Value := F;
  end;
  Column.AuxValue:=NULL;
end;

procedure TFrmNewInvoice.UniFrameCreate(Sender: TObject);
begin
  ClientDataSet1.Open;
end;

initialization
  RegisterClass(TFrmNewInvoice);

end.
