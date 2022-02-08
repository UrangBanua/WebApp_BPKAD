unit Report_PegawaiBpkad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, DB, uniGUIBaseClasses, uniURLFrame, unimURLFrame,
  ServerModule, uniButton, frxGradient, frxClass, frxDBSet, frxExportPDF,
  frxExportBaseDialog;

type
  TrptPegawaiBpkad = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniButton1: TUniButton;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxGradientObject1: TfrxGradientObject;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
  private
    procedure OpenDS;
    procedure PrepareAndShow(Report: TfrxReport; Exp: TfrxPDFExport);
    procedure CloseDS;
    { Private declarations }
  public
    { Public declarations }
    InvNum: string;
  end;

function rptPegawaiBpkad: TrptPegawaiBpkad;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function rptPegawaiBpkad: TrptPegawaiBpkad;
begin
  Result := TrptPegawaiBpkad(UniMainModule.GetFormInstance(TrptPegawaiBpkad));
end;

procedure TrptPegawaiBpkad.UniButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TrptPegawaiBpkad.CloseDS;
begin
  //UniMainModule.ADOQuery1.Close;
end;

procedure TrptPegawaiBpkad.OpenDS;
begin
//  UniMainModule.ADOQuery1.Close;
//  UniMainModule.ADOQuery1.SQL.Clear;
//  UniMainModule.ADOQuery1.SQL.Add('SELECT * FROM ((tblInv INNER JOIN tblCust ON tblCust.CustNum = tblInv.InvCustNum) INNER JOIN tblInvDetail ON tblInvDetail.InvDetailInvNum = tblInv.InvNum) WHERE InvNum=:Num;');
//  UniMainModule.ADOQuery1.Parameters.ParamByName('Num').Value := InvNum;
//  UniMainModule.ADOQuery1.Open;
end;

procedure TrptPegawaiBpkad.UniFormBeforeShow(Sender: TObject);
begin
  OpenDS;
  try
    PrepareAndShow(frxReport1, frxPDFExport1);
  finally
    CloseDS;
  end;
end;

procedure TrptPegawaiBpkad.PrepareAndShow(Report: TfrxReport; Exp: TfrxPDFExport);
var
  AUrl : string;
begin
  Report.PrintOptions.ShowDialog := False;
  Report.ShowProgress := false;

  Report.EngineOptions.SilentMode := True;
  Report.EngineOptions.EnableThreadSafe := True;
  Report.EngineOptions.DestroyForms := False;
  Report.EngineOptions.UseGlobalDataSetList := False;

  Exp.Background := True;
  Exp.ShowProgress := False;
  Exp.ShowDialog := False;
  Exp.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', AUrl, True);
  Exp.DefaultPath := '';

  Report.PreviewOptions.AllowEdit := False;
  Report.PrepareReport;
  Report.Export(Exp);

  UniURLFrame1.URL := AUrl;
end;


initialization
  RegisterClass(TrptPegawaiBpkad);

end.
