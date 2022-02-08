object frmPersediaanPembelian: TfrmPersediaanPembelian
  Left = 0
  Top = 0
  ClientHeight = 604
  ClientWidth = 771
  Caption = 'Form Penerimaan'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 604
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel1'
    object UniPanel2: TUniPanel
      Left = 1
      Top = 549
      Width = 769
      Height = 54
      Hint = ''
      Align = alBottom
      TabOrder = 1
      Caption = ''
      object UniLabel1: TUniLabel
        Left = 52
        Top = 32
        Width = 46
        Height = 13
        Hint = ''
        Caption = 'Tambah'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 1
      end
      object UniLabel2: TUniLabel
        Left = 214
        Top = 32
        Width = 35
        Height = 13
        Hint = ''
        Caption = 'Hapus'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 2
      end
      object UniLabel3: TUniLabel
        Left = 362
        Top = 32
        Width = 42
        Height = 13
        Hint = ''
        Caption = 'Simpan'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 3
      end
      object UniLabel4: TUniLabel
        Left = 523
        Top = 32
        Width = 29
        Height = 13
        Hint = ''
        Caption = 'Batal'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 4
      end
      object UniLabel5: TUniLabel
        Left = 668
        Top = 32
        Width = 45
        Height = 13
        Hint = ''
        Caption = 'Print BA'
        ParentFont = False
        Font.Style = [fsBold, fsUnderline]
        TabOrder = 5
      end
      object upTombol: TUniPanel
        Left = 1
        Top = 1
        Width = 767
        Height = 26
        Hint = ''
        Align = alTop
        TabOrder = 6
        Caption = 'upTombol'
        object dbnSSH: TUniDBNavigator
          Left = 1
          Top = 1
          Width = 608
          Height = 24
          Hint = ''
          DataSource = dsPembelian
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          Align = alLeft
          TabOrder = 1
        end
        object ubtCetakBA: TUniBitBtn
          Left = 609
          Top = 1
          Width = 157
          Height = 24
          Hint = ''
          Glyph.Data = {
            06050000424D06050000000000003604000028000000100000000D0000000100
            080000000000D0000000C30E0000C30E00000001000000010000000000007777
            77007E7E7E00B2773D00334CCC00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FFFFFF00FF0202020102
            0101020101020102FFFFFF0102FF02010101010101010102FFFFFF0201010101
            02FF020201010101FFFFFF0201020102FFFFFF0101020102FFFFFFFFFFFFFFFF
            FF04FFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FFFFFFFFFFFFFFFFFFFFFFFF04
            04040404FFFFFFFFFFFFFFFFFFFF04040404040404FFFFFFFFFFFFFFFF040404
            040404040404FFFFFFFFFFFFFF0404FF040404FF0404FFFFFFFFFFFFFFFFFFFF
            040404FFFFFFFFFFFFFFFFFFFFFFFFFF040404FFFFFFFFFFFFFFFFFFFFFFFFFF
            040404FFFFFFFFFFFFFF}
          Caption = ''
          Align = alClient
          TabOrder = 2
          OnClick = ubtCetakBAClick
        end
      end
    end
    object UniPanel3: TUniPanel
      Left = 1
      Top = 1
      Width = 769
      Height = 548
      Hint = ''
      Align = alClient
      TabOrder = 2
      Caption = 'UniPanel3'
      object UniGroupBox1: TUniGroupBox
        Left = 1
        Top = 1
        Width = 767
        Height = 192
        Hint = ''
        Caption = ''
        Align = alTop
        TabOrder = 1
        object dtTanggal: TUniDateTimePicker
          Left = 17
          Top = 72
          Width = 233
          Hint = ''
          DateTime = 44473.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 2
          FieldLabel = 'Tanggal'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          MinDate = 40543.000000000000000000
        end
        object cbProgram: TUniComboBox
          Left = 17
          Top = 156
          Width = 729
          Hint = ''
          Text = ''
          TabOrder = 6
          EmptyText = 'Pilih Program Kegiatan'
          FieldLabel = 'Program Kegiatan'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          IconItems = <>
          ReadOnlyMode = urmNotEditable
          OnChange = cbProgramChange
        end
        object umKeterangan: TUniMemo
          Left = 393
          Top = 72
          Width = 353
          Height = 51
          Hint = ''
          Lines.Strings = (
            '-')
          TabOrder = 7
          FieldLabel = 'Keterangan'
          FieldLabelWidth = 90
          FieldLabelSeparator = ' :'
        end
        object cbBidang: TUniComboBox
          Left = 17
          Top = 128
          Width = 353
          Hint = ''
          Text = ''
          TabOrder = 5
          EmptyText = 'Pilih Nama Bidang'
          FieldLabel = 'Bidang'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          IconItems = <>
        end
        object cbSKPD: TUniComboBox
          Left = 18
          Top = 101
          Width = 353
          Hint = ''
          Text = ''
          TabOrder = 4
          Color = clInfoBk
          ReadOnly = True
          FieldLabel = 'SKPD'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          IconItems = <>
          ReadOnlyMode = urmNotEditable
        end
        object uchPemakaian: TUniCheckBox
          Left = 274
          Top = 77
          Width = 97
          Height = 17
          Hint = ''
          Checked = True
          Caption = 'Auto Pakai'
          TabOrder = 3
        end
        object ubStatusPagu: TUniBitBtn
          Left = 393
          Top = 28
          Width = 353
          Height = 25
          Hint = ''
          Glyph.Data = {
            06050000424D06050000000000003604000028000000100000000D0000000100
            080000000000D0000000C30E0000C30E00000001000000010000000000007777
            7700787878007E7E7E0085AD4B0083A94D0085A8510080808000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FFFFFF00FF0303030103
            0101030101030103FFFFFF0103FF03010101010101010103FFFFFF0301010101
            03FF030301010101FFFFFF0301030103FFFFFF0101030103FFFFFFFFFFFFFFFF
            FF04FFFFFFFFFFFFFFFFFFFFFFFFFFFF040404FFFFFFFFFFFFFFFFFFFFFFFF04
            04040404FFFFFFFFFFFFFFFFFFFF04040404040404FFFFFFFFFFFFFFFF040404
            040404060404FFFFFFFFFFFFFF0404FF040404FF0404FFFFFFFFFFFFFFFFFFFF
            040404FFFFFFFFFFFFFFFFFFFFFFFFFF040404FFFFFFFFFFFFFFFFFFFFFFFFFF
            040404FFFFFFFFFFFFFF}
          Caption = 'Status Pagu'
          ParentFont = False
          TabOrder = 9
        end
        object cbKodeBAST: TUniComboBox
          Left = 17
          Top = 28
          Width = 353
          Hint = ''
          Text = ''
          TabOrder = 1
          Color = clGradientActiveCaption
          EmptyText = 'Pilih Kode BAST TERIMA'
          FieldLabel = 'BAST'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          IconItems = <>
          ReadOnlyMode = urmNotEditable
          OnChange = cbKodeBASTChange
        end
        object dtFaktur: TUniDateTimePicker
          Left = 393
          Top = 128
          Width = 353
          Hint = ''
          DateTime = 44473.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 8
          FieldLabel = 'Tanggal Faktur'
          FieldLabelWidth = 90
          FieldLabelSeparator = ' :'
          MinDate = 40543.000000000000000000
        end
      end
      object udbgPmbelian: TUniDBGrid
        Left = 1
        Top = 193
        Width = 767
        Height = 354
        Hint = ''
        HeaderTitle = 'Input Barang yang diterima'
        TitleFont.Style = [fsBold]
        DataSource = dsPembelian
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow, dgRowNumbers]
        WebOptions.Paged = False
        WebOptions.FetchAll = True
        Grouping.FieldName = 'kode_bast'
        Grouping.FieldCaption = 'BAST'
        Grouping.Enabled = True
        LoadMask.Message = 'Loading data...'
        Align = alClient
        TabOrder = 2
        Summary.Enabled = True
        Summary.GrandTotal = True
        Summary.GrandTotalAlign = taBottom
        OnColumnSort = udbgPmbelianColumnSort
        OnColumnSummary = udbgPmbelianColumnSummary
        OnColumnSummaryResult = udbgPmbelianColumnSummaryResult
        OnColumnSummaryTotal = udbgPmbelianColumnSummaryTotal
        Columns = <
          item
            FieldName = 'kode_bast'
            Title.Caption = 'kode_bast'
            Width = 304
            Visible = False
          end
          item
            WidgetColumn.Enabled = True
            WidgetColumn.Widget = ubwPilih
            Title.Caption = ' '
            Width = 29
          end
          item
            ShowToolTip = True
            FieldName = 'supplier'
            Title.Alignment = taCenter
            Title.Caption = 'Supplier'
            Title.Font.Style = [fsBold]
            Width = 155
          end
          item
            ShowToolTip = True
            FieldName = 'nama_barang'
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Title.Font.Style = [fsBold]
            Width = 163
            ReadOnly = True
          end
          item
            ShowToolTip = True
            FieldName = 'satuan'
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Title.Font.Style = [fsBold]
            Width = 55
            ReadOnly = True
          end
          item
            FieldName = 'qty'
            Title.Alignment = taCenter
            Title.Caption = 'Qty'
            Title.Font.Style = [fsBold]
            Width = 81
            ShowSummary = True
          end
          item
            FieldName = 'harga_satuan'
            Title.Alignment = taCenter
            Title.Caption = 'Harga Satuan'
            Title.Font.Style = [fsBold]
            Width = 93
          end
          item
            ShowToolTip = True
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Style = [fsBold]
            Width = 127
            ReadOnly = True
            ShowSummary = True
          end>
      end
      object UniHiddenPanel1: TUniHiddenPanel
        Left = 553
        Top = 217
        Width = 160
        Height = 304
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
        object feTA: TUniEdit
          Left = 16
          Top = 160
          Width = 121
          Hint = ''
          Text = ''
          TabOrder = 6
        end
        object feNamaUnit: TUniEdit
          Left = 16
          Top = 188
          Width = 121
          Hint = ''
          Text = ''
          TabOrder = 7
        end
        object feNamaSSH: TUniEdit
          Left = 16
          Top = 216
          Width = 121
          Hint = ''
          Text = ''
          TabOrder = 8
        end
        object ubwPilih: TUniButtonWidget
          Left = 16
          Top = 245
          Width = 120
          Hint = 'Pilih Barang'
          ShowHint = True
          ParentShowHint = False
          Images = UniMainModule.UniImageList
          ImageIndex = 2
          OnClick = ubwPilihClick
          Caption = 'Pilih'
        end
        object ulKodeBASTPengeluaran: TUniLabel
          Left = 16
          Top = 279
          Width = 27
          Height = 13
          Hint = ''
          Caption = 'BARU'
          ParentColor = False
          Color = clWindow
          TabOrder = 10
        end
      end
    end
  end
  object qPembelian: TFDQuery
    BeforeInsert = qPembelianBeforeInsert
    BeforeEdit = qPembelianBeforeEdit
    BeforePost = qPembelianBeforePost
    AfterPost = qPembelianAfterPost
    AfterCancel = qPembelianAfterCancel
    AfterDelete = qPembelianAfterDelete
    OnCalcFields = qPembelianCalcFields
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM db_persediaan.dbo.data_pembelian'
      'WHERE DATEPART(YEAR,tanggal) =:tahun AND'
      'kode_skpd =:kode_skpd AND'
      'kode_bast LIKE :kode_bast')
    Left = 704
    Top = 41
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
      end
      item
        Name = 'KODE_BAST'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
    object qPembelianid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qPembeliantanggal: TDateField
      FieldName = 'tanggal'
      Origin = 'tanggal'
      Required = True
    end
    object qPembeliankode_ssh: TStringField
      FieldName = 'kode_ssh'
      Origin = 'kode_ssh'
      Required = True
      Size = 30
    end
    object qPembelianqty: TIntegerField
      FieldName = 'qty'
      Origin = 'qty'
      Required = True
    end
    object qPembelianharga_satuan: TCurrencyField
      FieldName = 'harga_satuan'
      Origin = 'harga_satuan'
      Required = True
    end
    object qPembeliansupplier: TStringField
      FieldName = 'supplier'
      Origin = 'supplier'
      Required = True
      Size = 100
    end
    object qPembelianprogram_kegiatan: TStringField
      FieldName = 'program_kegiatan'
      Origin = 'program_kegiatan'
      Required = True
      Size = 150
    end
    object qPembelianketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'keterangan'
      Required = True
      Size = 50
    end
    object qPembeliancreated_at: TSQLTimeStampField
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object qPembeliancreated_user: TIntegerField
      FieldName = 'created_user'
      Origin = 'created_user'
      Required = True
    end
    object qPembeliandeleted: TBooleanField
      FieldName = 'deleted'
      Origin = 'deleted'
    end
    object qPembeliankode_unitkerja: TIntegerField
      FieldName = 'kode_unitkerja'
      Origin = 'kode_unitkerja'
      Required = True
    end
    object qPembeliantotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object qPembeliannama_barang: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_barang'
      LookupDataSet = qSSH
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_ssh'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qPembeliansatuan: TStringField
      FieldKind = fkLookup
      FieldName = 'satuan'
      LookupDataSet = qSSH
      LookupKeyFields = 'kode'
      LookupResultField = 'satuan'
      KeyFields = 'kode_ssh'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qPembeliankode_bast: TStringField
      FieldName = 'kode_bast'
      Origin = 'kode_bast'
      Required = True
      Size = 50
    end
    object qPembelianbidang: TStringField
      FieldKind = fkLookup
      FieldName = 'bidang'
      LookupDataSet = qUnitkerja
      LookupKeyFields = 'id'
      LookupResultField = 'bidang'
      KeyFields = 'kode_unitkerja'
      Lookup = True
    end
    object qPembeliankode_skpd: TIntegerField
      FieldName = 'kode_skpd'
      Origin = 'kode_skpd'
      Required = True
    end
  end
  object dsPembelian: TDataSource
    DataSet = qPembelian
    Left = 704
    Top = 89
  end
  object qUnitkerja: TFDQuery
    MasterFields = 'kode_subunit'
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM db_persediaan.dbo.data_unitkerja'
      'WHERE'
      'kode LIKE :kode_subunit AND'
      'bidang LIKE :bidang')
    Left = 607
    Top = 41
    ParamData = <
      item
        Name = 'KODE_SUBUNIT'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'BIDANG'
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
  end
  object qSKPD: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM webapp_BPKAD.dbo.tbl_SKPD'
      'WHERE Nama_Subunit NOT LIKE '#39'Puskesmas%'#39' AND '
      'Nama_Subunit NOT LIKE '#39'SDN%'#39' AND '
      'Nama_Subunit NOT LIKE '#39'SMPN%'#39' AND '
      'Nama_Subunit NOT LIKE '#39'%BLUD'#39' AND'
      'ID LIKE :IdSKPD'
      '')
    Left = 519
    Top = 41
    ParamData = <
      item
        Name = 'IDSKPD'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
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
  object qProgramKegiatan: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT Tahun,'
      'CONVERT(varchar,kd_urusan)+'#39'.'#39'+'
      'CONVERT(varchar,kd_bidang)+'#39'.'#39'+'
      'CONVERT(varchar,kd_unit)+'#39'.'#39'+'
      'CONVERT(varchar,kd_sub) AS kode_subunit,'
      'kd_prog, '
      'id_prog, '
      'kd_keg, '
      'kd_sumber, '
      'ket_kegiatan,'
      'right('#39'00'#39'+cast(kd_prog as varchar),2)+'#39'.'#39'+'
      'right('#39'00'#39'+cast(kd_keg as varchar),2)+'#39'_'#39'+'
      'ket_kegiatan AS gap_kegiatan,'
      'kelompok_sasaran, '
      'FORMAT(isnull(pagu_anggaran,0), '#39'C'#39', '#39'id'#39') as pagu_anggaran, '
      'waktu_pelaksanaan'
      'FROM db_persediaan.dbo.data_ta_kegiatan'
      'WHERE Tahun =:tahun AND '
      
        'CONVERT(varchar,kd_urusan)+'#39'.'#39'+CONVERT(varchar,kd_bidang)+'#39'.'#39'+CO' +
        'NVERT(varchar,kd_unit)+'#39'.'#39'+CONVERT(varchar,kd_sub) '
      'LIKE :kode_subunit AND'
      'right('#39'00'#39'+cast(kd_prog as varchar),2)+'#39'.'#39'+'
      'right('#39'00'#39'+cast(kd_keg as varchar),2)+'#39'_'#39'+'
      'ket_kegiatan LIKE :gap_keg')
    Left = 431
    Top = 41
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2021
      end
      item
        Name = 'KODE_SUBUNIT'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = '%%'
      end
      item
        Name = 'GAP_KEG'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
    object qProgramKegiatanTahun: TSmallintField
      FieldName = 'Tahun'
      Origin = 'Tahun'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgramKegiatankd_prog: TSmallintField
      FieldName = 'kd_prog'
      Origin = 'kd_prog'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgramKegiatanid_prog: TSmallintField
      FieldName = 'id_prog'
      Origin = 'id_prog'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgramKegiatankd_keg: TSmallintField
      FieldName = 'kd_keg'
      Origin = 'kd_keg'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProgramKegiatankd_sumber: TByteField
      FieldName = 'kd_sumber'
      Origin = 'kd_sumber'
    end
    object qProgramKegiatanket_kegiatan: TStringField
      FieldName = 'ket_kegiatan'
      Origin = 'ket_kegiatan'
      Required = True
      Size = 200
    end
    object qProgramKegiatangap_kegiatan: TStringField
      FieldName = 'gap_kegiatan'
      Origin = 'gap_kegiatan'
      ReadOnly = True
      Size = 261
    end
    object qProgramKegiatanpagu_anggaran: TWideStringField
      FieldName = 'pagu_anggaran'
      Origin = 'pagu_anggaran'
      ReadOnly = True
      Size = 4000
    end
    object qProgramKegiatankelompok_sasaran: TStringField
      FieldName = 'kelompok_sasaran'
      Origin = 'kelompok_sasaran'
      Size = 255
    end
    object qProgramKegiatanwaktu_pelaksanaan: TStringField
      FieldName = 'waktu_pelaksanaan'
      Origin = 'waktu_pelaksanaan'
      Size = 100
    end
    object qProgramKegiatankode_subunit: TStringField
      FieldName = 'kode_subunit'
      Origin = 'kode_subunit'
      ReadOnly = True
      Size = 123
    end
  end
  object qPemakaian: TFDQuery
    AfterPost = qPemakaianAfterPost
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT TOP 0 * FROM db_persediaan.dbo.data_pemakaian')
    Left = 704
    Top = 145
    object qPemakaianid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qPemakaiantanggal: TDateField
      FieldName = 'tanggal'
      Origin = 'tanggal'
      Required = True
    end
    object qPemakaianpemohon: TStringField
      FieldName = 'pemohon'
      Origin = 'pemohon'
      Required = True
      Size = 80
    end
    object qPemakaiankode_unitkerja: TIntegerField
      FieldName = 'kode_unitkerja'
      Origin = 'kode_unitkerja'
      Required = True
    end
    object qPemakaiankode_ssh: TStringField
      FieldName = 'kode_ssh'
      Origin = 'kode_ssh'
      Required = True
      Size = 30
    end
    object qPemakaianqty: TIntegerField
      FieldName = 'qty'
      Origin = 'qty'
      Required = True
    end
    object qPemakaianharga_satuan: TCurrencyField
      FieldName = 'harga_satuan'
      Origin = 'harga_satuan'
      Required = True
    end
    object qPemakaianprogram_kegiatan: TStringField
      FieldName = 'program_kegiatan'
      Origin = 'program_kegiatan'
      Required = True
      Size = 150
    end
    object qPemakaianketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'keterangan'
      Required = True
      Size = 50
    end
    object qPemakaianpersetujuan: TBooleanField
      FieldName = 'persetujuan'
      Origin = 'persetujuan'
      Required = True
    end
    object qPemakaiancreated_at: TSQLTimeStampField
      FieldName = 'created_at'
      Origin = 'created_at'
    end
    object qPemakaiancreated_user: TIntegerField
      FieldName = 'created_user'
      Origin = 'created_user'
      Required = True
    end
    object qPemakaiandeleted: TBooleanField
      FieldName = 'deleted'
      Origin = 'deleted'
    end
    object qPemakaiankode_bast: TStringField
      FieldName = 'kode_bast'
      Origin = 'kode_bast'
      Required = True
      Size = 50
    end
    object qPemakaiantersedia: TIntegerField
      FieldName = 'tersedia'
    end
    object qPemakaiansumber: TStringField
      FieldName = 'sumber'
      Origin = 'sumber'
      Required = True
      Size = 30
    end
    object qPemakaiankode_skpd: TIntegerField
      FieldName = 'kode_skpd'
      Origin = 'kode_skpd'
      Required = True
    end
  end
  object qBASTPenerimaan: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT TOP 1'
      
        'RIGHT('#39'000'#39' + CONVERT(VARCHAR,(CONVERT(INT,LEFT(kode_bast,3)) + ' +
        '1)),3) +'
      #39'/BAST-TERIMA/'#39' + :skpd + '#39'/'#39' + :tahun'
      'AS new_bast'
      'FROM'
      '(SELECT kode_bast FROM db_persediaan.dbo.data_pembelian'
      'UNION ALL'
      'SELECT '#39'000/BAST-BARU/SKPD/TAHUN'#39' AS kode_bast) AS TBL'
      'ORDER BY kode_bast DESC')
    Left = 39
    Top = 137
    ParamData = <
      item
        Name = 'SKPD'
        DataType = ftString
        ParamType = ptInput
        Value = 'SKPD'
      end
      item
        Name = 'TAHUN'
        DataType = ftString
        ParamType = ptInput
        Value = 'TAHUN'
      end>
    object qBASTPenerimaannew_bast: TStringField
      FieldName = 'new_bast'
      Origin = 'new_bast'
      ReadOnly = True
      Size = 8000
    end
  end
  object qBASTPengeluaran: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT TOP 1'
      
        'RIGHT('#39'000'#39' + CONVERT(VARCHAR,(CONVERT(INT,LEFT(kode_bast,3)) + ' +
        '1)),3) +'
      #39'/BAST-KELUAR/'#39' + :skpd + '#39'/'#39' + :tahun'
      'AS new_bast'
      'FROM'
      '(SELECT kode_bast FROM db_persediaan.dbo.data_pemakaian'
      'UNION ALL'
      'SELECT '#39'000'#39' +'
      #39'/BAST-KELUAR/'#39' + :skpd + '#39'/'#39' + :tahun'
      ' AS kode_bast) AS TBL'
      'ORDER BY kode_bast DESC')
    Left = 39
    Top = 201
    ParamData = <
      item
        Name = 'SKPD'
        DataType = ftString
        ParamType = ptInput
        Value = 'SKPD'
      end
      item
        Name = 'TAHUN'
        DataType = ftString
        ParamType = ptInput
        Value = 'TAHUN'
      end>
    object qBASTPengeluarannew_bast: TStringField
      FieldName = 'new_bast'
      Origin = 'new_bast'
      ReadOnly = True
      Size = 8000
    end
  end
  object qSSH: TFDQuery
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
    Left = 432
    Top = 105
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
      Required = True
    end
    object qSSHupdated_user: TIntegerField
      FieldName = 'updated_user'
    end
  end
end
