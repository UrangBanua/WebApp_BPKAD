unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Data.DB, Data.Win.ADODB,
  uniPanel, uniPageControl, uniGUIBaseClasses, uniTreeView,
  uniImage, uniGUIFrame, uniLabel, uniImageList,
  uniButton, uniBitBtn, UniFSButton, UniFSConfirm, uniMultiItem, uniComboBox,
  Vcl.Imaging.pngimage, uniSplitter, uniHTMLFrame, uniStatusBar;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    UniTreeMainMenu: TUniTreeView;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    UniTreeSettingMenu: TUniTreeView;
    UniFSConfirm: TUniFSConfirm;
    btnRecolherMenu: TUniFSButton;
    btnExpandirMenu: TUniFSButton;
    cmbSearch: TUniComboBox;
    UniSplitter1: TUniSplitter;
    uhtmlChatBot: TUniHTMLFrame;
    uStatusBar: TUniStatusBar;
    UniPanel4: TUniPanel;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniImage1: TUniImage;
    procedure UniTreeMainMenuClick(Sender: TObject);
    procedure UniTreeSettingMenuClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure cmbSearchChange(Sender: TObject);
    procedure btnExpandirMenuClick(Sender: TObject);
    procedure btnRecolherMenuClick(Sender: TObject);
  private
    { Private declarations }
    procedure UserRolesAccess;
  public
    Procedure OpenFrame( FClassName, Caption : string );
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, uniStrUtils;


function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.UserRolesAccess;
var
  RootNode, ListNode : TUniTreeNode;
begin
  RootNode := nil;
  ListNode := nil;

// bersihkan Menu
  UniTreeMainMenu.Items.Clear;

  with UniMainModule do
  begin
    qLoginUser.SQL.Clear;
    qLoginUser.SQL.Add('SELECT tbl_Users.Username '+
             ',tbl_Users.Category '+
             ',tbl_Users.RoleAccess '+
             ',tbl_UserAccess.Menu '+
             ',tbl_UserAccess.TNode '+
             ',tbl_UserAccess.ANode '+
             'FROM dbo.tbl_Users '+
             'INNER JOIN dbo.tbl_UserAccess '+
             'ON tbl_Users.Category = tbl_UserAccess.Category '+
             'AND tbl_Users.RoleAccess = tbl_UserAccess.RoleAccess '+
             'WHERE tbl_Users.Id=' + UserId.ToString +
             'ORDER BY NNode');

    try
      qLoginUser.Open;
      // move to the first record
      qLoginUser.First;

      while(not qLoginUser.EOF) do
      begin
        // Tambahkan Menu Root
        if qLoginUserTNode.Value = 0 then
        begin
          RootNode := UniTreeMainMenu.Items.AddChild(nil, qLoginUserMenu.AsString);
          RootNode.Expanded := True;
          RootNode.ImageIndex := 0;
          // Non Aktifkan Menu
          if qLoginUserANode.Value = False then
          RootNode.Enabled := False;
        end else

        // Tambahkan Menu List
        if qLoginUserTNode.Value = 1 then
        begin
          ListNode := UniTreeMainMenu.Items.AddChild(RootNode, qLoginUserMenu.AsString);
          ListNode.ImageIndex := 2;
          // Non Aktifkan Menu
          if qLoginUserANode.Value = False then
          ListNode.Enabled := False;
        end;

        //move to the next record
        qLoginUser.Next;
      end;
    finally
      qLoginUser.Close;
    end;

  end;

end;

procedure TMainForm.btnExpandirMenuClick(Sender: TObject);
begin
  UniTreeMainMenu.FullExpand;
end;

procedure TMainForm.btnRecolherMenuClick(Sender: TObject);
begin
  UniTreeMainMenu.FullCollapse;
end;


procedure TMainForm.cmbSearchChange(Sender: TObject);
var
  S : string;
  I : Integer;
  aExpand : Boolean;
begin
  cmbSearch.text := LowerCase(Trim(cmbSearch.text));

  if (Length(cmbSearch.text) > 1) or (cmbSearch.text = '') then
  begin
    aExpand := cmbSearch.text<>'';
    UniTreeMainMenu.BeginUpdate;
    try
      UniTreeMainMenu.ResetData;
      for I := 0 to UniTreeMainMenu.Items.Count - 1 do
      begin
        S := LowerCase(UniTreeMainMenu.Items[I].Text);
        UniTreeMainMenu.Items[I].Visible := (Length(cmbSearch.text) = 0) or (Pos(cmbSearch.text, S)>0);
        UniTreeMainMenu.Items[I].Expanded := aExpand;
      end;
    finally
      UniTreeMainMenu.EndUpdate;
    end;
  end;

end;


procedure TMainForm.OpenFrame(FClassName, Caption: string);
var
  Ts : TUniTabSheet;
  i,ActivePage_id :integer;
  FrC : TUniFrameClass;
  Fr : TUniFrame;
begin
  if FClassName <> '' then
   begin
    ActivePage_id:=-1;
    for i := 0 to UniPageControl1.PageCount-1 do
      begin
        if UniPageControl1.Pages[i].Caption=Caption then
         begin
          UniPageControl1.ActivePageIndex:=i;
          ActivePage_id:=0;
          Break;
         end;
      end;

    if ActivePage_id=-1 then
      begin
        Ts := TUniTabSheet.Create(Self);
        Ts.Closable := True;
        Ts.PageControl := UniPageControl1;
        Ts.Tag := Tag;
        UniPageControl1.ActivePage:=Ts;

        FrC := TUniFrameClass(FindClass(FClassName));
        Fr:=FrC.Create(Ts);
        Ts.Caption := Fr.Hint;
        Fr.Align := alClient;
        Fr.Parent := Ts;
      end;
   end;
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  //UniTreeView1.FullExpand;
  //UniTreeView1.Selected.Text := 'Pengumuman';
  UniMainModule.Theme := 'neptune';
  UserRolesAccess;
  UniMainModule.TahunPersediaan := SysUtils.CurrentYear;
  uStatusbar.Panels.Items[0].Text := UniMainmodule.UserUserName + ' - ' +
                                     IntToStr(UniMainmodule.UserKodeSKPD) + ' [OS:' +
                                     UniMainmodule.UserOS + ',Mode:' +
                                     UniMainModule.UserMode + ']';

  UniMainModule.qProfile.ParamByName('id').Value := UniMainModule.UserKodeSKPD;
  if not UniMainModule.qProfile.Active then
  UniMainModule.qProfile.Open;

end;

procedure TMainForm.UniTreeMainMenuClick(Sender: TObject);
var
  FClassName : string;
begin
  if UniTreeMainMenu.Selected.Enabled then
  begin
    if UniTreeMainMenu.Selected.Text='Pengumuman' then
     begin
       FClassName := 'TfrmHtmlPengumuman';
     end
    else if UniTreeMainMenu.Selected.Text='Panduan' then
     begin
       FClassName := 'TfrmHtmlPanduan';
     end
    else if UniTreeMainMenu.Selected.Text='Visi Misi' then
     begin
       FClassName := 'TfrmHtmlVisiMisi';
     end
    else if UniTreeMainMenu.Selected.Text='Tujuan' then
     begin
       FClassName := 'TfrmHtmlTujuan';
     end
    else if UniTreeMainMenu.Selected.Text='Tugas dan Fungsi' then
     begin
       FClassName := 'TfrmHtmlTugasFungsi';
     end
    else if UniTreeMainMenu.Selected.Text='Strategi Kebijakan' then
     begin
       FClassName := 'TfrmHtmlStrategiKebijakan';
     end
    else if UniTreeMainMenu.Selected.Text='Struktur Organisasi' then
     begin
       FClassName := 'TfrmHtmlStrukturOrganisasi';
     end
    else if UniTreeMainMenu.Selected.Text='ABSENSI' then
     begin
       //FClassName := 'TfrmOpenUrlFrame';
       FClassName := 'TfrmKepegaiwaian';
       try
         begin
          //UniOpenUrl.uURLFrame.Show;
         end;
       finally
           UniMainModule.UniFSToast.Success('ReportAbsensi','Username & Password sesuai akses user BPKAD');
       end;

     end
    else if UniTreeMainMenu.Selected.Text='Laporan Realisasi Anggaran' then
     begin
       FClassName := 'TfrmAppSimda';
     end
    else if UniTreeMainMenu.Selected.Text='SIMDA' then
     begin
       FClassName := 'TfrmAppSimda';
     end
    else if UniTreeMainMenu.Selected.Text='PERSEDIAAN' then
     begin
//      try
//        UniFSConfirm.Prompt('Tahun','Masukan Tahun Persediaan', '', TTypeColor.orange, TTheme.light,
//          procedure(Button: TConfirmButton; Result: string = '2000')
//          begin
//            if Button = Yes then
//            begin
//              UniFSConfirm.Alert('Tahun Persediaan ',Result);
//              UniMainModule.TahunPersediaan := StrToInt(Result);
//            end;
//            if Button = No then
//              UniFSConfirm.Alert('Batal ','Batal Membuka Persediaan', 'fa fa-exclamation-circle', TTypeColor.red, TTheme.modern);
//          end
//        );
//      finally
        FClassName := 'TfrmAppsPersediaan';
//      end;
     end
    else if UniTreeMainMenu.Selected.Text='User Setting' then
     begin
       FClassName := 'TfrmSetting';
     end;

     OpenFrame(FClassName, UniTreeMainMenu.Selected.Text);
  end;
end;

procedure TMainForm.UniTreeSettingMenuClick(Sender: TObject);
var
  FClassName : string;
begin
  if UniTreeSettingMenu.Selected.Enabled then
  begin
    if UniTreeSettingMenu.Selected.Text='Logout' then
     begin
        UniFSConfirm.Question('Logout','Anda yakin ingin keluar?','fa fa-smile-o', TTypeColor.blue, TTheme.modern,
          procedure(Button: TConfirmButton)
          begin
            if Button = Yes then
            begin
                try
                  Sleep(2000);
                finally
                  UniSession.Logout;
                  //UniApplication.Destroy;
                  //close;
                end;
            end;
            if Button = No then
               UniFSConfirm.Alert('Batal', ' ', 'fa fa-exclamation-circle', TTypeColor.blue, TTheme.modern);
          end
          );
     end
    else if UniTreeSettingMenu.Selected.Text='User Setting' then
     begin
      //UniMainModule.UniFSToast.Info('!!!','Modul dalam versi beta');
      FClassName := 'TfrmSetting';
     end
    else if UniTreeSettingMenu.Selected.Text='Help' then
     begin
      UniMainModule.UniFSToast.Info('!!!','Maaf modul belum tersedia');
     end;

     OpenFrame(FClassName, UniTreeSettingMenu.Selected.Text);
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
