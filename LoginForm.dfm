object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  ClientHeight = 400
  ClientWidth = 700
  Caption = 'Form Login BPKAD'
  OnShow = UniLoginFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  OnActivate = UniLoginFormActivate
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  ClientEvents.ExtEvents.Strings = (
    
      'form.afterrender=function form.afterrender(sender, eOpts)'#13#10'{'#13#10'  ' +
      'sender.body.addCls('#39'LoginBackground'#39');'#13#10'}')
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'  config.baseCls='#39'frmLogin'#39';'#13#10'}')
  Layout = 'hbox'
  OnCreate = UniLoginFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 400
    Hint = ''
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = clWhite
    LayoutConfig.Flex = 1
    LayoutConfig.Height = '100%'
    object uiLogo: TUniImage
      Left = 14
      Top = 15
      Width = 369
      Height = 282
      Hint = ''
      Center = True
      Stretch = True
    end
    object UniPanel5: TUniPanel
      Left = 1
      Top = 371
      Width = 360
      Height = 1
      Hint = ''
      TabOrder = 2
      BorderStyle = ubsNone
      Caption = ''
      Color = 16440540
    end
    object UniLabel_Powered: TUniLabel
      Left = 10
      Top = 387
      Width = 102
      Height = 10
      Hint = ''
      Caption = 'Powered by ExtJS framework'
      ParentFont = False
      Font.Color = 9276813
      Font.Height = -8
      TabOrder = 3
    end
    object UniLabel_TitleVersion: TUniLabel
      Left = 298
      Top = 387
      Width = 47
      Height = 10
      Hint = ''
      Caption = 'ver: 1.0.1.141'
      ParentFont = False
      Font.Color = 9276813
      Font.Height = -8
      TabOrder = 4
    end
    object UniLabel_TitleAppS: TUniLabel
      Left = 113
      Top = 231
      Width = 179
      Height = 16
      Hint = ''
      Visible = False
      Caption = 'Kabupaten Hulu Sungai Tengah'
      ParentFont = False
      Font.Color = 9276813
      Font.Height = -13
      TabOrder = 5
    end
    object UniLabel_TitleAppA: TUniLabel
      Left = 14
      Top = 204
      Width = 369
      Height = 21
      Hint = ''
      Visible = False
      Alignment = taCenter
      Caption = 'Badan Pengelola Keuagan dan Aset Daerah'
      ParentFont = False
      Font.Color = 12280084
      Font.Height = -17
      Font.Style = [fsBold]
      TabOrder = 6
    end
    object uhtmlTags: TUniHTMLMemo
      Left = 14
      Top = 303
      Width = 369
      Height = 62
      Hint = ''
      BorderStyle = ubsNone
      Lines.Strings = (
        
          '<p style="text-align: center;font-size:2vw;"><span style="color:' +
          ' #999999;"><sub><sup>#Publik #Pengumuman #Panduan #BPKAD#Visi Mi' +
          'si #Tujuan #Tugas dan Fungsi #Strategi Kebijakan #Struktur Organ' +
          'isasi #Transparansi APBD #TA 2021 #TA 2020 #TA 2019 #TA 2018 #Ap' +
          'likasi #SIPD #SIMDA #PERSEDIAAN #SIMGAJI #ABSENSI #ARJUNA #Lapor' +
          'an Keuangan #Arus Kas #Operasional #Perubahan Ekuitas #Perubahan' +
          ' Saldo Awal #Realisasi Anggaran #Neraca #Downloads #Aplikasi BPK' +
          'AD #Aplikasi Pihak Ketiga #Manual Book</sup></sub></span></p>')
      ReadOnly = True
      Color = clWindow
      TabOrder = 7
      TabStop = False
      ShowToolbar = False
      LayoutConfig.Cls = 'customBorderNone'
    end
  end
  object UniPanel3: TUniPanel
    Left = 399
    Top = 0
    Width = 300
    Height = 400
    Hint = ''
    TabOrder = 1
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
        #39'pnlRight'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    Color = clNone
    LayoutConfig.Height = '100%'
    object UniLabel3: TUniLabel
      Left = 55
      Top = 39
      Width = 44
      Height = 19
      Hint = ''
      Caption = 'Login'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniLabel_LoginHello: TUniLabel
      Left = 55
      Top = 64
      Width = 106
      Height = 13
      Hint = ''
      Caption = 'Hello, let'#39's get started'
      ParentFont = False
      Font.Color = clWhite
      TabOrder = 2
    end
    object UniPanel4: TUniPanel
      Left = 55
      Top = 184
      Width = 200
      Height = 24
      Hint = ''
      TabOrder = 3
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.styl' +
          'e={'#39'border-bottom'#39':'#39'1px solid #73b0ed'#39'};'#13#10'}')
      BorderStyle = ubsNone
      Caption = ''
      Color = clNone
      object UniImage2: TUniImage
        Left = 188
        Top = 4
        Width = 12
        Height = 12
        Hint = ''
        Stretch = True
        Url = 'files/images/user.svg'
      end
      object edUsername: TUniEdit
        Left = 0
        Top = 0
        Width = 187
        Hint = ''
        Text = ''
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        EmptyText = 'User ID'
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'loginInput'#39';'#13#10'  config.readOnly=true;'#13#10'  config.listeners={'#13#10'  ' +
            ' focus: function(edt){'#13#10'      edt.setReadOnly(false);'#13#10'   }'#13#10'  }' +
            #13#10'}')
        OnKeyDown = edPasswordKeyDown
      end
    end
    object UniPanel6: TUniPanel
      Left = 55
      Top = 232
      Width = 200
      Height = 24
      Hint = ''
      TabOrder = 4
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.styl' +
          'e={'#39'border-bottom'#39':'#39'1px solid #73b0ed'#39'};'#13#10'}')
      BorderStyle = ubsNone
      Caption = ''
      Color = clNone
      object UniImage4: TUniImage
        Left = 188
        Top = 4
        Width = 12
        Height = 12
        Cursor = crHandPoint
        Hint = ''
        Stretch = True
        Url = 'files/images/key.svg'
        OnClick = UniImage4Click
      end
      object edPassword: TUniEdit
        Left = 0
        Top = 0
        Width = 187
        Hint = ''
        PasswordChar = '*'
        Text = ''
        ParentFont = False
        Font.Color = clWhite
        TabOrder = 2
        EmptyText = 'Password'
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
            #39'loginInput'#39';'#13#10'  config.readOnly=true;'#13#10'  config.listeners={'#13#10'  ' +
            ' focus: function(edt){'#13#10'      edt.setReadOnly(false);'#13#10'   }'#13#10'  }' +
            #13#10'}')
        OnKeyDown = edPasswordKeyDown
      end
    end
    object UniLabel9: TUniLabel
      Left = 55
      Top = 312
      Width = 86
      Height = 13
      Hint = ''
      Caption = 'Forget password?'
      ParentFont = False
      Font.Color = 15584174
      TabOrder = 5
    end
    object UniLabel10: TUniLabel
      Left = 147
      Top = 312
      Width = 33
      Height = 13
      Hint = ''
      Caption = 'Reset'
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 6
    end
    object UniButton_Login: TUniButton
      Left = 194
      Top = 302
      Width = 63
      Height = 25
      Hint = ''
      Caption = ''
      TabOrder = 7
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'btnLogin'#39';'#13#10'  config.iconCls='#39'btnLoginIcon'#39';'#13#10'  config.icon='#39'fi' +
          'les/images/arrow.svg'#39';'#13#10'}')
      IconCls = 'action'
      OnClick = UniButton_LoginClick
    end
    object UniCB_ModeLogin: TUniComboBox
      Left = 112
      Top = 136
      Width = 145
      Hint = ''
      Text = ''
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 8
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.cls=' +
          #39'loginInput'#39';'#13#10'}')
      EmptyText = 'PIlih Mode Login disini'
      FieldLabelFont.Color = clWhite
      FieldLabelFont.Style = [fsBold]
      IconItems = <>
      OnKeyDown = edPasswordKeyDown
      OnChange = UniCB_ModeLoginChange
    end
    object UniLabel1: TUniLabel
      Left = 55
      Top = 139
      Width = 48
      Height = 13
      Hint = ''
      Caption = 'Sebagai  :'
      ParentFont = False
      Font.Color = clWhite
      TabOrder = 9
    end
  end
  object FDQueryLogin: TFDQuery
    Connection = UniMainModule.FDConnection
    Left = 336
    Top = 248
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
    Left = 301
    Top = 48
  end
end
