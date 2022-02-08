object ufrmUtilitasPembukuanParam: TufrmUtilitasPembukuanParam
  Left = 0
  Top = 0
  ClientHeight = 232
  ClientWidth = 337
  Caption = 'Silahkan Isi Parameter Dulu . . .'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btBatal: TUniButton
    Left = 248
    Top = 190
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Batal'
    TabOrder = 7
    OnClick = btBatalClick
  end
  object btOk: TUniButton
    Left = 159
    Top = 190
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Ok'
    TabOrder = 8
    OnClick = btOkClick
  end
  object pdtAwal: TUniDateTimePicker
    Left = 8
    Top = 125
    Width = 315
    Hint = ''
    DateTime = 44450.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 5
    FieldLabel = 'Mulai'
  end
  object pdtAkhir: TUniDateTimePicker
    Left = 8
    Top = 153
    Width = 315
    Hint = ''
    DateTime = 44450.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'HH:mm:ss'
    TabOrder = 6
    FieldLabel = 'Akhir'
  end
  object cbJenisDok: TUniComboBox
    Left = 8
    Top = 8
    Width = 315
    Hint = ''
    Text = ''
    TabOrder = 0
    EmptyText = 'Silahkan Pilih Jenis'
    IconItems = <>
    ReadOnlyMode = urmNotEditable
  end
  object edTA: TUniEdit
    Left = 8
    Top = 36
    Width = 315
    Hint = ''
    Text = 'TAHUN'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 1
    Color = clSilver
    FieldLabel = 'TA'
    ReadOnlyMode = urmNotEditable
  end
  object cbSKPD: TUniComboBox
    Left = 8
    Top = 95
    Width = 315
    Hint = ''
    Text = ''
    TabOrder = 3
    EmptyText = 'Silahkan Pilih SKPD'
    FieldLabel = 'SKPD'
    IconItems = <>
    ReadOnlyMode = urmNotEditable
  end
  object cbSemester: TUniComboBox
    Left = 8
    Top = 65
    Width = 315
    Hint = ''
    Text = ''
    Items.Strings = (
      'I (SATU)'
      'II (DUA)'
      'PERIODE')
    TabOrder = 2
    FieldLabel = 'Semester'
    IconItems = <>
    ReadOnlyMode = urmNotEditable
    OnChange = cbSemesterChange
  end
  object edNomorBukti: TUniEdit
    Left = 8
    Top = 125
    Width = 315
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    Text = ''
    TabOrder = 4
    Color = clInfoBk
    EmptyText = 'Silahkan Masukan Nomor Bukti'
    FieldLabel = 'Nomor Bukti'
    InputType = 'text'
    ReadOnlyMode = urmNotEditable
  end
  object qSKPD: TFDQuery
    Connection = UniMainModule.FDConnection
    SQL.Strings = (
      'SELECT * FROM keu_2021.dbo.ref_sub_unit'
      'WHERE nm_sub_unit NOT LIKE '#39'Puskesmas%'#39' AND '
      'nm_sub_unit NOT LIKE '#39'SDN%'#39' AND '
      'nm_sub_unit NOT LIKE '#39'SMPN%'#39' AND '
      'nm_sub_unit NOT LIKE '#39'%BLUD'#39)
    Left = 94
    Top = 64
    object qSKPDkd_urusan: TByteField
      FieldName = 'kd_urusan'
      Origin = 'kd_urusan'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSKPDkd_bidang: TByteField
      FieldName = 'kd_bidang'
      Origin = 'kd_bidang'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSKPDkd_unit: TByteField
      FieldName = 'kd_unit'
      Origin = 'kd_unit'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSKPDkd_sub: TSmallintField
      FieldName = 'kd_sub'
      Origin = 'kd_sub'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSKPDnm_sub_unit: TStringField
      FieldName = 'nm_sub_unit'
      Origin = 'nm_sub_unit'
      Required = True
      Size = 255
    end
  end
end
