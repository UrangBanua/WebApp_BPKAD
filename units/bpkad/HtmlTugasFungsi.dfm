object frmHtmlTugasFungsi: TfrmHtmlTugasFungsi
  Left = 0
  Top = 0
  Width = 903
  Height = 642
  Hint = 'Tugas dan Fungsi'
  OnBeforeReady = UniFrameBeforeReady
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 642
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    object upModif: TUniPanel
      Left = 1
      Top = 1
      Width = 901
      Height = 32
      Hint = ''
      Align = alTop
      TabOrder = 1
      Caption = 'Panel Edit'
      object ubtModif: TUniBitBtn
        Left = 1
        Top = 1
        Width = 75
        Height = 30
        Hint = ''
        Caption = 'Edit'
        Align = alLeft
        TabOrder = 1
        OnClick = ubtModifClick
      end
      object ubtSave: TUniBitBtn
        Left = 825
        Top = 1
        Width = 75
        Height = 30
        Hint = ''
        Enabled = False
        Caption = 'Save'
        Align = alRight
        TabOrder = 2
        OnClick = ubtSaveClick
      end
    end
    object uhtmlData: TUniDBHTMLMemo
      Left = 1
      Top = 33
      Width = 901
      Height = 608
      Hint = ''
      DataField = 'Contents'
      DataSource = dsHtmlData
      Align = alClient
      TabOrder = 2
      Color = clWindow
    end
  end
  object qHtmlData: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM webapp_BPKAD.dbo.tbl_HTML')
    Left = 96
    Top = 112
    object qHtmlDataId: TIntegerField
      FieldName = 'Id'
    end
    object qHtmlDataEditor: TIntegerField
      FieldName = 'Editor'
    end
    object qHtmlDataCategory: TStringField
      FieldName = 'Category'
      Origin = 'Category'
      Required = True
      Size = 50
    end
    object qHtmlDataObject: TStringField
      FieldName = 'Object'
      Origin = 'Object'
      Size = 50
    end
    object qHtmlDataTimeUpdate: TSQLTimeStampField
      FieldName = 'TimeUpdate'
      Origin = 'TimeUpdate'
      Required = True
    end
    object qHtmlDataContents: TWideMemoField
      FieldName = 'Contents'
      Origin = 'Contents'
      Required = True
      BlobType = ftWideMemo
      Size = 2147483647
    end
  end
  object dsHtmlData: TDataSource
    AutoEdit = False
    DataSet = qHtmlData
    Left = 384
    Top = 296
  end
  object UniFSConfirm: TUniFSConfirm
    Theme = modern
    TypeColor = blue
    TypeAnimated = False
    Draggable = False
    EscapeKey = False
    CloseIcon = False
    Icon = 'fa fa-smile-o'
    RTL = False
    boxWidth = '420px'
    ButtonTextConfirm = 'Confirm'
    ButtonTextCancel = 'Cancel'
    ScreenMask.Enabled = True
    ScreenMask.Text = 'Processing'
    PromptType.TypePrompt = text
    PromptType.RequiredField = False
    PromptType.TextRequiredField = 'Field riquired'
    Left = 301
    Top = 48
  end
end
