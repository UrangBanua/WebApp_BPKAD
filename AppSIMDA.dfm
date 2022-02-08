object frmAppSimda: TfrmAppSimda
  Left = 0
  Top = 0
  Width = 972
  Height = 713
  Hint = 'SIMDA'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 680
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    object unfABC1: TUniFSButton
      Left = 64
      Top = 311
      Width = 241
      Height = 105
      Hint = ''
      StyleButton = GoogleNarrowRound
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Simda Web (UjiCoba)'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 1
      Images = UniMainModule.imgButton
      ImageIndex = 2
      OnClick = unfABC1Click
    end
    object unfDetailAbsen: TUniFSButton
      Left = 64
      Top = 455
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
      TabOrder = 2
      Images = UniMainModule.imgButton
      ImageIndex = 3
    end
    object unfUtilitasPelaporan: TUniFSButton
      Left = 64
      Top = 167
      Width = 241
      Height = 105
      Hint = ''
      StyleButton = GoogleNarrowRound
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Utilitas Pelaporan'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 3
      Images = UniMainModule.imgButton
      ImageIndex = 1
      OnClick = unfUtilitasPelaporanClick
    end
    object unfUtilitasPembukuan: TUniFSButton
      Left = 64
      Top = 23
      Width = 241
      Height = 105
      Hint = 'SIMDA Online'
      StyleButton = GoogleNarrowRound
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Utilitas Pembukuan'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 4
      Images = UniMainModule.imgButton
      ImageIndex = 0
      OnClick = unfUtilitasPembukuanClick
    end
  end
  object uPanelBottom: TUniPanel
    Left = 0
    Top = 680
    Width = 972
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
    Left = 392
    Top = 224
    object LaporanAnggaranVSRealisasiBelanjaPerSubRincianObject1: TUniMenuItem
      Caption = 
        'Laporan Anggaran VS Realisasi Belanja Per SubRincian Object (P90' +
        ')'
      OnClick = LaporanAnggaranVSRealisasiBelanjaPerSubRincianObject1Click
    end
    object N1: TUniMenuItem
      Caption = '. . . . .'
    end
  end
end
