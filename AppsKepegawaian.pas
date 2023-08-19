unit AppsKepegawaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniURLFrame, uniGUIBaseClasses, uniPanel, uniLabel,
  uniButton, uniBitBtn, UniFSButton;

type
  TfrmKepegaiwaian = class(TUniFrame)
    UniPanel1: TUniPanel;
    uPanelBottom: TUniPanel;
    uPanelGaris: TUniPanel;
    UniLabel_Powered: TUniLabel;
    unfRekapAbsen: TUniFSButton;
    unfDetailAbsen: TUniFSButton;
    unfLembur: TUniFSButton;
    unfKepegaiwaian: TUniFSButton;
    procedure unfRekapAbsenClick(Sender: TObject);
    procedure unfDetailAbsenClick(Sender: TObject);
    procedure unfKepegaiwaianClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main;



procedure TfrmKepegaiwaian.unfDetailAbsenClick(Sender: TObject);
begin

//  UniSession.AddJS('window.open("http://bpkad.hulusungaitengahkab.go.id:88/'+
//         'ReportServer?%2fReports_Absensi%2f_Rekap_Absensi_Periode_v2&rs:Command=Render' +
//         ',"_blank");');
end;

procedure TfrmKepegaiwaian.unfKepegaiwaianClick(Sender: TObject);
begin

//  UniSession.AddJS('window.open("http://bpkad.hulusungaitengahkab.go.id:88/'+
//         'ReportServer?%2fReports_Absensi%2f_Data_Pegawai&rs:Command=Render' +
//         ',"_blank");');
end;

procedure TfrmKepegaiwaian.unfRekapAbsenClick(Sender: TObject);
var
  FClassNameKepegawaian : string;
begin
  //FClassNameKepegawaian := 'TfrmOpenUrlFrame';
  //MainForm.OpenFrame(FClassNameKepegawaian, unfRekapAbsen.Caption);
//
//  UniSession.AddJS('window.open("http://bpkad.hulusungaitengahkab.go.id:88/'+
//         'ReportServer?%2fReports_Absensi%2f_Summary_Rekap_Absensi_Periode_v2&rs:Command=Render' +
//         ',"_blank");');

end;

initialization
  RegisterClass(TfrmKepegaiwaian);

end.
