object frmSetting: TfrmSetting
  Left = 0
  Top = 0
  Width = 823
  Height = 715
  Hint = 'User Setting'
  TabOrder = 0
  AutoScroll = True
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 715
    Hint = ''
    Align = alLeft
    TabOrder = 0
    Caption = 'UniPanel1'
    object ugSKPD: TUniGroupBox
      Left = 14
      Top = 15
      Width = 267
      Height = 239
      Cursor = crHandPoint
      Hint = ''
      Caption = 'PROFILE SKPD'
      TabOrder = 1
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
    end
  end
  object UniPanel2: TUniPanel
    Left = 297
    Top = 0
    Width = 526
    Height = 715
    Hint = ''
    Align = alClient
    TabOrder = 1
    Caption = 'UniPanel2'
    object UniGroupBox1: TUniGroupBox
      Left = 22
      Top = 15
      Width = 483
      Height = 370
      Cursor = crHandPoint
      Hint = ''
      Caption = 'MODE SKPD'
      TabOrder = 1
      ParentFont = False
      Font.Style = [fsBold]
      object UniDBText2: TUniDBText
        Left = 2
        Top = 352
        Width = 479
        Height = 16
        Hint = ''
        DataField = 'keterangan'
        DataSource = dsProfile
        Alignment = taCenter
        AutoSize = False
        Align = alBottom
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold, fsUnderline]
      end
      object udbSKPD: TUniDBListBox
        Left = 48
        Top = 39
        Width = 401
        Height = 147
        Hint = ''
        DataField = 'Nama_Subunit'
        DataSource = dsProfile
        TabOrder = 2
      end
      object UniDBNavigator1: TUniDBNavigator
        Left = 48
        Top = 192
        Width = 401
        Height = 47
        Hint = ''
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 3
      end
      object ubtSimpan: TUniBitBtn
        Left = 255
        Top = 245
        Width = 194
        Height = 65
        Hint = ''
        Caption = 'Simpan'
        TabOrder = 4
      end
      object ubtEdit: TUniBitBtn
        Left = 48
        Top = 245
        Width = 193
        Height = 65
        Hint = ''
        Caption = 'Edit'
        TabOrder = 5
      end
    end
  end
  object dsProfile: TDataSource
    AutoEdit = False
    DataSet = UniMainModule.qProfile
    Left = 128
    Top = 273
  end
end
