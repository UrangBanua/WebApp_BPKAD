unit Setting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniImage, uniDBImage,
  uniLabel, uniDBText, uniGroupBox, Data.DB, uniBasicGrid, uniDBGrid,
  unimDBListGrid, uniMultiItem, uniListBox, uniDBListBox, uniButton, uniBitBtn,
  uniDBNavigator;

type
  TfrmSetting = class(TUniFrame)
    UniPanel1: TUniPanel;
    ugSKPD: TUniGroupBox;
    udbLogoSKPD: TUniDBImage;
    UniDBText1: TUniDBText;
    UniPanel2: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    UniDBText2: TUniDBText;
    udbSKPD: TUniDBListBox;
    dsProfile: TDataSource;
    UniDBNavigator1: TUniDBNavigator;
    ubtSimpan: TUniBitBtn;
    ubtEdit: TUniBitBtn;
  private
    { Private declarations }
    procedure UpdateProfileSetting(TahunAnggaran : integer; KodeSKPD : String);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;

{ TfrmSetting }

procedure TfrmSetting.UpdateProfileSetting(TahunAnggaran: integer; KodeSKPD : String);
begin

  UniMainModule.TahunPersediaan := TahunAnggaran;
  {MainForm.uStatusbar.Panels.Items[0].Text := UniMainmodule.UserUserName + ' - ' +
                                     IntToStr(UniMainmodule.UserKodeSKPD) + ' [OS:' +
                                     UniMainmodule.UserOS + ',Mode:' +
                                     UniMainModule.UserMode + ']';}

  if UniMainModule.qProfile.Active then
  begin
    UniMainModule.qProfile.Close;
    UniMainModule.qProfile.ParamByName('id').Value := KodeSKPD;
    UniMainModule.qProfile.Open;
  end;

end;

initialization
  RegisterClass(TfrmSetting);

end.
