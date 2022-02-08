object FrmInvoices: TFrmInvoices
  Left = 0
  Top = 0
  Width = 819
  Height = 623
  Hint = 'Invoices'
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 819
    Height = 33
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Caption = ''
    object UniDBNavigator1: TUniDBNavigator
      Left = 1
      Top = 1
      Width = 241
      Height = 31
      Hint = ''
      DataSource = UniMainModule.SrcInvoices
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      BeforeAction = UniDBNavigator1BeforeAction
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 819
    Height = 288
    Hint = ''
    DataSource = UniMainModule.SrcInvoices
    ReadOnly = True
    Grouping.FieldName = 'Company'
    Grouping.Enabled = True
    LoadMask.Message = 'Loading data...'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Summary.Enabled = True
    OnCellClick = UniDBGrid1CellClick
    OnColumnSort = UniDBGrid1ColumnSort
    OnColumnSummary = UniDBGrid1ColumnSummary
    OnColumnSummaryResult = UniDBGrid1ColumnSummaryResult
    OnColumnFilter = UniDBGrid1ColumnFilter
    Columns = <
      item
        FieldName = 'Company'
        Filtering.Enabled = True
        Title.Alignment = taCenter
        Title.Caption = 'Company'
        Width = 325
        Sortable = True
      end
      item
        FieldName = 'InvoiceDate'
        Filtering.Enabled = True
        Title.Alignment = taCenter
        Title.Caption = 'InvoiceDate'
        Width = 169
        Sortable = True
      end
      item
        FieldName = 'Total'
        Filtering.Enabled = True
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 167
        Sortable = True
        ShowSummary = True
      end>
  end
  object UniDBGrid2: TUniDBGrid
    Left = 0
    Top = 321
    Width = 819
    Height = 302
    Hint = ''
    DataSource = DataSource2
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Summary.Enabled = True
    OnColumnSummary = UniDBGrid2ColumnSummary
    OnColumnSummaryResult = UniDBGrid2ColumnSummaryResult
    Columns = <
      item
        FieldName = 'Product'
        Title.Alignment = taCenter
        Title.Caption = 'Product'
        Width = 274
        Sortable = True
      end
      item
        FieldName = 'quantity'
        Title.Alignment = taCenter
        Title.Caption = 'Quantity'
        Width = 185
        Sortable = True
        ShowSummary = True
      end
      item
        FieldName = 'Price'
        Title.Alignment = taCenter
        Title.Caption = 'Price'
        Width = 133
        Sortable = True
      end
      item
        FieldName = 'Total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 198
        ReadOnly = True
        Sortable = True
        ShowSummary = True
      end>
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 488
    Top = 408
    Width = 160
    Height = 136
    Hint = ''
    Visible = True
    object UniEdit1: TUniEdit
      Left = 24
      Top = 24
      Width = 121
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 1
    end
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 24
      Top = 52
      Width = 120
      Hint = ''
      DateTime = 42919.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 2
    end
    object UniNumberEdit1: TUniNumberEdit
      Left = 24
      Top = 80
      Width = 121
      Hint = ''
      TabOrder = 3
      DecimalSeparator = ','
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 328
    Top = 376
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = UniMainModule.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * from InvoiceDetails where InvoiceId=:id')
    Left = 400
    Top = 376
  end
end
