unit Persediaan_LaporanUrl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniURLFrame
  ;
  //SOAP Panggil Http SQL Reporting Servces
  //SOAPHTTPTrans, WinINet, Soap.InvokeRegistry, Soap.Rio,
  //Soap.SOAPHTTPClient, IdExplicitTLSClientServerBase, System.Net.URLClient
  //

type
  TfrmPersediaanLaporanUrl = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniButton1: TUniButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmPersediaanLaporanUrl: TfrmPersediaanLaporanUrl;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmPersediaanLaporanUrl: TfrmPersediaanLaporanUrl;
begin
  Result := TfrmPersediaanLaporanUrl(UniMainModule.GetFormInstance(TfrmPersediaanLaporanUrl));
end;

initialization
  RegisterClass(TfrmPersediaanLaporanUrl);

end.
