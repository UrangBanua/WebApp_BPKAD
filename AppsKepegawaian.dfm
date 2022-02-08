object frmKepegaiwaian: TfrmKepegaiwaian
  Left = 0
  Top = 0
  Width = 972
  Height = 713
  Hint = 'ABSENSI'
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
    object unfRekapAbsen: TUniFSButton
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
      Caption = 'Rekap Absensi'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, e, eOpts)'#13#10'{'#13#10'  window.open("https:' +
          '//laporan:Bpkad123@bpkad.hulusungaitengahkab.go.id:446/ReportSer' +
          'ver/Pages/ReportViewer.aspx?%2fReports_Absensi%2f_Summary_Rekap_' +
          'Absensi_Periode_v2&rs:Command=Render", "_blank", "toolbar=no,loc' +
          'ation=no,status=yes,menubar=no,directories=no,scrollbars=yes,res' +
          'izable=yes,width=950,height=650");'#65279#13#10'}')
      Images = UniMainModule.imgButton
      ImageIndex = 2
      OnClick = unfRekapAbsenClick
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
      Caption = 'Detail Absensi Pegawai'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, e, eOpts)'#13#10'{'#13#10'   window.open("https' +
          '://laporan:Bpkad123@bpkad.hulusungaitengahkab.go.id:446/ReportSe' +
          'rver/Pages/ReportViewer.aspx?%2fReports_Absensi%2f_Rekap_Absensi' +
          '_Periode_v2&rs:Command=Render", "_blank", "toolbar=no,location=n' +
          'o,status=yes,menubar=no,directories=no,scrollbars=yes,resizable=' +
          'yes,width=950,height=650");'#65279#13#10'}')
      Images = UniMainModule.imgButton
      ImageIndex = 3
      OnClick = unfDetailAbsenClick
    end
    object unfRoster: TUniFSButton
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
      Caption = 'Roster / Jam Kerja'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 3
      Images = UniMainModule.imgButton
      ImageIndex = 1
    end
    object unfKepegaiwaian: TUniFSButton
      Left = 64
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
      Caption = 'Data Kepegawaian'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Roboto'
      TabOrder = 4
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, e, eOpts)'#13#10'{'#13#10'   window.open("https' +
          '://laporan:Bpkad123@bpkad.hulusungaitengahkab.go.id:446/ReportSe' +
          'rver/Pages/ReportViewer.aspx?%2fReports_Absensi%2f_Data_Pegawai&' +
          'rs:Command=Render", "_blank", "toolbar=no,location=no,status=yes' +
          ',menubar=no,directories=no,scrollbars=yes,resizable=yes,width=95' +
          '0,height=650");'#65279#13#10'}')
      Images = UniMainModule.imgButton
      ImageIndex = 0
      OnClick = unfKepegaiwaianClick
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
end
