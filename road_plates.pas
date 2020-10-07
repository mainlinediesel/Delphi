{***********************************************************************}
{             ������������� ������������ ������ � Fast Report           }
{      ����������� ��� ��������������� - ������������ �������� ���      }
{      ��� 2020.  ���������� ���� ��� ���������� ������ ���������       }
{      ������������� ���������� ��� �������� ��� - ��� �����������      }
{      Embarcadero RAD Studio 10.3.3        �����: ����������� �.�      }
{***********************************************************************}

unit road_plates;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, ComObj, Winapi.ActiveX, System.Classes, Winapi.Windows,
  frxClass, frxExportBaseDialog, frxExportPDF, Vcl.Buttons, frxDesgn, frxVariables,
  Vcl.Mask, frxDBSet, frxExportMail, frxExportXML,IdAttachmentFile,
  IdHTTP, IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, idAttachment,
  frxExportXLS, IdSMTP;

type
  TMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ShowReport: TCheckBox;
    frxPDFExport1: TfrxPDFExport;
    Panel4: TPanel;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Panel5: TPanel;
    RadioButton1: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    RadioButton2: TRadioButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn1: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Button1: TButton;
    frxReport1: TfrxReport;
    frxUserDataSet1: TfrxUserDataSet;
    frxXLSExport1: TfrxXLSExport;
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    IdHTTP1: TIdHTTP;
    procedure ShowReportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure frxReport1AfterPrint(Sender: TfrxReportComponent);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.BitBtn1Click(Sender: TObject);
begin
{
 ������� � PDF
}
  frxReport1.PrepareReport();
    frxPDFExport1.FileName := ExtractFilePath(Application.ExeName)+'��.pdf';
      frxReport1.Export(frxPDFExport1);
end;

procedure TMain.Button1Click(Sender: TObject);
{
 �������� email
}
var
attach:TidAttachment;
attach2:TidAttachment;
msg:TIdMessage;
FileDir:string;
att:TIdAttachmentFile;
IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
begin
IdMessage1 := TIdMessage.Create;
IdMessage1.From.Address:='oleg.vasilchenko@inbox.ru'; // mail ������� �����
//mail �� ������� �������
IdMessage1.Recipients.EMailAddresses:='glavbuh@ats-gbk.ru';
IdMessage1.Subject:= UTF8Encode('234');
IdMessage1.From.Name:='����� ��'; // �����������
idmessage1.Subject:=AnsiString('����� �� �������� �������� ����'); // ���� ������
IdMessage1.Date:= now;

{��������� ����������� ����� ���������}
IdSMTP1:= TIdSMTP.Create(nil);

IdSMTP1.Host:='smtp.mail.ru';
IdSMTP1.Port:=465; //� ����������� ssl 495, 587 ��� ����������� 25
IdSMTP1.Username:='oleg.vasilchenko@inbox.ru';// ����� �����������
IdSMTP1.Password:='JktuDfcbkmxtyrj'; //������
IdSMTP1.AuthType:=satDefault;

{ ��� SSL}
IdSSLIOHandlerSocketOpenSSL:= TIdSSLIOHandlerSocketOpenSSL.Create(nil);
IdSSLIOHandlerSocketOpenSSL.Destination := IdSMTP1.Host+':'+IntToStr(IdSMTP1.Port);
IdSSLIOHandlerSocketOpenSSL.Host := IdSMTP1.Host;
IdSSLIOHandlerSocketOpenSSL.Port := IdSMTP1.Port;
IdSSLIOHandlerSocketOpenSSL.DefaultPort := 0;
IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method := sslvTLSv1;
//IdSSLIOHandlerSocketOpenSSL.SSLOptions.Method := sslvSSLv2;

IdSSLIOHandlerSocketOpenSSL.SSLOptions.Mode := sslmUnassigned;

IdSMTP1.IOHandler := IdSSLIOHandlerSocketOpenSSL;
IdSMTP1.UseTLS := utUseImplicitTLS;

FileDir:=ExtractFilePath(Application.ExeName)+'��.pdf';
if FileExists(FileDir) then begin
try
IdMessage1.IsEncoded:=true;
att:=TIdAttachmentfile.Create(IdMessage1.MessageParts,FileDir);

{���������� ������ � ���������}
IdSMTP1.Connect();
if idsmtp1.Connected then  begin
showmessage('������ ��� � ����������� :)'); end
 else
      ShowMessage ('������ �� �����, ����� ��� ��� :)');
IdSMTP1.Send(IdMessage1);
Application.ProcessMessages;
IdSMTP1.Disconnect;
idMessage1.Free;
IdSSLIOHandlerSocketOpenSSL.Free;
idSMTP1.Free;
except

end;
end;

end;

procedure TMain.FormCreate(Sender: TObject);
{
 ��������� ������� ����
}
begin
DateTimePicker1.Date:= Now;
end;

procedure TMain.frxReport1AfterPrint(Sender: TfrxReportComponent);
{
 ������� ��������������
}
var
MyName: string;
rez : TModalResult;
begin
  if combobox1.ItemIndex = -1
then
      rez := MessageDlg('��, ��? ������ ��������������',mtError, [mbOk], 0);
  if rez = mrOk
then
      frxReport1.OnClosePreview(Self);
             MyName:=  ComboBox1.Items.Strings[ComboBox1.ItemIndex];
                 frxReport1.Variables.Variables['NewName']:= #39 + MyName + #39;


end;

procedure TMain.frxReport1GetValue(const VarName: string; var Value: Variant);
{
 ��������� ���� �������
}
var
SmolDp, BigDp, myglobal: string;
GlobalAreaM: string;
begin
// ��������� ����
  if CompareText(VarName, 'DateSet') = 0 then
     Value := DateToStr(DateTimePicker1.Date);// ������������ 1.2  if RadioButton1.Checked thenSmolDp:= RadioButton1.Caption;  if CompareText(VarName, 'DpSmol') = 0 then    Value := SmolDp;// ����� ������ 1.2  if CompareText(VarName, 'Order') = 0 then     Value :=Edit1.Text;// ���� ������ 1.2  if CompareText(VarName, 'OrderDate') = 0 then     Value := MaskEdit1.Text;// ����� ������������ 1.2  if CompareText(VarName, 'equipment') = 0 then     Value :=Edit2.Text;// ���� ������������ 1.2   if CompareText(VarName, 'DateEuipment') = 0 then     Value :=MaskEdit2.Text;// ���������� 1.2   if CompareText(VarName, 'amount') = 0 then     Value :=Edit3.Text;// ������� 1.2   if CompareText(VarName, 'SmolArea') = 0 then     Value :=Edit4.Text;// ������������ 1.5   if RadioButton2.Checked then    BigDp:= RadioButton2.Caption;   if CompareText(VarName, 'DpBig') = 0 then    Value := BigDp;// ����� ������ 1.5   if CompareText(VarName, 'OrderBig') = 0 then     Value :=Edit5.Text;// ���� ������ 1.5   if CompareText(VarName, 'BigOrderDate') = 0 then     Value := MaskEdit3.Text;// ����� ������������ 1.5   if CompareText(VarName, 'BigEquipment') = 0 then     Value :=Edit6.Text;// ���� ������������ 1.5   if CompareText(VarName, 'DateBigEquipment') = 0 then     Value :=MaskEdit4.Text;// ���������� 1.5   if CompareText(VarName, 'BigAmount') = 0 then     Value :=Edit7.Text;// ������� 1.5   if CompareText(VarName, 'BigArea') = 0 then     Value :=Edit8.Text;// ����� ���������� 1.2 + 1.5   if edit3.Text = '' then begin      myglobal:=Edit7.Text  end else   if edit7.Text = '' then myglobal:=Edit3.Text else            myglobal:=IntToStr(StrToInt(Edit3.Text)+StrToInt(Edit7.Text));                 frxReport1.Variables.Variables['Global']:=#39 + myglobal + #39;// ����� �.�� 1.2 + 1.5  if edit4.Text = '' then begin      GlobalAreaM:= Edit8.Text  end else   if edit8.Text = '' then      GlobalAreaM:= Edit4.Text  else        GlobalAreaM:= floattostr(strtofloat(Edit4.Text)+strtofloat(Edit8.Text));          frxReport1.Variables.Variables['GlobalArea']:=#39 + GlobalAreaM + #39;end;
procedure TMain.ShowReportClick(Sender: TObject);
{
 �������� �����
}
begin
if ShowReport.Checked then frxreport1.showreport;
end;
end.
