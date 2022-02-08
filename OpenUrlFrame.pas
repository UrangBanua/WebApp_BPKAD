unit OpenUrlFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniBitBtn, uniLabel, uniURLFrame,
  uniGUIBaseClasses, uniPanel;

type
  TFrmOpenUrlFrame = class(TUniFrame)
    UniPanel1: TUniPanel;
    uURLFrame: TUniURLFrame;
    uPanelBottom: TUniPanel;
    uPanelGaris: TUniPanel;
    UniLabel_Powered: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TFrmOpenUrlFrame.UniBitBtn1Click(Sender: TObject);
begin
  uURLFrame.SendToBack;
end;

procedure TFrmOpenUrlFrame.UniFrameCreate(Sender: TObject);
begin
  uPanelGaris.Width := uPanelBottom.Width;
  uURLFrame.URL := 'http://bpkad.hulusungaitengahkab.go.id:88/'+
         'ReportServer/Pages/ReportViewer.aspx?%2fReports_Absensi%2f_Summary_Rekap_Absensi_Periode_v2&rs:Command=Render';
  //uURLFrame.Show;
end;

initialization
  RegisterClass(TfrmOpenUrlFrame);

end.
