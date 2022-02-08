object frmPersediaanPengaturan: TfrmPersediaanPengaturan
  Left = 0
  Top = 0
  ClientHeight = 720
  ClientWidth = 1364
  Caption = 'PENGATURAN SSH & SALDO AWAL'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object upTop: TUniPanel
    Left = 0
    Top = 0
    Width = 1364
    Height = 49
    Hint = ''
    Align = alTop
    TabOrder = 0
    Caption = 'UniPanel1'
    object upSALDOTitle: TUniPanel
      Left = 713
      Top = 1
      Width = 650
      Height = 47
      Cursor = crHandPoint
      Hint = ''
      Align = alClient
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
      BorderStyle = ubsSolid
      TitleAlign = taCenter
      Caption = '[ DATA SALDO AWAL ]'
      OnClick = upSALDOTitleClick
    end
    object upSSHTitle: TUniPanel
      Left = 1
      Top = 1
      Width = 712
      Height = 47
      Cursor = crHandPoint
      Hint = ''
      Align = alLeft
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 2
      BorderStyle = ubsSolid
      TitleAlign = taCenter
      Caption = '[ DATA SSH ]'
      OnClick = upSSHTitleClick
    end
  end
  object upBottom: TUniPanel
    Left = 0
    Top = 666
    Width = 1364
    Height = 54
    Cursor = crHandPoint
    Hint = ''
    Align = alBottom
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 1
    Caption = '[ PENGATURAN SKPD ]'
    OnClick = upBottomClick
  end
  object upCenter: TUniPanel
    Left = 0
    Top = 49
    Width = 1364
    Height = 617
    Hint = ''
    Align = alClient
    TabOrder = 2
    Caption = '-'
    object upSSH: TUniPanel
      Left = 1
      Top = 1
      Width = 712
      Height = 615
      Hint = ''
      BodyRTL = False
      AutoScroll = True
      Align = alLeft
      TabOrder = 1
      Floating = True
      TitleVisible = True
      Title = '# Double Klik untuk Edit SSH #'
      Caption = 'upSSH'
      CollapseDirection = cdTop
      ScrollHeight = 668
      ScrollWidth = 752
      ScrollX = 40
      object dbgSSH: TUniDBGrid
        Left = 1
        Top = 1
        Width = 693
        Height = 543
        Hint = ''
        HeaderTitleAlign = taCenter
        TitleFont.Style = [fsBold]
        DataSource = dsSSH
        WebOptions.PageSize = 20
        WebOptions.FetchAll = True
        Grouping.FieldName = 'nama_kel'
        Grouping.FieldCaption = 'Kelompok'
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 1
        OnColumnSort = dbgSSHColumnSort
        OnClearFilters = dbgSSHClearFilters
        OnColumnFilter = dbgSSHColumnFilter
        Columns = <
          item
            FieldName = 'nama_kel'
            Filtering.Enabled = True
            Filtering.Editor = feKelompok
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Kelompok'
            Title.Font.Style = [fsBold]
            Width = 77
          end
          item
            FieldName = 'kode'
            Filtering.Enabled = True
            Filtering.Editor = feKode
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Kode'
            Title.Font.Style = [fsBold]
            Width = 154
          end
          item
            FieldName = 'nama'
            Filtering.Enabled = True
            Filtering.Editor = feBarang
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Title.Font.Style = [fsBold]
            Width = 184
          end
          item
            FieldName = 'satuan'
            Filtering.Enabled = True
            Filtering.Editor = feSatuan
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Title.Font.Style = [fsBold]
            Width = 81
          end
          item
            FieldName = 'spek'
            Filtering.Enabled = True
            Filtering.Editor = feSpek
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Spek'
            Title.Font.Style = [fsBold]
            Width = 88
          end
          item
            FieldName = 'harga'
            Title.Alignment = taCenter
            Title.Caption = 'Harga'
            Title.Font.Style = [fsBold]
            Width = 106
          end
          item
            FieldName = 'ket_teks'
            Title.Alignment = taCenter
            Title.Caption = 'Keterangan'
            Title.Font.Style = [fsBold]
            Width = 109
            Font.Color = clMaroon
            Font.Style = [fsUnderline]
            DisplayMemo = True
          end
          item
            FieldName = 'kode_kel'
            Title.Alignment = taCenter
            Title.Caption = 'kode_kel'
            Title.Font.Style = [fsBold]
            Width = 144
          end
          item
            FieldName = 'update_at'
            Title.Alignment = taCenter
            Title.Caption = 'update_at'
            Title.Font.Style = [fsBold]
            Width = 123
            ReadOnly = True
          end>
      end
      object UniPanel1: TUniPanel
        Left = 1
        Top = 544
        Width = 693
        Height = 53
        Hint = ''
        Align = alBottom
        TabOrder = 2
        Caption = ''
        object dbnSSH: TUniDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 685
          Height = 25
          Hint = ''
          DataSource = dsSSH
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          Align = alTop
          TabOrder = 1
        end
        object UniLabel1: TUniLabel
          Left = 67
          Top = 33
          Width = 46
          Height = 13
          Hint = ''
          Caption = 'Tambah'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 2
        end
        object UniLabel2: TUniLabel
          Left = 244
          Top = 33
          Width = 35
          Height = 13
          Hint = ''
          Caption = 'Hapus'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 3
        end
        object UniLabel3: TUniLabel
          Left = 412
          Top = 33
          Width = 42
          Height = 13
          Hint = ''
          Caption = 'Simpan'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 4
        end
        object UniLabel4: TUniLabel
          Left = 587
          Top = 33
          Width = 29
          Height = 13
          Hint = ''
          Caption = 'Batal'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 5
        end
      end
    end
    object upSALDO: TUniPanel
      Left = 713
      Top = 1
      Width = 650
      Height = 615
      Hint = ''
      AutoScroll = True
      Align = alRight
      TabOrder = 2
      Floating = True
      TitleVisible = True
      Title = '# Double Klik untuk Edit SALDO #'
      Caption = 'upSALDO'
      CollapseDirection = cdTop
      ScrollHeight = 668
      ScrollWidth = 682
      ScrollX = 32
      object dbgSALDO: TUniDBGrid
        Left = 1
        Top = 1
        Width = 631
        Height = 543
        Hint = ''
        HeaderTitleAlign = taCenter
        DataSource = dsSALDO
        WebOptions.Paged = False
        WebOptions.FetchAll = True
        Grouping.FieldName = 'nama_bidang'
        Grouping.FieldCaption = 'Bidang'
        Grouping.Enabled = True
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 1
        Summary.Enabled = True
        Summary.GrandTotal = True
        Summary.GrandTotalAlign = taBottom
        OnColumnSort = dbgSALDOColumnSort
        OnClearFilters = dbgSALDOClearFilters
        OnColumnSummary = dbgSALDOColumnSummary
        OnColumnSummaryResult = dbgSALDOColumnSummaryResult
        OnColumnSummaryTotal = dbgSALDOColumnSummaryTotal
        OnColumnFilter = dbgSALDOColumnFilter
        Columns = <
          item
            WidgetColumn.Enabled = True
            WidgetColumn.Widget = ubwPilih
            Title.Caption = ' '
            Width = 31
          end
          item
            FieldName = 'tahun'
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Tahun'
            Title.Font.Style = [fsBold]
            Width = 53
            ReadOnly = True
          end
          item
            FieldName = 'nama_bidang'
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Bidang'
            Title.Font.Style = [fsBold]
            Width = 102
            Sortable = True
          end
          item
            ShowToolTip = True
            FieldName = 'nama_ssh'
            Filtering.ChangeDelay = 300
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Title.Font.Style = [fsBold]
            Width = 119
            ForceStringFormat = True
            ReadOnly = True
          end
          item
            FieldName = 'satuan'
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Title.Font.Style = [fsBold]
            Width = 51
            ReadOnly = True
          end
          item
            FieldName = 'qty'
            Title.Alignment = taCenter
            Title.Caption = 'Qty'
            Title.Font.Style = [fsBold]
            Width = 34
            ShowSummary = True
          end
          item
            FieldName = 'harga_satuan'
            Title.Alignment = taCenter
            Title.Caption = 'Harga Satuan'
            Title.Font.Style = [fsBold]
            Width = 91
          end
          item
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Style = [fsBold]
            Width = 104
            ReadOnly = True
            ShowSummary = True
          end
          item
            FieldName = 'modified_user'
            Title.Alignment = taCenter
            Title.Caption = 'Modified User'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = False
            ReadOnly = True
          end>
      end
      object UniPanel2: TUniPanel
        Left = 1
        Top = 544
        Width = 631
        Height = 53
        Hint = ''
        Align = alBottom
        TabOrder = 2
        Caption = ''
        object dbnSALDO: TUniDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 623
          Height = 25
          Hint = ''
          DataSource = dsSALDO
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          Align = alTop
          TabOrder = 1
        end
        object UniLabel5: TUniLabel
          Left = 59
          Top = 33
          Width = 46
          Height = 13
          Hint = ''
          Caption = 'Tambah'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 2
        end
        object UniLabel6: TUniLabel
          Left = 220
          Top = 33
          Width = 35
          Height = 13
          Hint = ''
          Caption = 'Hapus'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 3
        end
        object UniLabel7: TUniLabel
          Left = 371
          Top = 33
          Width = 42
          Height = 13
          Hint = ''
          Caption = 'Simpan'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 4
        end
        object UniLabel8: TUniLabel
          Left = 531
          Top = 33
          Width = 29
          Height = 13
          Hint = ''
          Caption = 'Batal'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 5
        end
      end
    end
    object UniGroupBox1: TUniGroupBox
      Left = 144
      Top = 68
      Width = 1057
      Height = 453
      Hint = ''
      Caption = 'Pengaturan SKPD'
      TabOrder = 3
      object UniDBText1: TUniDBText
        Left = 15
        Top = 21
        Width = 66
        Height = 13
        Hint = ''
        DataField = 'kode_subunit'
        DataSource = dsProfile
        Alignment = taCenter
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
      end
      object UniDBEdit1: TUniDBEdit
        Left = 15
        Top = 229
        Width = 346
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'Keterangan'
        DataSource = dsProfile
        Alignment = taCenter
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 2
        FieldLabel = 'Kode SKPD'
        FieldLabelWidth = 90
        SelectOnFocus = True
      end
      object ufileLogo: TUniFileUploadButton
        Left = 113
        Top = 198
        Width = 204
        Height = 25
        Hint = ''
        Enabled = False
        Caption = 'Update Logo SKPD'
        Filter = 'image/*'
        Messages.Uploading = 'Uploading...'
        Messages.PleaseWait = 'Please Wait'
        Messages.UploadError = 'Upload Error'
        Messages.UploadTimeout = 'Timeout occurred...'
        Messages.MaxSizeError = 'File is bigger than maximum allowed size'
        Messages.MaxFilesError = 'You can upload maximum %d files.'
        OnCompleted = ufileLogoCompleted
      end
      object udbSKPD: TUniDBGrid
        Left = 395
        Top = 20
        Width = 623
        Height = 345
        Hint = ''
        HeaderTitle = 'DATA BIDANG'
        HeaderTitleAlign = taCenter
        TitleFont.Style = [fsBold]
        DataSource = dsSKPD
        LoadMask.Message = 'Loading data...'
        TabOrder = 4
        Columns = <
          item
            FieldName = 'nama_subunit'
            Title.Alignment = taCenter
            Title.Caption = 'Nama SKPD'
            Title.Font.Style = [fsBold]
            Width = 301
          end
          item
            FieldName = 'bidang'
            Title.Alignment = taCenter
            Title.Caption = 'Nama Bidang'
            Title.Font.Style = [fsBold]
            Width = 295
          end>
      end
      object udbLogo: TUniDBImage
        Left = 113
        Top = 21
        Width = 204
        Height = 171
        Hint = ''
        DataField = 'Logo'
        DataSource = dsProfile
        Stretch = True
        Proportional = True
      end
      object UniPanel3: TUniPanel
        Left = 395
        Top = 389
        Width = 622
        Height = 52
        Hint = ''
        Align = alCustom
        TabOrder = 6
        Caption = ''
        object UniDBNavigator1: TUniDBNavigator
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 614
          Height = 25
          Hint = ''
          DataSource = dsSKPD
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          Align = alTop
          TabOrder = 1
        end
        object UniLabel9: TUniLabel
          Left = 59
          Top = 35
          Width = 46
          Height = 13
          Hint = ''
          Caption = 'Tambah'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 2
        end
        object UniLabel10: TUniLabel
          Left = 220
          Top = 35
          Width = 35
          Height = 13
          Hint = ''
          Caption = 'Hapus'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 3
        end
        object UniLabel11: TUniLabel
          Left = 364
          Top = 35
          Width = 42
          Height = 13
          Hint = ''
          Caption = 'Simpan'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 4
        end
        object UniLabel12: TUniLabel
          Left = 523
          Top = 35
          Width = 29
          Height = 13
          Hint = ''
          Caption = 'Batal'
          ParentFont = False
          Font.Style = [fsBold, fsUnderline]
          TabOrder = 5
        end
      end
      object btProfileUpdate: TUniBitBtn
        Left = 15
        Top = 40
        Width = 49
        Height = 25
        Hint = ''
        Enabled = False
        Visible = False
        Caption = 'Update'
        TabOrder = 7
        OnClick = btProfileUpdateClick
      end
      object UniDBEdit2: TUniDBEdit
        Left = 15
        Top = 257
        Width = 346
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'Nama_PengurusBarang'
        DataSource = dsProfile
        Alignment = taCenter
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 8
        FieldLabel = 'Nama Pengurus Barang'
        FieldLabelWidth = 90
        SelectOnFocus = True
      end
      object UniDBEdit3: TUniDBEdit
        Left = 15
        Top = 285
        Width = 346
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'NIP_PengurusBarang'
        DataSource = dsProfile
        Alignment = taCenter
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 9
        FieldLabel = 'NIP Pengurus Barang'
        FieldLabelWidth = 90
        SelectOnFocus = True
      end
      object UniDBEdit4: TUniDBEdit
        Left = 15
        Top = 313
        Width = 346
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'Nama_Kepala_SKPD'
        DataSource = dsProfile
        Alignment = taCenter
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 10
        FieldLabel = 'Nama Kepala SKPD'
        FieldLabelWidth = 90
        SelectOnFocus = True
      end
      object UniDBEdit5: TUniDBEdit
        Left = 15
        Top = 341
        Width = 346
        Height = 22
        Hint = ''
        Enabled = False
        DataField = 'NIP_Kepala_SKPD'
        DataSource = dsProfile
        Alignment = taCenter
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 11
        FieldLabel = 'NIP Kepala SKPD'
        FieldLabelWidth = 90
        SelectOnFocus = True
      end
      object UniDBNavigator2: TUniDBNavigator
        AlignWithMargins = True
        Left = 15
        Top = 393
        Width = 346
        Height = 25
        Hint = ''
        DataSource = dsProfile
        VisibleButtons = [nbEdit, nbPost, nbCancel]
        TabOrder = 12
      end
      object UniLabel13: TUniLabel
        Left = 62
        Top = 424
        Width = 21
        Height = 13
        Hint = ''
        Caption = 'Edit'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 13
      end
      object UniLabel14: TUniLabel
        Left = 167
        Top = 424
        Width = 42
        Height = 13
        Hint = ''
        Caption = 'Simpan'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 14
      end
      object UniLabel15: TUniLabel
        Left = 288
        Top = 424
        Width = 29
        Height = 13
        Hint = ''
        Caption = 'Batal'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 15
      end
    end
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 1196
    Top = 137
    Width = 160
    Height = 345
    Hint = ''
    Visible = True
    object feKelompok: TUniEdit
      Left = 16
      Top = 16
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 1
    end
    object feKode: TUniEdit
      Left = 16
      Top = 44
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 2
    end
    object feBarang: TUniEdit
      Left = 16
      Top = 72
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 3
    end
    object feSatuan: TUniEdit
      Left = 16
      Top = 100
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 4
    end
    object feSpek: TUniEdit
      Left = 16
      Top = 128
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 5
    end
    object feNamaUnit: TUniEdit
      Left = 16
      Top = 236
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 6
    end
    object feNamaSSH: TUniEdit
      Left = 16
      Top = 264
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 7
    end
    object feTA: TUniNumberEdit
      Left = 16
      Top = 209
      Width = 121
      Hint = ''
      TabOrder = 8
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object eTA: TUniNumberEdit
      Left = 16
      Top = 181
      Width = 121
      Hint = ''
      TabOrder = 9
      ReadOnly = True
      DecimalPrecision = 0
      DecimalSeparator = '.'
    end
    object ubwPilih: TUniButtonWidget
      Left = 16
      Top = 308
      Width = 120
      Hint = ''
      Images = UniMainModule.UniImageList
      ImageIndex = 2
      OnClick = ubwPilihClick
      Caption = 'Pilih'
    end
  end
  object qSSH: TFDQuery
    BeforePost = qSSHBeforePost
    AfterPost = qSSHAfterPost
    AfterCancel = qSSHAfterCancel
    AfterDelete = qSSHAfterDelete
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM db_persediaan.dbo.data_ssh'
      'WHERE'
      'tahun =:tahun AND '
      'kode LIKE '#39'1.1.7.%'#39' AND'
      'kode LIKE :kode AND'
      'nama_kel LIKE :nama_kel  AND'
      'nama LIKE :nama AND'
      'satuan LIKE :satuan AND'
      'spek LIKE :spek')
    Left = 48
    Top = 441
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'kode'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'nama_kel'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'nama'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'satuan'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'spek'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
    object qSSHkode: TStringField
      FieldName = 'kode'
      Origin = 'kode'
      Size = 30
    end
    object qSSHnama: TStringField
      FieldName = 'nama'
      Origin = 'nama'
      Size = 100
    end
    object qSSHsatuan: TStringField
      FieldName = 'satuan'
      Origin = 'satuan'
      Size = 50
    end
    object qSSHspek: TStringField
      FieldName = 'spek'
      Origin = 'spek'
      Size = 80
    end
    object qSSHket_teks: TMemoField
      FieldName = 'ket_teks'
      Origin = 'ket_teks'
      BlobType = ftMemo
    end
    object qSSHkelompok: TByteField
      FieldName = 'kelompok'
      Origin = 'kelompok'
    end
    object qSSHharga: TCurrencyField
      FieldName = 'harga'
      Origin = 'harga'
    end
    object qSSHkode_kel: TStringField
      FieldName = 'kode_kel'
      Origin = 'kode_kel'
      Size = 30
    end
    object qSSHnama_kel: TStringField
      FieldName = 'nama_kel'
      Origin = 'nama_kel'
      Size = 40
    end
    object qSSHupdate_at: TSQLTimeStampField
      FieldName = 'update_at'
      Origin = 'update_at'
    end
    object qSSHupdated_user: TIntegerField
      FieldName = 'updated_user'
    end
  end
  object dsSSH: TDataSource
    DataSet = qSSH
    Left = 48
    Top = 505
  end
  object dsSALDO: TDataSource
    DataSet = qSALDO
    Left = 752
    Top = 449
  end
  object qSKPD: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      
        'SELECT Id, Kode_Subunit, Nama_Subunit FROM webapp_BPKAD.dbo.tbl_' +
        'SKPD'
      'WHERE Nama_Subunit NOT LIKE '#39'Puskesmas%'#39' AND '
      'Nama_Subunit NOT LIKE '#39'SDN%'#39' AND '
      'Nama_Subunit NOT LIKE '#39'SMPN%'#39' AND '
      'Nama_Subunit NOT LIKE '#39'%BLUD'#39' AND'
      'ID LIKE :Id')
    Left = 800
    Top = 381
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qSKPDId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qSKPDKode_Subunit: TStringField
      FieldName = 'Kode_Subunit'
      Origin = 'Kode_Subunit'
      Size = 30
    end
    object qSKPDNama_Subunit: TStringField
      FieldName = 'Nama_Subunit'
      Origin = 'Nama_Subunit'
      Size = 100
    end
  end
  object qUnitkerja: TFDQuery
    AfterPost = qUnitkerjaAfterPost
    AfterCancel = qUnitkerjaAfterCancel
    AfterDelete = qUnitkerjaAfterDelete
    MasterSource = dsProfile
    MasterFields = 'kode_subunit'
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM db_persediaan.dbo.data_unitkerja'
      'WHERE'
      'kode LIKE :kode_subunit')
    Left = 1016
    Top = 353
    ParamData = <
      item
        Name = 'KODE_SUBUNIT'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
    object qUnitkerjaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qUnitkerjakode: TStringField
      FieldName = 'kode'
      Origin = 'kode'
      Required = True
      Size = 30
    end
    object qUnitkerjabidang: TStringField
      FieldName = 'bidang'
      Origin = 'bidang'
      Required = True
      Size = 80
    end
    object qUnitkerjanama_subunit: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_subunit'
      LookupDataSet = qSKPD
      LookupKeyFields = 'Kode_Subunit'
      LookupResultField = 'Nama_Subunit'
      KeyFields = 'kode'
      Size = 130
      Lookup = True
    end
  end
  object dsSKPD: TDataSource
    DataSet = qUnitkerja
    Left = 1016
    Top = 449
  end
  object dsProfile: TDataSource
    DataSet = UniMainModule.qProfile
    OnStateChange = dsProfileStateChange
    Left = 400
    Top = 401
  end
  object qSALDO: TFDQuery
    BeforeInsert = qSALDOBeforeInsert
    AfterInsert = qSALDOAfterInsert
    BeforePost = qSALDOBeforePost
    AfterPost = qSALDOAfterPost
    AfterCancel = qSALDOAfterCancel
    AfterDelete = qSALDOAfterDelete
    OnCalcFields = qSALDOCalcFields
    IndexFieldNames = 'id;tahun'
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT db_persediaan.dbo.data_saldo.*'
      'FROM db_persediaan.dbo.data_saldo'
      'WHERE'
      'db_persediaan.dbo.data_saldo.tahun =:tahun AND'
      'db_persediaan.dbo.data_saldo.kode_skpd =:kode_skpd  '
      '')
    Left = 752
    Top = 381
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KODE_SKPD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qSALDOid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qSALDOkode_unitkerja: TIntegerField
      FieldName = 'kode_unitkerja'
      Origin = 'kode_unitkerja'
      Required = True
    end
    object qSALDOprogram_kegiatan: TStringField
      FieldName = 'program_kegiatan'
      Origin = 'program_kegiatan'
      Size = 150
    end
    object qSALDOkode_ssh: TStringField
      FieldName = 'kode_ssh'
      Origin = 'kode_ssh'
      Required = True
      Size = 30
    end
    object qSALDOqty: TIntegerField
      FieldName = 'qty'
      Origin = 'qty'
      Required = True
    end
    object qSALDOharga_satuan: TCurrencyField
      FieldName = 'harga_satuan'
      Origin = 'harga_satuan'
      Required = True
    end
    object qSALDOsupplier: TStringField
      FieldName = 'supplier'
      Origin = 'supplier'
      Size = 100
    end
    object qSALDOmodified_at: TSQLTimeStampField
      FieldName = 'modified_at'
      Origin = 'modified_at'
      Required = True
      DisplayFormat = 'dd/mm/yy hh:nn:ss'
    end
    object qSALDOmodified_user: TIntegerField
      FieldName = 'modified_user'
      Origin = 'modified_user'
      Required = True
    end
    object qSALDOnama_ssh: TStringField
      DisplayWidth = 120
      FieldKind = fkLookup
      FieldName = 'nama_ssh'
      LookupDataSet = qSSH
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_ssh'
      Size = 120
      Lookup = True
    end
    object qSALDOnama_bidang: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_bidang'
      LookupDataSet = qUnitkerja
      LookupKeyFields = 'id'
      LookupResultField = 'bidang'
      KeyFields = 'kode_unitkerja'
      Size = 80
      Lookup = True
    end
    object qSALDOsatuan: TStringField
      FieldKind = fkLookup
      FieldName = 'satuan'
      LookupDataSet = qSSH
      LookupKeyFields = 'kode'
      LookupResultField = 'satuan'
      KeyFields = 'kode_ssh'
      Size = 50
      Lookup = True
    end
    object qSALDOtotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object qSALDOtahun: TIntegerField
      FieldName = 'tahun'
      Origin = 'tahun'
    end
    object qSALDOkode_skpd: TIntegerField
      FieldName = 'kode_skpd'
      Origin = 'kode_skpd'
      Required = True
    end
  end
end
