unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleBeforeInit(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
    var urlMessage : String;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
begin urlMessage := '<html>'
              + '<style>'
              + '.button {'
              + '  border: none;'
              + '  color: white;'
              + '  padding: 16px 32px;'
              + '  text-align: center;'
              + '  text-decoration: none;'
              + '  display: inline-block;'
              + '  font-size: 16px;'
              + '  margin: 4px 2px;'
              + '  transition-duration: 0.4s;'
              + '  cursor: pointer;'
              + '  border-radius: 12px;'
              + '  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);'
              + '  margin: 0;'
              + '  position: absolute;'
              + '  top: 10%;'
              + '  left: 50%;'
              + '  -ms-transform: translate(-50%, -50%);'
              + '  transform: translate(-50%, -50%);'
              + '}'
              + '.button1 {'
              + '  background-color: white;'
              + '  color: black;'
              //+ '  border: 2px solid #4CAF50;'
              + '}'
              + '.button1:hover {'
              + '  background-color: #4CAF50;'
              + '  color: white;'
              + '}'
              + '</style>'
              //reload page
              + '<script>'
              + 'function redirect() {location.href = window.location.href;}'
              + '</script>'
              + '<body bgcolor="#dfe8f6">'
              + '<p style="text-align:center;color:#0000A0">[###message###]</p>'
              + '<button class="button button1" type="button" onclick=redirect()>Restart application</button>'
              + '</body>'
              + '</html>';

end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
