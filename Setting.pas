unit Setting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniImage, uniDBImage;

type
  TfrmSetting = class(TUniFrame)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniDBImage1: TUniDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

initialization
  RegisterClass(TfrmSetting);

end.
