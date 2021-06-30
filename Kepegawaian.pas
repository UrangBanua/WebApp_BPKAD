unit Kepegawaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniURLFrame, uniGUIBaseClasses, uniPanel, uniLabel,
  uniButton, uniBitBtn;

type
  TfrmKepegaiwaian = class(TUniFrame)
    UniPanel1: TUniPanel;
    uPanelBottom: TUniPanel;
    uURLFrame: TUniURLFrame;
    uPanelGaris: TUniPanel;
    UniLabel_Powered: TUniLabel;
    UniBitBtn1: TUniBitBtn;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;



procedure TfrmKepegaiwaian.UniFrameCreate(Sender: TObject);
begin
  uPanelGaris.Width := uPanelBottom.Width;
  uURLFrame.URL := 'http://bpkad.hulusungaitengahkab.go.id:88/'+
         'ReportServer/Pages/ReportViewer.aspx?%2fReports_Absensi%2f_Summary_Rekap_Absensi_Periode_v2&rs:Command=Render';
  //uURLFrame.Show;
end;

initialization
  RegisterClass(TfrmKepegaiwaian);

end.
