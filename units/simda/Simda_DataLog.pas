unit Simda_DataLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses, uniBasicGrid,
  uniDBGrid;

type
  TfrmSimdaDataLog = class(TUniForm)
    dbgSimdaDataLog: TUniDBGrid;
    qSimdaDataLog: TFDQuery;
    dsqSimdaDataLog: TDataSource;
    qSimdaDataLogId: TFDAutoIncField;
    qSimdaDataLogCategory: TStringField;
    qSimdaDataLogDataLog: TStringField;
    qSimdaDataLogDataTime: TSQLTimeStampField;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSimdaDataLog: TfrmSimdaDataLog;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmSimdaDataLog: TfrmSimdaDataLog;
begin
  Result := TfrmSimdaDataLog(UniMainModule.GetFormInstance(TfrmSimdaDataLog));
end;

procedure TfrmSimdaDataLog.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    qSimdaDataLog.Close;
end;

procedure TfrmSimdaDataLog.UniFormShow(Sender: TObject);
begin
    qSimdaDataLog.Open;
    dbgSimdaDataLog.ReadOnly := true;
end;

initialization
  RegisterClass(TfrmSimdaDataLog);

end.
