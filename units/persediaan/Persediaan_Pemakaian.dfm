object frmPersediaanPemakaian: TfrmPersediaanPemakaian
  Left = 0
  Top = 0
  ClientHeight = 595
  ClientWidth = 771
  Caption = 'Form Pemakaian'
  OnShow = UniFormShow
  BorderStyle = bsDialog
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  ScreenMask.Enabled = True
  ScreenMask.WaitData = True
  ScreenMask.Message = 'Memuat Data . . .'
  ScreenMask.Target = UniPanel1
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 595
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = 'UniPanel1'
    object UniPanel3: TUniPanel
      Left = 1
      Top = 1
      Width = 769
      Height = 539
      Hint = ''
      Align = alClient
      TabOrder = 1
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
          Left = 16
          Top = 72
          Width = 257
          Hint = ''
          DateTime = 44473.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          TabOrder = 2
          FieldLabel = 'Tanggal'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
        end
        object cbProgram: TUniComboBox
          Left = 16
          Top = 156
          Width = 729
          Hint = ''
          Text = ''
          TabOrder = 5
          EmptyText = 'Pilih Program Kegiatan'
          FieldLabel = 'Program Kegiatan'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          IconItems = <>
          OnChange = cbProgramChange
        end
        object umKeterangan: TUniMemo
          Left = 392
          Top = 101
          Width = 353
          Height = 49
          Hint = ''
          Lines.Strings = (
            '-')
          TabOrder = 7
          FieldLabel = 'Keterangan'
          FieldLabelWidth = 70
          FieldLabelSeparator = ' :'
        end
        object cbBidang: TUniComboBox
          Left = 16
          Top = 128
          Width = 353
          Hint = ''
          Text = ''
          TabOrder = 4
          EmptyText = 'Pilih Nama Bidang'
          FieldLabel = 'Bidang'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          IconItems = <>
        end
        object cbSKPD: TUniComboBox
          Left = 17
          Top = 101
          Width = 353
          Hint = ''
          Text = ''
          TabOrder = 3
          Color = clInfoBk
          ReadOnly = True
          FieldLabel = 'SKPD'
          FieldLabelWidth = 60
          FieldLabelSeparator = ' :'
          IconItems = <>
          ReadOnlyMode = urmNotEditable
        end
        object edPemohon: TUniEdit
          Left = 392
          Top = 73
          Width = 353
          Height = 21
          Hint = ''
          Text = ''
          TabOrder = 6
          EmptyText = 'Isi Nama Pemohon'
          FieldLabel = 'Pemohon'
          FieldLabelWidth = 70
          FieldLabelSeparator = ' :'
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
        object ubStatusPagu: TUniBitBtn
          Left = 393
          Top = 28
          Width = 353
          Height = 25
          Hint = ''
          Glyph.Data = {
            06050000424D06050000000000003604000028000000100000000D0000000100
            080000000000D0000000C30E0000C30E00000001000000010000000000007777
            77007E7E7E00B2773D0085AD4B0085A851000000000000000000000000000000
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
            FF03FFFFFFFFFFFFFFFFFFFFFFFFFFFF030303FFFFFFFFFFFFFFFFFFFFFFFF03
            03030303FFFFFFFFFFFFFFFFFFFF03030303030303FFFFFFFFFFFFFFFF030303
            030303030303FFFFFFFFFFFFFF0303FF030303FF0303FFFFFFFFFFFFFFFFFFFF
            030303FFFFFFFFFFFFFFFFFFFFFFFFFF030303FFFFFFFFFFFFFFFFFFFFFFFFFF
            030303FFFFFFFFFFFFFF}
          Caption = 'Status Pagu'
          ParentFont = False
          TabOrder = 8
        end
      end
      object upPemakaian: TUniPanel
        Left = 1
        Top = 193
        Width = 767
        Height = 345
        Hint = ''
        AutoScroll = True
        Align = alClient
        TabOrder = 2
        TitleVisible = True
        TitleAlign = taCenter
        Title = 'Input Barang yang pakai'
        Caption = 'upPemakaian'
        ScrollHeight = 345
        ScrollWidth = 767
        object udbgPemakaian: TUniDBGrid
          Left = 1
          Top = 1
          Width = 765
          Height = 343
          Hint = ''
          TitleFont.Style = [fsBold]
          DataSource = dsPemakaian
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgAutoRefreshRow, dgRowNumbers]
          WebOptions.Paged = False
          WebOptions.FetchAll = True
          Grouping.FieldName = 'kode_bast'
          Grouping.FieldCaption = 'BAST'
          Grouping.Enabled = True
          LoadMask.Message = 'Loading data...'
          Align = alClient
          TabOrder = 1
          Summary.Enabled = True
          Summary.GrandTotal = True
          Summary.GrandTotalAlign = taBottom
          OnColumnSort = udbgPemakaianColumnSort
          OnColumnSummary = udbGridColumnSummary
          OnColumnSummaryResult = udbGridColumnSummaryResult
          OnColumnSummaryTotal = udbgPemakaianColumnSummaryTotal
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
              Title.Alignment = taCenter
              Title.Caption = ' '
              Title.Font.Style = [fsBold]
              Width = 29
            end
            item
              ShowToolTip = True
              FieldName = 'nama_barang'
              Title.Alignment = taCenter
              Title.Caption = 'Nama Barang'
              Title.Font.Style = [fsBold]
              Width = 148
              ReadOnly = True
            end
            item
              ShowToolTip = True
              FieldName = 'satuan'
              Title.Alignment = taCenter
              Title.Caption = 'Satuan'
              Title.Font.Style = [fsBold]
              Width = 88
              ReadOnly = True
            end
            item
              ShowToolTip = True
              FieldName = 'program_kegiatan'
              Title.Alignment = taCenter
              Title.Caption = 'Sumber Program Kegiatan'
              Title.Font.Style = [fsBold]
              Width = 235
              ReadOnly = True
              Editor = uicbProgram
            end
            item
              FieldName = 'tersedia'
              Title.Alignment = taCenter
              Title.Caption = 'Tersedia'
              Title.Font.Style = [fsBold]
              Width = 53
              ReadOnly = True
            end
            item
              ShowToolTip = True
              FieldName = 'qty'
              Filtering.Editor = uieQty
              Title.Alignment = taCenter
              Title.Caption = 'Dipakai'
              Title.Font.Style = [fsBold]
              Width = 54
              ShowSummary = True
            end
            item
              ShowToolTip = True
              FieldName = 'total'
              Title.Alignment = taCenter
              Title.Caption = 'Total'
              Title.Font.Style = [fsBold]
              Width = 99
              ReadOnly = True
              ShowSummary = True
            end>
        end
        object UniHiddenPanel1: TUniHiddenPanel
          Left = 563
          Top = 48
          Width = 160
          Height = 152
          Hint = ''
          Visible = True
          object uicbProgram: TUniComboBox
            Left = 12
            Top = 44
            Width = 145
            Hint = ''
            Text = 'uicbProgram'
            TabOrder = 1
            IconItems = <>
            OnChange = uicbProgramChange
          end
          object uicbNamaBarang: TUniComboBox
            Left = 12
            Top = 16
            Width = 145
            Hint = ''
            Text = 'uicbNamaBarang'
            TabOrder = 2
            IconItems = <>
            OnChange = uicbProgramChange
          end
          object uieQty: TUniNumberEdit
            Left = 12
            Top = 72
            Width = 121
            Hint = ''
            TabOrder = 3
            DecimalSeparator = '.'
          end
          object ubwPilih: TUniButtonWidget
            Left = 12
            Top = 100
            Width = 120
            Hint = 'Pilih Barang'
            ShowHint = True
            ParentShowHint = False
            Images = UniMainModule.UniImageList
            ImageIndex = 2
            OnClick = ubwPilihClick
            Caption = 'Pilih'
          end
        end
      end
    end
    object UniPanel2: TUniPanel
      Left = 1
      Top = 540
      Width = 769
      Height = 54
      Hint = ''
      Align = alBottom
      TabOrder = 2
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
        object dbnTombol: TUniDBNavigator
          Left = 1
          Top = 1
          Width = 608
          Height = 24
          Hint = ''
          DataSource = dsPemakaian
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
  end
  object qPemakaian: TFDQuery
    BeforeInsert = qPemakaianBeforeInsert
    BeforeEdit = qPemakaianBeforeEdit
    BeforePost = qPemakaianBeforePost
    AfterPost = qPemakaianAfterPost
    AfterCancel = qPemakaianAfterCancel
    AfterDelete = qPemakaianAfterDelete
    OnCalcFields = qPemakaianCalcFields
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM db_persediaan.dbo.data_pemakaian'
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
        Value = Null
      end>
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
    object qPemakaiannama_barang: TStringField
      FieldKind = fkLookup
      FieldName = 'nama_barang'
      LookupDataSet = qSSH
      LookupKeyFields = 'kode'
      LookupResultField = 'nama'
      KeyFields = 'kode_ssh'
      LookupCache = True
      Lookup = True
    end
    object qPemakaiansatuan: TStringField
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
    object qPemakaiankode_bast: TStringField
      FieldName = 'kode_bast'
      Origin = 'kode_bast'
      Required = True
      Size = 50
    end
    object qPemakaianbidang: TStringField
      FieldKind = fkLookup
      FieldName = 'bidang'
      LookupDataSet = qUnitkerja
      LookupKeyFields = 'id'
      LookupResultField = 'bidang'
      KeyFields = 'kode_unitkerja'
      Lookup = True
    end
    object qPemakaiantotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object qPemakaiansumber: TStringField
      FieldName = 'sumber'
      Size = 30
    end
    object qPemakaiankode_skpd: TIntegerField
      FieldName = 'kode_skpd'
      Origin = 'kode_skpd'
      Required = True
    end
    object qPemakaianqty: TFloatField
      FieldName = 'qty'
      Origin = 'qty'
      Required = True
    end
    object qPemakaiantersedia: TFloatField
      FieldName = 'tersedia'
      Origin = 'tersedia'
      Required = True
    end
  end
  object dsPemakaian: TDataSource
    DataSet = qPemakaian
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
  object qSSH: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM db_persediaan.dbo.vw_data_ssh'
      'WHERE'
      'tahun =:tahun AND '
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
      'WHERE CONVERT(VARCHAR(4),(DATEPART(YEAR,tanggal))) =:tahun'
      'AND kode_skpd =:kode_skpd'
      'UNION ALL'
      'SELECT '#39'000/BAST-BARU/SKPD/TAHUN'#39' AS kode_bast) AS TBL'
      'ORDER BY kode_bast DESC')
    Left = 71
    Top = 25
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
      end
      item
        Name = 'KODE_SKPD'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qBASTPengeluarannew_bast: TStringField
      FieldName = 'new_bast'
      Origin = 'new_bast'
      ReadOnly = True
      Size = 8000
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
        Value = Null
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
end
