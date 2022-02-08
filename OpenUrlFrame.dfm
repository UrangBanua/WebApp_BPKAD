object FrmOpenUrlFrame: TFrmOpenUrlFrame
  Left = 0
  Top = 0
  Width = 972
  Height = 713
  Hint = 'Laporan'
  OnCreate = UniFrameCreate
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
    object uURLFrame: TUniURLFrame
      Left = 1
      Top = 1
      Width = 970
      Height = 678
      Hint = ''
      Align = alClient
      TabOrder = 1
      ParentColor = False
      Color = clBtnFace
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
    object UniBitBtn1: TUniBitBtn
      Left = 896
      Top = 1
      Width = 75
      Height = 31
      Hint = ''
      Caption = 'Back'
      Align = alRight
      TabOrder = 3
      Images = UniMainModule.UniImageList
      OnClick = UniBitBtn1Click
    end
  end
end
