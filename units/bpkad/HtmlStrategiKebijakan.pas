unit HtmlStrategiKebijakan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniMemo, uniDBMemo, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UniFSConfirm;

type
  TfrmHtmlStrategiKebijakan = class(TUniFrame)
    UniPanel1: TUniPanel;
    upModif: TUniPanel;
    ubtModif: TUniBitBtn;
    ubtSave: TUniBitBtn;
    uhtmlData: TUniDBHTMLMemo;
    qHtmlData: TFDQuery;
    qHtmlDataId: TIntegerField;
    qHtmlDataEditor: TIntegerField;
    qHtmlDataCategory: TStringField;
    qHtmlDataObject: TStringField;
    qHtmlDataTimeUpdate: TSQLTimeStampField;
    qHtmlDataContents: TWideMemoField;
    dsHtmlData: TDataSource;
    UniFSConfirm: TUniFSConfirm;
    procedure UniFrameBeforeReady(Sender: TObject);
    procedure ubtModifClick(Sender: TObject);
    procedure ubtSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;

procedure TfrmHtmlStrategiKebijakan.ubtModifClick(Sender: TObject);
begin
  uhtmlData.ShowToolbar := not uhtmlData.ShowToolbar;
  ubtSave.Enabled := not ubtSave.Enabled;

  if uhtmlData.ShowToolbar then
  qHtmlData.Edit else qHtmlData.Cancel;
end;

procedure TfrmHtmlStrategiKebijakan.ubtSaveClick(Sender: TObject);
begin
  if qHtmlData.State in [dsEdit, dsInsert] then
  begin
    UniFSConfirm.Question('Save','Anda yakin untuk menyimpan?','fa fa-smile-o', TTypeColor.blue, TTheme.modern,
    procedure(Button: TConfirmButton)
    begin
      if Button = Yes then
      begin
        try
          Sleep(600)
        finally
          qHtmlData.post
        end;
      end;
      if Button = No then
        UniFSConfirm.Alert('Batal', ' ', 'fa fa-exclamation-circle', TTypeColor.blue, TTheme.modern);
      end
      );
  end;
end;

procedure TfrmHtmlStrategiKebijakan.UniFrameBeforeReady(Sender: TObject);
begin
    qHtmlData.Close;
    qHtmlData.Open('SELECT * FROM webapp_BPKAD.dbo.tbl_HTML WHERE '+
                          'Category =' + QuotedStr('Menu') + ' AND '+
                          'Object =' + QuotedStr('Strategi Kebijakan'));
    //qHtmlData.Open;
    uhtmlData.ShowToolbar := false;

    with UniMainModule do
    begin
    if (UserCategory = 'bpkad') and
       ((UserAccess = 'admin_web') or (UserAccess = 'opt_sekertariat')) then
    upModif.Enabled := true else upModif.Enabled := false;
    end;

end;

initialization
  RegisterClass(TfrmHtmlStrategiKebijakan);

end.
