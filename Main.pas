unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Data.DB, Data.Win.ADODB,
  uniPanel, uniPageControl, uniGUIBaseClasses, uniTreeView,
  uniImage, uniGUIFrame, uniLabel, uniImageList,
  uniButton, uniBitBtn, UniFSButton, UniFSConfirm, uniMultiItem, uniComboBox,
  Vcl.Imaging.pngimage;

type
  TMainForm = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniTreeMainMenu: TUniTreeView;
    UniPanel2: TUniPanel;
    UniImage1: TUniImage;
    UniPanel3: TUniPanel;
    UniTreeSettingMenu: TUniTreeView;
    UniFSConfirm: TUniFSConfirm;
    btnRecolherMenu: TUniFSButton;
    btnExpandirMenu: TUniFSButton;
    cmbSearch: TUniComboBox;
    procedure UniTreeMainMenuClick(Sender: TObject);
    procedure UniTreeSettingMenuClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure cmbSearchChange(Sender: TObject);
    procedure btnExpandirMenuClick(Sender: TObject);
    procedure btnRecolherMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    Procedure OpenFrame( FClassName, Caption : string );
    Procedure CheckUserDevice;
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

procedure TMainForm.btnExpandirMenuClick(Sender: TObject);
begin
  UniTreeMainMenu.FullExpand;
end;

procedure TMainForm.btnRecolherMenuClick(Sender: TObject);
begin
  UniTreeMainMenu.FullCollapse;
end;

procedure TMainForm.CheckUserDevice;
var
  C : TUniClientInfoRec;
begin
  C:=UniApplication.ClientInfoRec;

  UniMainModule.UserIP := UniApplication.RemoteAddress;
  UniMainModule.UserOS := C.OSType;
  UniMainModule.BrowserType := C.BrowserType;
  UniMainModule.BrowserVersion := IntToStr(C.BrowserVersion);

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
  CheckUserDevice;
  UniMainModule.Theme := 'neptune';
end;

procedure TMainForm.UniTreeMainMenuClick(Sender: TObject);
var
  FClassName : string;
begin
  if UniTreeMainMenu.Selected.Enabled then
  begin
    if UniTreeMainMenu.Selected.Text='Absensi BPKAD' then
     begin
       FClassName := 'TfrmKepegaiwaian';
       try
         begin
          //UniOpenUrl.uURLFrame.Show;
         end;
       finally
           UniMainModule.UniFSToast.Success('ReportAbsensi','Username & Password sesuai akses user BPKAD');
       end;

     end
    else if UniTreeMainMenu.Selected.Text='Invoices' then
     begin
       FClassName := 'TFrmInvoices';
     end
    else if UniTreeMainMenu.Selected.Text='New Invoice' then
     begin
       FClassName := 'TFrmNewInvoice';
     end;

     OpenFrame(FClassName, UniTreeMainMenu.Selected.Text);
  end;
end;

procedure TMainForm.UniTreeSettingMenuClick(Sender: TObject);
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
                  Sleep(2000)
                finally
                  close
                end;
            end;
            if Button = No then
               UniFSConfirm.Alert('Batal', ' ', 'fa fa-exclamation-circle', TTypeColor.blue, TTheme.modern);
          end
          );
     end
    else if UniTreeSettingMenu.Selected.Text='User Setting' then
     begin
      UniMainModule.UniFSToast.Info('!!!','Modul belum tersedia');
     end
    else if UniTreeSettingMenu.Selected.Text='Help' then
     begin
      UniMainModule.UniFSToast.Info('!!!','Maaf modul belum tersedia');
     end;
  end;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
