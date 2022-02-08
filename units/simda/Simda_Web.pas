unit Simda_Web;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame;

type
  TfrmSimdaWeb = class(TUniForm)
    urlSimdaWeb: TUniURLFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSimdaWeb: TfrmSimdaWeb;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmSimdaWeb: TfrmSimdaWeb;
begin
  Result := TfrmSimdaWeb(UniMainModule.GetFormInstance(TfrmSimdaWeb));
end;

initialization
  RegisterClass(TfrmSimdaWeb);
end.
