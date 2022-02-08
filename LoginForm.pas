unit LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImage,
  Vcl.Imaging.pngimage, uniEdit, uniButton, Data.DB, Data.Win.ADODB, uniLabel,
  UniFSEdit, uniPanel, uniMultiItem, uniComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniSweetAlert, UniFSConfirm,
  uniFieldSet, uniMemo, uniHTMLMemo;

type
  TfrmLogin = class(TUniLoginForm)
    UniPanel2: TUniPanel;
    uiLogo: TUniImage;
    UniPanel5: TUniPanel;
    UniLabel_Powered: TUniLabel;
    UniLabel_TitleVersion: TUniLabel;
    UniPanel3: TUniPanel;
    UniLabel3: TUniLabel;
    UniLabel_LoginHello: TUniLabel;
    UniPanel4: TUniPanel;
    UniImage2: TUniImage;
    edUsername: TUniEdit;
    UniPanel6: TUniPanel;
    UniImage4: TUniImage;
    edPassword: TUniEdit;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniButton_Login: TUniButton;
    UniCB_ModeLogin: TUniComboBox;
    UniLabel1: TUniLabel;
    UniLabel_TitleAppS: TUniLabel;
    UniLabel_TitleAppA: TUniLabel;
    FDQueryLogin: TFDQuery;
    UniFSConfirm: TUniFSConfirm;
    uhtmlTags: TUniHTMLMemo;
    procedure edPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure UniButton_LoginClick(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniCB_ModeLoginChange(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
    procedure edPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniImage4Click(Sender: TObject);
    procedure UniLoginFormActivate(Sender: TObject);
  private
    { Private declarations }
    Procedure CheckUserDevice;
  public
    { Public declarations }
  end;

function frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function frmLogin: TfrmLogin;
begin
  Result := TfrmLogin(UniMainModule.GetFormInstance(TfrmLogin));
end;

procedure TfrmLogin.CheckUserDevice;
var
  C : TUniClientInfoRec;
begin
  C:=UniApplication.ClientInfoRec;

  UniMainModule.UserIP := UniApplication.RemoteAddress;
  UniMainModule.UserOS := C.OSType;
  UniMainModule.BrowserType := C.BrowserType;
  UniMainModule.BrowserVersion := C.BrowserVersion;
end;

procedure TfrmLogin.edPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    UniButton_Login.Click;
end;

procedure TfrmLogin.edPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  //if key=#13 then
  //  UniButton_Login.ExecuteAction(nil);
end;

procedure TfrmLogin.UniButton_LoginClick(Sender: TObject);
begin
  if UniCB_ModeLogin.ItemIndex = 0 then
  begin
  // cek login public
     with FDQueryLogin do
     begin
        UniMainModule.UserId := 1;

        Sql.Clear;
        Sql.Add('update tbl_users set LastConnect=:LastConnect, LastIp=:LastIp where id=:id');
        Params.ParamByName('LastConnect').Value:=Now;
        Params.ParamByName('LastIp').Value:=UniApplication.RemoteAddress;
        Params.ParamByName('id').Value:=UniMainModule.UserId;
        ExecSQL;

        ModalResult := mrOk;
        UniMainModule.UserOS := UniApplication.ClientInfoRec.OSType;
        UniMainModule.BrowserType := UniApplication.ClientInfoRec.BrowserType;
        UniMainModule.BrowserVersion := UniApplication.ClientInfoRec.BrowserVersion;
        UniMainModule.UserMode := UniApplication.Parameters.Values['mode'];

        if UniApplication.Parameters.Values['mode'] <> 'publik' then
        begin
          UniMainModule.UniSweetAlert.Title := UniCB_ModeLogin.Text;
          UniMainModule.UniSweetAlert.AlertType := atSuccess;
          UniMainModule.UniSweetAlert.Show('Selamat datang ' + edUsername.Text);
        end;

     end;
  // cek login public end
  end else
  begin
  // cek login khusus
  if Trim(edUsername.Text)='' then
    UniMainModule.UniFSToast.Info('!!!','Mohon diisi Username!')
  else if Trim(edPassword.Text)='' then
    UniMainModule.UniFSToast.Info('!!!','Mohon diisi Password!')
  else
   begin
     with FDQueryLogin do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select Id, UserName, Category, RoleAccess, KodeSKPD from tbl_users where username=:username and password=:password and category=:category');
        Params.ParamByName('username').Value:=edUsername.Text;
        Params.ParamByName('password').Value:=UniMainModule.EncryptStr(edPassword.Text, 223);
        Params.ParamByName('category').Value:=UniCB_ModeLogin.Text;
        Open;
          if RecordCount=0 then
            UniMainModule.UniFSToast.Error('!!!','Username atau Password Salah!')
          else
           begin
             UniMainModule.UserId := FieldByName('Id').AsInteger;
             UniMainModule.UserUserName := FieldByName('UserName').AsString;
             UniMainModule.UserCategory := FieldByName('Category').AsString;
             UniMainModule.UserAccess := FieldByName('RoleAccess').AsString;
             UniMainModule.UserKodeSKPD := FieldByName('KodeSKPD').AsInteger;
             UniMainModule.UserOS := UniApplication.ClientInfoRec.OSType;
             UniMainModule.BrowserType := UniApplication.ClientInfoRec.BrowserType;
             UniMainModule.BrowserVersion := UniApplication.ClientInfoRec.BrowserVersion;
             UniMainModule.UserMode := UniApplication.Parameters.Values['mode'];


             Sql.Clear;
             Sql.Add('update tbl_users set LastConnect=:LastConnect, LastIp=:LastIp where id=:id');
             Params.ParamByName('LastConnect').Value:=Now;
             Params.ParamByName('LastIp').Value:=UniApplication.RemoteAddress;
             Params.ParamByName('id').Value:=UniMainModule.UserId;
             ExecSQL;

             ModalResult := mrOk;

             if UniApplication.Parameters.Values['mode'] <> 'publik' then
             begin
               UniMainModule.UniSweetAlert.Title := UniCB_ModeLogin.Text;
               UniMainModule.UniSweetAlert.AlertType := atSuccess;
               UniMainModule.UniSweetAlert.Show('Selamat datang ' + edUsername.Text);
             end;

           end;
      end;
   end;
   // cek login end
  end;



end;

procedure TfrmLogin.UniCB_ModeLoginChange(Sender: TObject);
begin

  if UniCB_ModeLogin.ItemIndex = 0 then
  begin
    edUsername.Enabled := false;
    edUsername.EmptyText := '';
    edPassword.Enabled := false;
    edPassword.EmptyText := '';
  end else
  begin
    edUsername.Enabled := true;
    edUsername.EmptyText := 'User ID';
    edPassword.Enabled := true;
    edPassword.EmptyText := 'Password';
    edUsername.SetFocus;
  end;

end;

procedure TfrmLogin.UniImage4Click(Sender: TObject);
begin
  if edPassword.PasswordChar = '*' then
    edPassword.PasswordChar := #0
  else
    edPassword.PasswordChar := '*';
end;

procedure TfrmLogin.UniLoginFormActivate(Sender: TObject);
begin

  UniCB_ModeLogin.SetFocus;

  // Ambil param url
  if not UniApplication.Parameters.Values['mode'].IsEmpty then
  begin
    if UniApplication.Parameters.Values['mode'] = 'vpnmessage' then
      UniFSConfirm.Alert('Selamat datang', 'Anda berada dijalur <b>VPN</b> <p>BPKAD<br>Kabupaten Hulu Sungai tengah</p>', 'fa fa-sitemap', TTypeColor.blue, TTheme.modern)
    else
    if UniApplication.Parameters.Values['mode'] = 'publik' then
      UniButton_Login.Click
    else
    begin
      UniCB_ModeLogin.ItemIndex := UniCB_ModeLogin.Items.IndexOf(UniApplication.Parameters.Values['mode']);
      edUsername.Enabled := true;
      edUsername.EmptyText := 'User ID';
      edPassword.Enabled := true;
      edPassword.EmptyText := 'Password';
	  Sleep(500);
      edUsername.SetFocus;
    end;
  end;
end;

procedure TfrmLogin.UniLoginFormCreate(Sender: TObject);
begin
  with UniMainModule do
  begin
    uiLogo.Url := 'files/images/'+TitleLogo;
    UniLabel_TitleAppA.Caption := TitleAppA;
    UniLabel_TitleAppS.Caption := TitleAppS;
    UniLabel_Powered.Caption := PoweredBy;
    UniLabel_LoginHello.Caption := TitleLogin;
    UniLabel_TitleVersion.Caption := ApplicationName + TitleVersion;
  end;

  // List Mode Login
  UniCB_ModeLogin.Items.Add('PUBLIK');
  UniCB_ModeLogin.Items.Add('SKPD');
  UniCB_ModeLogin.Items.Add('BPKAD');
  UniCB_ModeLogin.Items.Add('.....');

  // set mode public
  UniCB_ModeLogin.ItemIndex := 0;
  edUsername.Enabled := false;
  edUsername.EmptyText := '';
  edPassword.Enabled := false;
  edPassword.EmptyText := '';

end;

procedure TfrmLogin.UniLoginFormShow(Sender: TObject);
begin
  UniMainModule.Theme := 'classic';
  CheckUserDevice;
end;

initialization
  RegisterAppFormClass(TfrmLogin);

end.
