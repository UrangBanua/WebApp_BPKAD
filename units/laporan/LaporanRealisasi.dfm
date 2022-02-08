object frmLaporanRealisasi: TfrmLaporanRealisasi
  Left = 0
  Top = 0
  Width = 628
  Height = 617
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 584
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    object unfDetailAbsen: TUniFSButton
      Left = 39
      Top = 359
      Width = 241
      Height = 105
      Hint = ''
      StyleButton = GoogleNarrowRound
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = '. . .'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 1
      Images = UniMainModule.imgButton
      ImageIndex = 3
    end
    object UniGroupBox1: TUniGroupBox
      Left = 23
      Top = 24
      Width = 274
      Height = 281
      Hint = ''
      Caption = 'Anggaran VS Realisasi'
      TabOrder = 2
      object btLaporanRealisasi_Pendatapan: TUniFSButton
        Left = 16
        Top = 23
        Width = 241
        Height = 105
        Hint = ''
        StyleButton = GoogleNarrowRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Pendapatan / Belanja'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 1
        Images = UniMainModule.imgButton
        ImageIndex = 1
        OnClick = btLaporanRealisasi_PendatapanClick
      end
      object btLaporanRealisasi_Belanja: TUniFSButton
        Left = 16
        Top = 159
        Width = 241
        Height = 105
        Hint = 'SIMDA Online'
        StyleButton = GoogleNarrowRound
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Pendapatan / Belanja PerSKPD'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Roboto'
        TabOrder = 2
        Images = UniMainModule.imgButton
        ImageIndex = 0
        OnClick = btLaporanRealisasi_BelanjaClick
      end
    end
  end
  object uPanelBottom: TUniPanel
    Left = 0
    Top = 584
    Width = 628
    Height = 33
    Hint = ''
    Align = alBottom
    TabOrder = 1
    Caption = ''
    object uPanelGaris: TUniPanel
      Left = 1
      Top = 7
      Width = 500
      Height = 1
      Hint = ''
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      Color = 16440540
    end
    object UniLabel_Powered: TUniLabel
      Left = 3
      Top = 14
      Width = 128
      Height = 10
      Hint = ''
      Caption = 'Created By Tim SysDev BPKAD HST'
      ParentFont = False
      Font.Color = 9276813
      Font.Height = -8
      TabOrder = 2
    end
  end
  object upopUtilitasPelaporan: TUniPopupMenu
    Left = 352
    Top = 184
    object LaporanAnggaranVSRealisasiBelanjaPerSubRincianObject1: TUniMenuItem
      Caption = 
        'Laporan Anggaran VS Realisasi Belanja Per SubRincian Object (P90' +
        ')'
    end
    object N1: TUniMenuItem
      Caption = '. . . . .'
    end
  end
end
