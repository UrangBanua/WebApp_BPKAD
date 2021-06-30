unit LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniImage,
  Vcl.Imaging.pngimage, uniEdit, uniButton, Data.DB, Data.Win.ADODB, uniLabel,
  UniFSEdit, uniPanel, uniMultiItem, uniComboBox;

type
  TfrmLogin = class(TUniLoginForm)
    ADOQuery1: TADOQuery;
    UniPanel2: TUniPanel;
    UniImage3: TUniImage;
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
    procedure edPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure UniButton_LoginClick(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniCB_ModeLoginChange(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
  private
    { Private declarations }
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

procedure TfrmLogin.edPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    UniButton_Login.ExecuteAction(nil);
end;

procedure TfrmLogin.UniButton_LoginClick(Sender: TObject);
begin
  if UniCB_ModeLogin.ItemIndex = 0 then
  begin
  // cek login public
     with ADOQuery1 do
     begin
        UniMainModule.UserId := 1;

        Sql.Clear;
        Sql.Add('update users set LastConnect=:LastConnect, LastIp=:LastIp where id=:id');
        Parameters.ParamByName('LastConnect').Value:=Now;
        Parameters.ParamByName('LastIp').Value:=UniApplication.RemoteAddress;
        Parameters.ParamByName('id').Value:=UniMainModule.UserId;
        ExecSQL;

        ModalResult := mrOk;
        UniMainModule.UniSweetAlert.Title := 'Login Sukses';
        UniMainModule.UniSweetAlert.Show('Selamat datang...!');
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
     with ADOQuery1 do
      begin
        Close;
        Sql.Clear;
        Sql.Add('select id from users where username=:username and password=:password');
        Parameters.ParamByName('username').Value:=edUsername.Text;
        Parameters.ParamByName('password').Value:=edPassword.Text;
        Open;
          if RecordCount=0 then
            UniMainModule.UniFSToast.Error('!!!','Username atau Password Salah!')
          else
           begin
             UniMainModule.UserId := FieldByName('id').AsInteger;

             Sql.Clear;
             Sql.Add('update users set LastConnect=:LastConnect, LastIp=:LastIp where id=:id');
             Parameters.ParamByName('LastConnect').Value:=Now;
             Parameters.ParamByName('LastIp').Value:=UniApplication.RemoteAddress;
             Parameters.ParamByName('id').Value:=UniMainModule.UserId;
             ExecSQL;

             ModalResult := mrOk;
             UniMainModule.UniSweetAlert.Show('Selamat datang...');

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
  end;

end;

procedure TfrmLogin.UniLoginFormCreate(Sender: TObject);
begin
  UniLabel_TitleAppA.Caption := 'Badan Pengelola Keuagan dan Aset Daerah';
  UniLabel_TitleAppS.Caption := 'Kabupaten Hulu Sungai Tengah';
  UniLabel_Powered.Caption := 'Created By Tim SysDev BPKAD HST';
  UniLabel_LoginHello.Caption := 'Silahkan pilih mode login..';

  // List Mode Login
  UniCB_ModeLogin.Items.Add('PUBLIK');
  UniCB_ModeLogin.Items.Add('SKPKD');
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
end;

initialization
  RegisterAppFormClass(TfrmLogin);

end.
