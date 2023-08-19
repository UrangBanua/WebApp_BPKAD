object ufrmPersediaanPilihPembelian: TufrmPersediaanPilihPembelian
  Left = 0
  Top = 0
  ClientHeight = 320
  ClientWidth = 936
  Caption = 'Pilih Barang'
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
    Width = 936
    Height = 320
    Hint = ''
    Align = alClient
    TabOrder = 0
    TitleVisible = True
    TitleAlign = taCenter
    Title = 'Pilih Barang yang Tersedia'
    Caption = 'UniPanel1'
    object dbgSSH: TUniDBGrid
      Left = 1
      Top = 1
      Width = 934
      Height = 318
      Hint = ''
      HeaderTitleAlign = taCenter
      TitleFont.Style = [fsBold]
      DataSource = dsPilihPembelian
      WebOptions.FetchAll = True
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 1
      OnBodyDblClick = dbgSSHBodyDblClick
      OnClearFilters = dbgSSHClearFilters
      OnColumnFilter = dbgSSHColumnFilter
      Columns = <
        item
          FieldName = 'nama_kel'
          Filtering.Enabled = True
          Filtering.Editor = feKelompok
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'Nama Kelompok'
          Title.Font.Style = [fsBold]
          Width = 94
          ReadOnly = True
          GroupHeader = 'Kelompok'
        end
        item
          FieldName = 'kode_kel'
          Title.Alignment = taCenter
          Title.Caption = 'kode_kel'
          Title.Font.Style = [fsBold]
          Width = 128
          ReadOnly = True
          GroupHeader = 'Kelompok'
        end
        item
          FieldName = 'kode'
          Filtering.Enabled = True
          Filtering.Editor = feKode
          Filtering.ChangeDelay = 300
          Title.Alignment = taCenter
          Title.Caption = 'Kode'
          Title.Font.Style = [fsBold]
          Width = 149
          ReadOnly = True
          GroupHeader = 'Barang'
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
          ReadOnly = True
          GroupHeader = 'Barang'
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
          ReadOnly = True
          GroupHeader = 'Barang'
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
          ReadOnly = True
          GroupHeader = 'Barang'
        end
        item
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Title.Font.Style = [fsBold]
          Width = 81
          ReadOnly = True
          GroupHeader = 'Barang'
        end
        item
          FieldName = 'ket_teks'
          Title.Alignment = taCenter
          Title.Caption = 'Keterangan'
          Title.Font.Style = [fsBold]
          Width = 100
          Font.Color = clMaroon
          Font.Style = [fsUnderline]
          DisplayMemo = True
          GroupHeader = 'Barang'
        end>
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 734
      Top = 53
      Width = 160
      Height = 172
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
    end
  end
  object dsPilihPembelian: TDataSource
    AutoEdit = False
    DataSet = qPilihPembelian
    Left = 522
    Top = 65
  end
  object qPilihPembelian: TFDQuery
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
    object qPilihPembeliankode: TStringField
      FieldName = 'kode'
      Origin = 'kode'
      Size = 30
    end
    object qPilihPembeliannama: TStringField
      FieldName = 'nama'
      Origin = 'nama'
      Size = 100
    end
    object qPilihPembeliansatuan: TStringField
      FieldName = 'satuan'
      Origin = 'satuan'
      Size = 50
    end
    object qPilihPembelianspek: TStringField
      FieldName = 'spek'
      Origin = 'spek'
      Size = 80
    end
    object qPilihPembelianket_teks: TMemoField
      FieldName = 'ket_teks'
      Origin = 'ket_teks'
      BlobType = ftMemo
    end
    object qPilihPembeliankelompok: TByteField
      FieldName = 'kelompok'
      Origin = 'kelompok'
    end
    object qPilihPembelianharga: TCurrencyField
      FieldName = 'harga'
      Origin = 'harga'
    end
    object qPilihPembeliankode_kel: TStringField
      FieldName = 'kode_kel'
      Origin = 'kode_kel'
      Size = 30
    end
    object qPilihPembeliannama_kel: TStringField
      FieldName = 'nama_kel'
      Origin = 'nama_kel'
      Size = 40
    end
    object qPilihPembelianupdate_at: TSQLTimeStampField
      FieldName = 'update_at'
      Origin = 'update_at'
      Required = True
    end
    object qPilihPembelianupdated_user: TIntegerField
      FieldName = 'updated_user'
    end
  end
end
