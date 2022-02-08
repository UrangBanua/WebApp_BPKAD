unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, DB, uniGUIBaseClasses, uniURLFrame, unimURLFrame,
  ServerModule, uniButton, frxGradient, frxClass, frxDBSet, frxExportPDF,
  frxExportBaseDialog;

type
  TUniForm1 = class(TUniForm)
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

function UniForm1: TUniForm1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm1: TUniForm1;
begin
  Result := TUniForm1(UniMainModule.GetFormInstance(TUniForm1));
end;

procedure TUniForm1.UniButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TUniForm1.CloseDS;
begin
  UniMainModule.ADOQuery1.Close;
end;

procedure TUniForm1.OpenDS;
begin
  UniMainModule.ADOQuery1.Close;
  UniMainModule.ADOQuery1.SQL.Clear;
  UniMainModule.ADOQuery1.SQL.Add('SELECT * FROM ((tblInv INNER JOIN tblCust ON tblCust.CustNum = tblInv.InvCustNum) INNER JOIN tblInvDetail ON tblInvDetail.InvDetailInvNum = tblInv.InvNum) WHERE InvNum=:Num;');
  UniMainModule.ADOQuery1.Parameters.ParamByName('Num').Value := InvNum;
  UniMainModule.ADOQuery1.Open;
end;

procedure TUniForm1.UniFormBeforeShow(Sender: TObject);
begin
  OpenDS;
  try
    PrepareAndShow(frxReport1, frxPDFExport1);
  finally
    CloseDS;
  end;
end;

procedure TUniForm1.PrepareAndShow(Report: TfrxReport; Exp: TfrxPDFExport);
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

end.
