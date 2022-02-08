object ufrmPersediaanPilihPemakaian: TufrmPersediaanPilihPemakaian
  Left = 0
  Top = 0
  ClientHeight = 320
  ClientWidth = 936
  Caption = 'Pilih Pemakaian'
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
    Width = 936
    Height = 320
    Hint = ''
    Align = alClient
    TabOrder = 0
    TitleAlign = taCenter
    Title = 'Pilih Barang yang Tersedia'
    Caption = 'UniPanel1'
    object udbgPilihPemakaian: TUniDBGrid
      Left = 1
      Top = 24
      Width = 934
      Height = 295
      Hint = ''
      DataSource = dsPilihPemakaian
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCheckSelectCheckOnly, dgAlwaysShowSelection, dgConfirmDelete]
      WebOptions.Paged = False
      WebOptions.FetchAll = True
      LoadMask.Message = 'Loading data...'
      Align = alBottom
      TabOrder = 1
      OnBodyDblClick = udbgPilihPemakaianBodyDblClick
      OnClearFilters = udbgPilihPemakaianClearFilters
      OnDrawColumnCell = udbgPilihPemakaianDrawColumnCell
      OnColumnFilter = udbgPilihPemakaianColumnFilter
      Columns = <
        item
          FieldName = 'sumber'
          Filtering.Enabled = True
          Filtering.Editor = feSumber
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'sumber'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 73
          ReadOnly = True
          Sortable = True
          GroupHeader = 'Sumber Persediaan'
        end
        item
          FieldName = 'program_kegiatan'
          Filtering.Enabled = True
          Filtering.Editor = feProgram
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'program_kegiatan'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 114
          ReadOnly = True
          Sortable = True
          GroupHeader = 'Sumber Persediaan'
        end
        item
          FieldName = 'bidang'
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'bidang'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 88
          ReadOnly = True
          Sortable = True
          GroupHeader = 'Sumber Persediaan'
        end
        item
          FieldName = 'kode_ssh'
          Filtering.Enabled = True
          Filtering.Editor = feKode
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'kode_ssh'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 137
          ReadOnly = True
          GroupHeader = 'Barang'
        end
        item
          FieldName = 'nama'
          Filtering.Enabled = True
          Filtering.Editor = feBarang
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'nama'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 122
          ReadOnly = True
          GroupHeader = 'Barang'
        end
        item
          FieldName = 'satuan'
          Filtering.Enabled = True
          Filtering.Editor = feSatuan
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'satuan'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 100
          ReadOnly = True
          GroupHeader = 'Barang'
        end
        item
          FieldName = 'spek'
          Filtering.Enabled = True
          Filtering.Editor = feSpek
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'spek'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 100
          ReadOnly = True
          GroupHeader = 'Barang'
        end
        item
          FieldName = 'tersedia'
          Title.Alignment = taCenter
          Title.Caption = 'tersedia'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 68
          ReadOnly = True
          Sortable = True
          GroupHeader = 'Barang'
        end
        item
          FieldName = 'harga_satuan'
          Title.Alignment = taCenter
          Title.Caption = 'harga'
          Title.Color = clWindow
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Width = 100
          ReadOnly = True
          GroupHeader = 'Barang'
        end>
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 734
      Top = 53
      Width = 160
      Height = 252
      Hint = ''
      Visible = True
      object feKelompok: TUniEdit
        Left = 16
        Top = 104
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 1
      end
      object feKode: TUniEdit
        Left = 16
        Top = 132
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 2
      end
      object feBarang: TUniEdit
        Left = 16
        Top = 160
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 3
      end
      object feSatuan: TUniEdit
        Left = 16
        Top = 188
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 4
      end
      object feSpek: TUniEdit
        Left = 16
        Top = 216
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 5
      end
      object feSumber: TUniEdit
        Left = 16
        Top = 16
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 6
      end
      object feProgram: TUniEdit
        Left = 16
        Top = 44
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 7
      end
      object feBidang: TUniEdit
        Left = 16
        Top = 72
        Width = 121
        Hint = ''
        Text = ''
        TabOrder = 8
        ReadOnly = True
      end
    end
    object btRefresh: TUniBitBtn
      Left = 1
      Top = 1
      Width = 934
      Height = 25
      Hint = ''
      Caption = 'Refresh Data'
      Align = alTop
      TabOrder = 3
      OnClick = btRefreshClick
      ExplicitLeft = 472
      ExplicitTop = 16
      ExplicitWidth = 75
    end
  end
  object qPilihPemakaian: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      
        'SELECT        A.tahun, D.kode AS kode_unit, E.Nama_Subunit, E.Ke' +
        'terangan, A.sumber, D.bidang, A.program_kegiatan, A.kode_ssh, B.' +
        'nama, B.satuan, B.spek, SUM(A.a_qty) + SUM(A.d_qty) - SUM(A.k_qt' +
        'y) AS tersedia, '
      'AVG(A.harga_satuan) AS harga_satuan'
      
        'FROM            (SELECT        tahun, kode_ssh, kode_unitkerja, ' +
        'qty AS a_qty, 0 AS d_qty, 0 AS k_qty, harga_satuan, supplier AS ' +
        'sumber, program_kegiatan'
      
        '                          FROM            db_persediaan.dbo.data' +
        '_saldo'
      '                          UNION ALL'
      
        '                          SELECT        DATEPART(YEAR, tanggal) ' +
        'AS tahun, kode_ssh, kode_unitkerja, 0 AS a_qty, SUM(qty) AS d_qt' +
        'y, 0 AS k_qty, AVG(harga_satuan) AS harga_satuan, '#39'Pembelian'#39' AS' +
        ' sumber, program_kegiatan'
      
        '                          FROM            db_persediaan.dbo.data' +
        '_pembelian'
      
        '                          GROUP BY DATEPART(YEAR, tanggal), kode' +
        '_ssh, kode_unitkerja, program_kegiatan'
      '                          UNION ALL'
      
        '                          SELECT        DATEPART(YEAR, tanggal) ' +
        'AS tahun, kode_ssh, kode_unitkerja, 0 AS a_qty, 0 AS d_qty, SUM(' +
        'qty) AS k_qty, AVG(harga_satuan) AS harga_satuan, sumber, progra' +
        'm_kegiatan'
      
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
      ''
      
        'WHERE A.tahun =:tahun AND D.kode =:kode_unit AND D.bidang =:bida' +
        'ng AND A.program_kegiatan LIKE :program_kegiatan AND'
      
        'A.kode_ssh LIKE :kode_ssh AND B.nama LIKE :nama AND B.satuan LIK' +
        'E :satuan AND A.sumber LIKE :sumber AND B.spek LIKE :spek'
      ''
      
        'GROUP BY A.tahun, A.sumber, A.kode_ssh, A.program_kegiatan, B.na' +
        'ma, B.satuan, B.spek, D.bidang, B.tahun, E.Nama_Subunit, E.Keter' +
        'angan, D.kode'
      ''
      'ORDER BY sumber DESC, bidang, program_kegiatan, tersedia DESC')
    Left = 440
    Top = 65
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
      end
      item
        Name = 'BIDANG'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'PROGRAM_KEGIATAN'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'KODE_SSH'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'NAMA'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'SATUAN'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'SUMBER'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end
      item
        Name = 'SPEK'
        DataType = ftString
        ParamType = ptInput
        Value = '%%'
      end>
    object qPilihPemakaiantahun: TIntegerField
      FieldName = 'tahun'
      Origin = 'tahun'
      ReadOnly = True
    end
    object qPilihPemakaiankode_unit: TStringField
      FieldName = 'kode_unit'
      Origin = 'kode_unit'
      ReadOnly = True
      Size = 30
    end
    object qPilihPemakaianbidang: TStringField
      FieldName = 'bidang'
      Origin = 'bidang'
      ReadOnly = True
      Size = 80
    end
    object qPilihPemakaianprogram_kegiatan: TStringField
      FieldName = 'program_kegiatan'
      Origin = 'program_kegiatan'
      ReadOnly = True
      Size = 150
    end
    object qPilihPemakaiankode_ssh: TStringField
      FieldName = 'kode_ssh'
      Origin = 'kode_ssh'
      ReadOnly = True
      Size = 30
    end
    object qPilihPemakaiannama: TStringField
      FieldName = 'nama'
      Origin = 'nama'
      ReadOnly = True
      Size = 100
    end
    object qPilihPemakaiansatuan: TStringField
      FieldName = 'satuan'
      Origin = 'satuan'
      ReadOnly = True
      Size = 50
    end
    object qPilihPemakaianspek: TStringField
      FieldName = 'spek'
      Origin = 'spek'
      ReadOnly = True
      Size = 80
    end
    object qPilihPemakaiansumber: TStringField
      FieldName = 'sumber'
      Origin = 'sumber'
      ReadOnly = True
      Size = 100
    end
    object qPilihPemakaiantersedia: TIntegerField
      FieldName = 'tersedia'
      Origin = 'tersedia'
      ReadOnly = True
    end
    object qPilihPemakaianharga_satuan: TCurrencyField
      FieldName = 'harga_satuan'
      Origin = 'harga_satuan'
      ReadOnly = True
    end
  end
  object dsPilihPemakaian: TDataSource
    AutoEdit = False
    DataSet = qPilihPemakaian
    Left = 522
    Top = 65
  end
end
