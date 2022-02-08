object frmAppsPersediaan: TfrmAppsPersediaan
  Left = 0
  Top = 0
  Width = 1142
  Height = 678
  Hint = 'PERSEDIAAN'
  OnDestroy = UniFrameDestroy
  OnReady = UniFrameReady
  TabOrder = 0
  AutoScroll = True
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 678
    Hint = ''
    Align = alLeft
    TabOrder = 0
    Caption = ''
    object UniGroupBox1: TUniGroupBox
      Left = 16
      Top = 256
      Width = 267
      Height = 376
      Hint = ''
      Caption = '# FORM INPUT #'
      TabOrder = 1
      object unfStokBarang: TUniFSButton
        Left = 12
        Top = 255
        Width = 241
        Height = 105
        Hint = ''
        StyleButton = GoogleSilverRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'SSH && SALDO AWAL'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 1
        IconAlign = iaBottom
        ImageIndex = 17
        OnClick = unfStokBarangClick
      end
      object unfPembelian: TUniFSButton
        Left = 12
        Top = 22
        Width = 241
        Height = 105
        Hint = 'SIMDA Online'
        StyleButton = GoogleSilverRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'FORM PENERIMAAN'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 2
        IconAlign = iaBottom
        ImageIndex = 18
        OnClick = unfPembelianClick
      end
      object unfPemakaian: TUniFSButton
        Left = 12
        Top = 137
        Width = 241
        Height = 105
        Hint = ''
        StyleButton = GoogleSilverRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'FROM PEMAKAIAN'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 3
        IconAlign = iaBottom
        ImageIndex = 19
        OnClick = unfPemakaianClick
      end
    end
    object ugSKPD: TUniGroupBox
      Left = 16
      Top = 15
      Width = 267
      Height = 226
      Cursor = crHandPoint
      Hint = ''
      Caption = '                     APLIKASI PERSEDIAAN'
      TabOrder = 2
      ParentFont = False
      Font.Style = [fsBold]
      object udbLogoSKPD: TUniDBImage
        Left = 40
        Top = 39
        Width = 185
        Height = 147
        Hint = ''
        DataField = 'Logo'
        DataSource = dsProfile
        Stretch = True
        Proportional = True
      end
      object UniDBText1: TUniDBText
        Left = 40
        Top = 192
        Width = 185
        Height = 16
        Hint = ''
        DataField = 'keterangan'
        DataSource = dsProfile
        Alignment = taCenter
        AutoSize = False
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold, fsUnderline]
      end
      object btTahun: TUniBitBtn
        Left = 102
        Top = 17
        Width = 57
        Height = 16
        Hint = ''
        Caption = 'Pilih Tahun'
        ParentFont = False
        Font.Height = -7
        Font.Style = [fsBold]
        TabOrder = 3
        OnClick = btTahunClick
      end
    end
  end
  object UniPanel2: TUniPanel
    Left = 305
    Top = 0
    Width = 837
    Height = 678
    Hint = ''
    Align = alClient
    TabOrder = 1
    Caption = ''
    object uChartStokBarang: TUniChart
      Left = 16
      Top = 54
      Width = 794
      Height = 411
      Cursor = crCross
      Hint = ''
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ShowHint = True
      ParentShowHint = False
      Animate = True
      Axes.AxisA.Title = 'Total Penerimaan'
      Axes.AxisB.Title = 'Nama Barang'
      Title.Text.Strings = (
        'GRAFIK PERSEDIAAN')
      Legend.Font.Height = -8
      LayoutConfig.BodyPadding = '10'
      Shadow = False
      TitleAlign = taCenter
      object ubsPersediaan: TUniBarSeries
        Title = 'Persediaan'
        Pen.Color = clLime
        Pen.Default = False
        Brush.Color = clGreen
        SeriesLabel.Enabled = True
        SeriesLabel.Display = 'insideStart'
        SeriesLabel.Font.Height = -8
        SeriesLabel.Orientation = tloVertical
        DataSource = dsStokBarang
        YValues.ValueSource = 'tersedia'
        XLabelsSource = 'nama'
      end
      object ubsPengeluaran: TUniBarSeries
        Title = 'Pemakaian'
        Pen.Color = clLime
        Pen.Default = False
        Brush.Color = clMaroon
        SeriesLabel.Enabled = True
        SeriesLabel.Display = 'insideStart'
        SeriesLabel.Font.Height = -8
        SeriesLabel.Orientation = tloVertical
        DataSource = dsStokBarang
        YValues.ValueSource = 'pengeluaran'
        XLabelsSource = 'nama'
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 16
      Top = 488
      Width = 794
      Height = 144
      Hint = ''
      Caption = '# PELAPORAN #'
      TabOrder = 2
      object ubtPersediaan: TUniFSButton
        Left = 272
        Top = 23
        Width = 241
        Height = 105
        Hint = ''
        StyleButton = TBDCRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'PERSEDIAAN'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 1
        Images = UniMainModule.imgButton
        ImageIndex = 2
        OnClick = ubtPersediaanClick
      end
      object ubtSaldo: TUniFSButton
        Left = 536
        Top = 23
        Width = 241
        Height = 105
        Hint = ''
        StyleButton = TBDCRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'SALDO'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 2
        Images = UniMainModule.imgButton
        ImageIndex = 3
        OnClick = ubtSaldoClick
      end
      object ubtTransaksi: TUniFSButton
        Left = 16
        Top = 23
        Width = 241
        Height = 105
        Hint = ''
        StyleButton = TBDCRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'TRANSAKSI'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 3
        Images = UniMainModule.imgButton
        ImageIndex = 3
        OnClick = ubtTransaksiClick
      end
    end
    object ucbUnitKerja: TUniComboBox
      Left = 16
      Top = 15
      Width = 321
      Hint = ''
      Text = 'ucbUnitKerja'
      TabOrder = 3
      FieldLabel = 'Bidang / Bagian'
      FieldLabelWidth = 60
      IconItems = <>
      OnChange = ucbUnitKerjaChange
    end
    object ucbSatuan: TUniComboBox
      Left = 488
      Top = 15
      Width = 321
      Hint = ''
      Text = ''
      Items.Strings = (
        'Qty'
        'Harga')
      ItemIndex = 0
      TabOrder = 4
      FieldLabel = 'Satuan'
      FieldLabelWidth = 50
      IconItems = <>
    end
  end
  object qStokBarang: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      
        'SELECT        A.tahun, D.kode AS kode_unit, E.Nama_Subunit, E.Ke' +
        'terangan, A.kode_ssh, B.nama, B.satuan, B.spek, SUM(A.d_qty) AS ' +
        'penerimaan, SUM(A.k_qty) AS pengeluaran, SUM(A.d_qty) - SUM(A.k_' +
        'qty) AS tersedia, '
      'AVG(A.harga_satuan) AS harga_satuan'
      
        'FROM            (SELECT        tahun, kode_ssh, kode_unitkerja, ' +
        'qty AS d_qty, 0 AS k_qty, harga_satuan, supplier AS sumber, prog' +
        'ram_kegiatan'
      
        '                          FROM            db_persediaan.dbo.data' +
        '_saldo'
      '                          UNION ALL'
      
        '                          SELECT        DATEPART(YEAR, tanggal) ' +
        'AS tahun, kode_ssh, kode_unitkerja, SUM(qty) AS d_qty, 0 AS k_qt' +
        'y, AVG(harga_satuan) AS harga_satuan, '#39'Pembelian'#39' AS sumber, pro' +
        'gram_kegiatan'
      
        '                          FROM            db_persediaan.dbo.data' +
        '_pembelian'
      
        '                          GROUP BY DATEPART(YEAR, tanggal), kode' +
        '_ssh, kode_unitkerja, program_kegiatan'
      '                          UNION ALL'
      
        '                          SELECT        DATEPART(YEAR, tanggal) ' +
        'AS tahun, kode_ssh, kode_unitkerja, 0 AS d_qty, SUM(qty) AS k_qt' +
        'y, AVG(harga_satuan) AS harga_satuan, sumber, program_kegiatan'
      
        '                          FROM            db_persediaan.dbo.data' +
        '_pemakaian'
      
        '                          GROUP BY DATEPART(YEAR, tanggal), kode' +
        '_ssh, kode_unitkerja, program_kegiatan, sumber) AS A INNER JOIN'
      
        '                         db_persediaan.dbo.data_ssh AS B ON A.ta' +
        'hun = B.tahun AND A.kode_ssh = B.kode INNER JOIN'
      
        '                         db_persediaan.dbo.data_unitkerja AS D O' +
        'N A.kode_unitkerja = D.id INNER JOIN'
      
        '                         webapp_BPKAD.dbo.tbl_SKPD AS E ON D.kod' +
        'e = E.Kode_Subunit'
      
        'WHERE A.tahun =:tahun AND D.kode =:kode_unit AND D.bidang LIKE :' +
        'bidang'
      
        'GROUP BY  A.tahun, D.kode, E.Nama_Subunit, E.Keterangan, A.kode_' +
        'ssh, B.nama, B.satuan, B.spek')
    Left = 417
    Top = 135
    ParamData = <
      item
        Name = 'TAHUN'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'KODE_UNIT'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'BIDANG'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = '%%'
      end>
    object qStokBarangtahun: TIntegerField
      FieldName = 'tahun'
      Origin = 'tahun'
      ReadOnly = True
    end
    object qStokBarangkode_unit: TStringField
      FieldName = 'kode_unit'
      Origin = 'kode_unit'
      Size = 30
    end
    object qStokBarangkode_ssh: TStringField
      FieldName = 'kode_ssh'
      Origin = 'kode_ssh'
      ReadOnly = True
      Required = True
      Size = 30
    end
    object qStokBarangnama: TStringField
      FieldName = 'nama'
      Origin = 'nama'
      Size = 100
    end
    object qStokBarangsatuan: TStringField
      FieldName = 'satuan'
      Origin = 'satuan'
      Size = 50
    end
    object qStokBarangspek: TStringField
      FieldName = 'spek'
      Origin = 'spek'
      Size = 80
    end
    object qStokBarangpenerimaan: TIntegerField
      FieldName = 'penerimaan'
      Origin = 'penerimaan'
      ReadOnly = True
    end
    object qStokBarangpengeluaran: TIntegerField
      FieldName = 'pengeluaran'
      Origin = 'pengeluaran'
      ReadOnly = True
    end
    object qStokBarangtersedia: TIntegerField
      FieldName = 'tersedia'
      Origin = 'tersedia'
      ReadOnly = True
    end
    object qStokBarangharga_satuan: TCurrencyField
      FieldName = 'harga_satuan'
      Origin = 'harga_satuan'
      ReadOnly = True
    end
  end
  object dsProfile: TDataSource
    AutoEdit = False
    DataSet = UniMainModule.qProfile
    Left = 96
    Top = 73
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
    Left = 269
    Top = 96
  end
  object dsStokBarang: TDataSource
    AutoEdit = False
    DataSet = qStokBarang
    Left = 416
    Top = 193
  end
  object qUnitkerja: TFDQuery
    MasterFields = 'kode_subunit'
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT'
      '  tbl_SKPD.id'
      ' ,tbl_SKPD.nama_subunit'
      ' ,tbl_SKPD.kode_subunit'
      ' ,data_unitkerja.bidang'
      'FROM webapp_BPKAD.dbo.tbl_SKPD'
      'INNER JOIN db_persediaan.dbo.data_unitkerja'
      '  ON tbl_SKPD.Kode_Subunit = data_unitkerja.kode'
      'WHERE tbl_SKPD.Id =:Id')
    Left = 655
    Top = 9
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qUnitkerjaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qUnitkerjanama_subunit: TStringField
      FieldName = 'nama_subunit'
      Origin = 'nama_subunit'
      Size = 100
    end
    object qUnitkerjakode_subunit: TStringField
      FieldName = 'kode_subunit'
      Origin = 'kode_subunit'
      Size = 30
    end
    object qUnitkerjabidang: TStringField
      FieldName = 'bidang'
      Origin = 'bidang'
      Required = True
      Size = 80
    end
  end
  object qProgramKegiatan: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      
        'SELECT Tahun, CONVERT(varchar,kd_urusan)+'#39'.'#39'+CONVERT(varchar,kd_' +
        'bidang)+'#39'.'#39'+CONVERT(varchar,kd_unit)+'#39'.'#39'+CONVERT(varchar,kd_sub)' +
        ' AS kode_subunit,'
      
        '  kd_prog, id_prog, kd_keg, kd_sumber, ket_kegiatan, kelompok_sa' +
        'saran, pagu_anggaran, waktu_pelaksanaan'
      '  FROM db_persediaan.dbo.data_ta_kegiatan'
      '  WHERE Tahun =:tahun AND '
      
        '  CONVERT(varchar,kd_urusan)+'#39'.'#39'+CONVERT(varchar,kd_bidang)+'#39'.'#39'+' +
        'CONVERT(varchar,kd_unit)+'#39'.'#39'+CONVERT(varchar,kd_sub) '
      '  =:kode_subunit'
      '')
    Left = 1039
    Top = 9
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
        Value = Null
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
    object qProgramKegiatankelompok_sasaran: TStringField
      FieldName = 'kelompok_sasaran'
      Origin = 'kelompok_sasaran'
      Size = 255
    end
    object qProgramKegiatanpagu_anggaran: TCurrencyField
      FieldName = 'pagu_anggaran'
      Origin = 'pagu_anggaran'
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
