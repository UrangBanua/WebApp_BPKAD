object FrmNewInvoice: TFrmNewInvoice
  Left = 0
  Top = 0
  Width = 869
  Height = 573
  Hint = 'New Invoice'
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 81
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Caption = ''
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Left = 16
      Top = 16
      Width = 353
      Hint = ''
      ListField = 'Company'
      ListSource = DataSource1
      KeyField = 'id'
      ListFieldIndex = 0
      TabOrder = 1
      Color = clWindow
      FieldLabel = 'Customer'
    end
    object edTotal: TUniNumberEdit
      Left = 392
      Top = 16
      Width = 233
      Hint = ''
      TabOrder = 2
      ReadOnly = True
      FieldLabel = 'Total'
      DecimalSeparator = ','
    end
    object UniButton1: TUniButton
      Left = 640
      Top = 13
      Width = 113
      Height = 25
      Hint = ''
      Caption = 'Save'
      TabOrder = 3
      OnClick = UniButton1Click
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 16
      Top = 53
      Width = 241
      Height = 25
      Hint = ''
      DataSource = DataSource2
      TabOrder = 4
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 81
    Width = 869
    Height = 492
    Hint = ''
    RowEditor = True
    DataSource = DataSource2
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Summary.Enabled = True
    OnColumnSummary = UniDBGrid1ColumnSummary
    OnColumnSummaryResult = UniDBGrid1ColumnSummaryResult
    Columns = <
      item
        FieldName = 'Product'
        Title.Alignment = taCenter
        Title.Caption = 'Product'
        Width = 300
        Sortable = True
      end
      item
        FieldName = 'Quantity'
        Title.Alignment = taCenter
        Title.Caption = 'Quantity'
        Width = 185
        Editor = UniNumberEdit2
        Sortable = True
        ShowSummary = True
      end
      item
        FieldName = 'Price'
        Title.Alignment = taCenter
        Title.Caption = 'Price'
        Width = 133
        Editor = UniNumberEdit3
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
    Left = 552
    Top = 192
    Width = 160
    Height = 256
    Hint = ''
    Visible = True
    object UniNumberEdit2: TUniNumberEdit
      Left = 16
      Top = 32
      Width = 121
      Hint = ''
      TabOrder = 1
      DecimalPrecision = 0
      DecimalSeparator = ','
    end
    object UniNumberEdit3: TUniNumberEdit
      Left = 16
      Top = 72
      Width = 121
      Hint = ''
      TabOrder = 2
      DecimalSeparator = ','
    end
  end
  object DataSource1: TDataSource
    DataSet = AdoQuery1
    Left = 368
    Top = 272
  end
  object AdoQuery1: TADOQuery
    Active = True
    Connection = UniMainModule.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from customer order by company')
    Left = 480
    Top = 272
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet1
    Left = 368
    Top = 328
  end
  object ClientDataSet1: TClientDataSet
    Data = {
      630000009619E0BD01000000180000000400000000000300000063000750726F
      647563740100490000000100055749445448020002003200085175616E746974
      790400010000000000055072696365080004000000000005546F74616C080004
      00000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Product'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Quantity'
        DataType = ftInteger
      end
      item
        Name = 'Price'
        DataType = ftFloat
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = ClientDataSet1BeforePost
    Left = 480
    Top = 336
  end
  object ADOQuery2: TADOQuery
    Connection = UniMainModule.ADOConnection1
    Parameters = <>
    Left = 256
    Top = 272
  end
end
