unit Customers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, MainModule,
  uniGUIClasses, uniGUIFrame, uniEdit, uniDBEdit, uniGUIBaseClasses, uniPanel,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniBasicGrid,
  uniDBGrid, uniDBNavigator, uniMemo, uniDBMemo, Data.DB, Data.Win.ADODB,
  Datasnap.DBClient;

type
  TFrmCustomers = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBMemo1: TUniDBMemo;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid1: TUniDBGrid;
    AdoQuery1: TADOQuery;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSource2: TDataSource;
    UniHiddenPanel1: TUniHiddenPanel;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniEdit3: TUniEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TFrmCustomers.UniDBGrid1ColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
  ADOQuery1.Filtered := False;
   if Value <>'' then
    begin
      ADOQuery1.Filter := Column.FieldName+ ' like %'+Trim(Value)+'%';
      ADOQuery1.Filtered := True;
    end;
end;

procedure TFrmCustomers.UniFrameCreate(Sender: TObject);
begin
  AdoQuery1.Open;
end;

initialization
  RegisterClass(TFrmCustomers);

end.
