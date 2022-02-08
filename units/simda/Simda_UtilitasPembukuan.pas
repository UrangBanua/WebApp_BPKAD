unit Simda_UtilitasPembukuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniMemo, uniGUIBaseClasses,
  uniButton, uniBitBtn, UniFSButton;

type
  TufrmUtilitasPembukuan = class(TUniForm)
    btRebuildJurnalJenisDokumen: TUniFSButton;
    MemoOutput: TUniMemo;
    sp_StoredProcedureAll: TFDStoredProc;
    btPostingAll: TUniFSButton;
    btUnpostingAll: TUniFSButton;
    btShowDataLog: TUniFSButton;
    procedure btRebuildJurnalJenisDokumenClick(Sender: TObject);
    procedure btPostingAllClick(Sender: TObject);
    procedure btUnpostingAllClick(Sender: TObject);
    procedure btShowDataLogClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExecSP_Pembukuan(Sender: TComponent; AResult:Integer);
  public
    { Public declarations }
  end;

function ufrmUtilitasPembukuan: TufrmUtilitasPembukuan;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Simda_UtilitasPembukuanParam, Simda_DataLog;

function ufrmUtilitasPembukuan: TufrmUtilitasPembukuan;
begin
  Result := TufrmUtilitasPembukuan(UniMainModule.GetFormInstance(TufrmUtilitasPembukuan));
end;

var
  ANamaDB, ANamaSP, AUserName: String;
  AKode: integer;

procedure TufrmUtilitasPembukuan.btRebuildJurnalJenisDokumenClick(Sender: TObject);
begin
  ANamaDB:= 'sysdev_k2021';
  ANamaSP := '_BPKADHST_SP_RebuilJurnal_Pernomor_Bukti';
  AKode := 1;

  with ufrmUtilitasPembukuanParam do
  begin
    cbJenisDok.Items.Clear;
    cbJenisDok.Items.Add('STS - Surat Tanda Setoran');
    cbJenisDok.Items.Add('TBP - Tanda Bukti Penerimaan');
    cbJenisDok.Items.Add('SKP - Surat Keterangan Pajak');
    cbJenisDok.Items.Add('SPJ - Surat Pertanggungjawaban');
    cbJenisDok.Items.Add('SPP - Surat Permintaan Pembayaran');
    cbJenisDok.Items.Add('SP2D - Surat Perintah Pencairan Dana');
    cbJenisDok.Items.Add('Tagihan SPP');
    cbJenisDok.Items.Add('Setoran Pajak');
    cbJenisDok.Items.Add('Pengesahan SPJ');
    cbJenisDok.Items.Add('Bukti Pengeluaran GU/TU');
    edNomorBukti.Visible := true;
    cbJenisDok.ReadOnly := false;
    cbSemester.Visible := false;
    cbSKPD.Visible := true;
    pdtAwal.Visible := false;
    pdtAkhir.Visible := false;
    ShowModal(ExecSP_Pembukuan);
  end;

end;

procedure TufrmUtilitasPembukuan.btShowDataLogClick(Sender: TObject);
begin
  frmSimdaDataLog.ShowModal;

end;

procedure TufrmUtilitasPembukuan.btPostingAllClick(Sender: TObject);
begin
  ANamaDB:= 'keu_2021';
  //ANamaDB:= 'sysdev_k2021';
  ANamaSP := '_BPKADHST_SP_PostingUnposting_SKPD';
  AKode := 1;
  AUserName := UniMainModule.UserUserName;

  with ufrmUtilitasPembukuanParam do
  begin
    cbJenisDok.Items.Clear;
    cbJenisDok.Text := 'Posting';
    cbJenisDok.ReadOnly := true;
    cbSemester.Visible := true;
    cbSKPD.Visible := true;
    pdtAwal.Visible := false;
    pdtAkhir.Visible := false;
    edNomorBukti.Visible := false;
    ShowModal(ExecSP_Pembukuan);
  end;

end;

procedure TufrmUtilitasPembukuan.btUnpostingAllClick(Sender: TObject);
begin
  ANamaDB:= 'keu_2021';
  //ANamaDB:= 'sysdev_k2021';
  ANamaSP := '_BPKADHST_SP_PostingUnposting_SKPD';
  AKode := 0;
  AUserName := UniMainModule.UserUserName;

  with ufrmUtilitasPembukuanParam do
  begin
    cbJenisDok.Items.Clear;
    cbJenisDok.Text := 'Unposting';
    cbJenisDok.ReadOnly := true;
    cbSemester.Visible := true;
    cbSKPD.Visible := true;
    pdtAwal.Visible := false;
    pdtAkhir.Visible := false;
    edNomorBukti.Visible := false;
    ShowModal(ExecSP_Pembukuan);
  end;

end;

procedure TufrmUtilitasPembukuan.ExecSP_Pembukuan(Sender: TComponent;
  AResult: Integer);
var
  i: Integer;
begin
  MemoOutput.Lines.Clear;

  if AResult = 1 then
  begin
    MemoOutput.Lines.Add('Parameter: '+(Sender as TuniForm).Name+', Result: '+IntToStr(AResult));
    //MemoOutput.Lines.Add('Awal: '+FormatDateTime('yyyy-mm-dd',ufrmUtilitasPembukuanParam.pdtAwal.DateTime));
    //MemoOutput.Lines.Add('Akhir: '+FormatDateTime('yyyy-mm-dd',ufrmUtilitasPembukuanParam.pdtAkhir.DateTime));

    with UniMainModule.FDConnection do
    begin
      ResourceOptions.ServerOutput := True;
      sp_StoredProcedureAll.Connection := UniMainModule.FDConnection;

      // Execute sesuai Nama SP
      if ANamaSP = '_BPKADHST_SP_PostingUnposting_SKPD' then
      begin
        // disable unposting all
        //if ufrmUtilitasPembukuanParam.cbSemester.ItemIndex = 3 then
        if ufrmUtilitasPembukuanParam.cbSemester.ItemIndex = 10 then
        begin
          sp_StoredProcedureAll.ExecProc(ANamaDB+'.dbo.'+ANamaSP+'_All',[AUserName,AKode,
                                        ufrmUtilitasPembukuanParam.cbSKPD.Text,
                                        StrToInt(ufrmUtilitasPembukuanParam.edTA.Text)]);
        end else
        if (ufrmUtilitasPembukuanParam.cbSemester.ItemIndex >= 0) and (ufrmUtilitasPembukuanParam.cbSemester.ItemIndex <=1) then
        begin
          sp_StoredProcedureAll.ExecProc(ANamaDB+'.dbo.'+ANamaSP+'_Semester',[AUserName,AKode,
                                        ufrmUtilitasPembukuanParam.cbSKPD.Text,
                                        StrToInt(ufrmUtilitasPembukuanParam.edTA.Text),
                                        ufrmUtilitasPembukuanParam.cbSemester.ItemIndex]);
        end else
        if ufrmUtilitasPembukuanParam.cbSemester.ItemIndex = 2 then
        begin
          sp_StoredProcedureAll.ExecProc(ANamaDB+'.dbo.'+ANamaSP+'_Periode',[AUserName,AKode,
                                        ufrmUtilitasPembukuanParam.cbSKPD.Text,
                                        FormatDateTime('yyyy-mm-dd',ufrmUtilitasPembukuanParam.pdtAwal.DateTime),
                                        FormatDateTime('yyyy-mm-dd',ufrmUtilitasPembukuanParam.pdtAkhir.DateTime)]);
        end;
      end else
      if ANamaSP = '_BPKADHST_SP_RebuilJurnal_Pernomor_Bukti' then
      begin
        UniMainModule.UniFSToast.Warning('!!!','Maaf modul belum aktif');
        //sp_StoredProcedureAll.ExecProc(ANamaDB+'.dbo.'+ANamaSP,[ufrmUtilitasPembukuanParam.cbJenisDok.Text]);
      end;

      // Tampilkan Message output SP
      for i := 0 to ConnectionIntf.Messages.ErrorCount - 1 do
        MemoOutput.Lines.Add(ConnectionIntf.Messages[i].Message);
    end;

  end else if AResult = 2 then
  begin
    MemoOutput.Lines.Add((Sender as TuniForm).Name+', Proses dibatalkan ...');
    Showmessage((Sender as TuniForm).Name+', Proses dibatalkan ...');
  end;
end;

initialization
  RegisterClass(TufrmUtilitasPembukuan);

end.
