object ufrmUtilitasPembukuan: TufrmUtilitasPembukuan
  Left = 0
  Top = 0
  ClientHeight = 518
  ClientWidth = 585
  Caption = 'Utilitas Pembukuan'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  PixelsPerInch = 96
  TextHeight = 13
  object btRebuildJurnalJenisDokumen: TUniFSButton
    Left = 8
    Top = 151
    Width = 241
    Height = 58
    Hint = ''
    StyleButton = GoogleNarrowRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Rebuild Jurnal Per No Bukti'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Roboto'
    TabOrder = 0
    Images = UniMainModule.imgButton
    ImageIndex = 2
    OnClick = btRebuildJurnalJenisDokumenClick
  end
  object MemoOutput: TUniMemo
    Left = 264
    Top = 8
    Width = 311
    Height = 497
    Hint = ''
    Lines.Strings = (
      'Memo Output')
    ParentFont = False
    Font.Color = clLime
    Color = clInactiveCaptionText
    TabOrder = 1
  end
  object btPostingAll: TUniFSButton
    Left = 8
    Top = 8
    Width = 241
    Height = 58
    Hint = ''
    StyleButton = GoogleNarrowRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Posting All Per SKPD'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Roboto'
    TabOrder = 2
    Images = UniMainModule.imgButton
    ImageIndex = 2
    OnClick = btPostingAllClick
  end
  object btUnpostingAll: TUniFSButton
    Left = 8
    Top = 79
    Width = 241
    Height = 58
    Hint = ''
    StyleButton = GoogleNarrowRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Unposting All Per SKPD'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Roboto'
    TabOrder = 3
    Images = UniMainModule.imgButton
    ImageIndex = 2
    OnClick = btUnpostingAllClick
  end
  object btShowDataLog: TUniFSButton
    Left = 8
    Top = 447
    Width = 241
    Height = 58
    Hint = ''
    StyleButton = GoogleNarrowRound
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Tampilkan History User'
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Roboto'
    TabOrder = 4
    Images = UniMainModule.imgButton
    ImageIndex = 2
    OnClick = btShowDataLogClick
  end
  object sp_StoredProcedureAll: TFDStoredProc
    Connection = UniMainModule.FDConnection
    Left = 112
    Top = 48
  end
end
