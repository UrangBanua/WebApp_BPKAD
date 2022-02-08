unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, Data.Win.ADODB,
  uniGUIBaseClasses, uniGUIClasses, UniFSToast, uniSweetAlert, UniFSConfirm,
  uniImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, IniFiles, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TUniMainModule = class(TUniGUIMainModule)
    UniSweetAlert: TUniSweetAlert;
    UniFSToast: TUniFSToast;
    UniImageList: TUniImageList;
    imgButton: TUniNativeImageList;
    FDConnection: TFDConnection;
    qLoginUser: TFDQuery;
    qLoginUserUsername: TStringField;
    qLoginUserCategory: TStringField;
    qLoginUserRoleAccess: TStringField;
    qLoginUserMenu: TStringField;
    qLoginUserTNode: TIntegerField;
    qLoginUserANode: TBooleanField;
    qProfile: TFDQuery;
    qProfileId: TFDAutoIncField;
    qProfileNama_Subunit: TStringField;
    qProfileKode_Subunit: TStringField;
    qProfileLogo: TBlobField;
    qProfileKeterangan: TStringField;
    qProfileNama_PengurusBarang: TStringField;
    qProfileNIP_PengurusBarang: TStringField;
    qProfileNama_Kepala_SKPD: TStringField;
    qProfileNIP_Kepala_SKPD: TStringField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure ReadConfigDB(NamaFile: String);

  public
    { Public declarations }
    var
    // config App
    TitleAppA, TitleAppS, TitleLogin,
    TitleVersion, PoweredBy, TitleLogo: String;

    // config database
    DriverID, Server, OSAuthent, UserName, Password,
    Database, MARS, Workstation, ApplicationName: String;

    ConfigDB: Tinifile;

    // get data client
    UserMode : String;
    UserId : integer;
    UserKodeSKPD : integer;
    UserUserName : String;
    UserCategory : String;
    UserAccess : String;
    UserOS : String;
    userIP : String;
    BrowserType : String;
    BrowserVersion : Integer;

    // get param AppPersediaan
    TahunPersediaan : Integer;

    //===================== Encrypt Decrypt ======================
    function EncryptStr(const S :WideString; Key: Word): String;
    function DecryptStr(const S: String; Key: Word): String;

    procedure NotifSaveDB(DInfo: String; DType: Integer);
    procedure PromptDialogBox(pTitle, pDesc, pKet, pValue : String);
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

//===================== Encrypt Decrypt ======================
const CKEY1 = 53761;
      CKEY2 = 32618;

function TUniMainModule.EncryptStr(const S :WideString; Key: Word): String;
var   i          :Integer;
      RStr       :RawByteString;
      RStrB      :TBytes Absolute RStr;
begin
  Result:= '';
  RStr:= UTF8Encode(S);
  for i := 0 to Length(RStr)-1 do begin
    RStrB[i] := RStrB[i] xor (Key shr 8);
    Key := (RStrB[i] + Key) * CKEY1 + CKEY2;
  end;
  for i := 0 to Length(RStr)-1 do begin
    Result:= Result + IntToHex(RStrB[i], 2);
  end;
end;

procedure TUniMainModule.NotifSaveDB(DInfo: String; DType: Integer);
begin
  case DType of
  0 : UniFSToast.Success(DInfo,'Berhasil Disimpan');
  1 : UniFSToast.Warning(DInfo,'Dibatalkan');
  2 : UniFSToast.Error(DInfo,'Berhasil Dihapus');
  end;
end;

procedure TUniMainModule.PromptDialogBox(pTitle, pDesc, pKet, pValue: String);
begin
end;

function TUniMainModule.DecryptStr(const S: String; Key: Word): String;
var   i, tmpKey  :Integer;
      RStr       :RawByteString;
      RStrB      :TBytes Absolute RStr;
      tmpStr     :string;
begin
  tmpStr:= UpperCase(S);
  SetLength(RStr, Length(tmpStr) div 2);
  i:= 1;
  try
    while (i < Length(tmpStr)) do begin
      RStrB[i div 2]:= StrToInt('$' + tmpStr[i] + tmpStr[i+1]);
      Inc(i, 2);
    end;
  except
    Result:= '';
    Exit;
  end;
  for i := 0 to Length(RStr)-1 do begin
    tmpKey:= RStrB[i];
    RStrB[i] := RStrB[i] xor (Key shr 8);
    Key := (tmpKey + Key) * CKEY1 + CKEY2;
  end;
  Result:= UTF8Decode(RStr);
end;
//===================== ============== ======================


procedure TUniMainModule.ReadConfigDB(NamaFile: String);
var
  oParams: TStrings;
  M_Error: String;
begin
  TitleAppA := 'Badan Pengelola Keuagan dan Aset Daerah';
  TitleAppS := 'Kabupaten Hulu Sungai Tengah';
  TitleLogin := 'Silahkan pilih mode login';
  TitleVersion := 'ver: 1.0.5.141';
  PoweredBy := 'Created By Tim SysDev BPKAD HST';
  TitleLogo := 'logoBPKAD.png';
  DriverID := 'MSSQL';
  Server := 'localhost';
  OSAuthent := 'No';
  MARS := 'yes';
  Workstation := 'server_bpkad';
  ApplicationName := 'webapp_bpkad';

   try
    // Connection Database
    //================================
    //Connection definition parameters
    //================================
    ConfigDB := Tinifile.Create(extractfilepath(GetModuleName(HInstance)) + NamaFile);
    FDManager.ConnectionDefs.Clear;

    try
      // Load Config App
//      TitleAppA     := ConfigDB.ReadString('APP_CONF', 'TitleAppA', 'ERROR');
//      TitleAppS     := ConfigDB.ReadString('APP_CONF', 'TitleAppS', 'ERROR');
//      TitleLogo     := ConfigDB.ReadString('APP_CONF', 'TitleLogo', 'ERROR');
//      TitleLogin    := ConfigDB.ReadString('APP_CONF', 'TitleLogin', 'ERROR');
//      TitleVersion  := ConfigDB.ReadString('APP_CONF', 'TitleVersion', 'ERROR');
//      PoweredBy     := ConfigDB.ReadString('APP_CONF', 'PoweredBy', 'ERROR');

      // Load Config Database
      DriverID        := ConfigDB.ReadString('DATABASE_CONF', 'DriverID', 'ERROR');
      Server          := ConfigDB.ReadString('DATABASE_CONF', 'Server', 'ERROR');
      OSAuthent       := ConfigDB.ReadString('DATABASE_CONF', 'OSAuthent', 'ERROR');
      UserName        := ConfigDB.ReadString('DATABASE_CONF', 'UserName', 'ERROR');
      Password        := ConfigDB.ReadString('DATABASE_CONF', 'Password', 'ERROR');
      Database        := ConfigDB.ReadString('DATABASE_CONF', 'Database', 'ERROR');
      MARS            := ConfigDB.ReadString('DATABASE_CONF', 'MARS', 'ERROR');
      Workstation     := ConfigDB.ReadString('DATABASE_CONF', 'Workstation', 'ERROR');
      ApplicationName := ConfigDB.ReadString('DATABASE_CONF', 'ApplicationName', 'ERROR');

      with FDConnection do
      begin
        oParams := TStringList.Create;
        oParams.Add(DriverID);
        oParams.Add(Server);
        oParams.Add(OSAuthent);
        oParams.Add(UserName);
        oParams.Add(Password);
        oParams.Add(Database);
        oParams.Add(MARS);
        oParams.Add(Workstation);
        oParams.Add(ApplicationName);
      end;


      If (DriverID = 'ERROR') or (Server = 'ERROR') or (OSAuthent = 'ERROR') or (UserName = 'ERROR')
         or (Password = 'ERROR') or (Database = 'ERROR') or (MARS = 'ERROR') or (Workstation = 'ERROR')
         or (ApplicationName = 'ERROR') then
      begin
        //UniSweetAlert.AlertType := atError;
        //UniSweetAlert.Show('Bad file configuration ' + NamaFile + ' !!');
        abort;
      end;

      FDManager.AddConnectionDef('bpkad_Connection', 'MSSQL', oParams);
      FDConnection.ConnectionDefName := 'bpkad_Connection';
      //UniSweetAlert.Show('Bad file configuration ' + NamaFile + ' !!');

    except
      on E : Exception do begin
      ConfigDB.Free;
      M_Error:= E.Message;
     end;

    end;

  Finally
    oParams.Free;
    ConfigDB.Free;
  end;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
const
{$ifdef CPUX64}
  DBConnStr = 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=[DBPATH];Persist Security Info=False';
{$else}
  DBConnStr = 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=[DBPATH];Persist Security Info=False';
{$endif}

var
  S1,SrcFile :string;
  //oParams: TStrings;
begin

  // Connection Database
  FDConnection.Connected := false;
  try
    ReadConfigDB('FDConnection.ini')
  finally
    //FDConnection.Connected := true

  end;


end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  FDConnection.Free;
  ConfigDB.Free;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
