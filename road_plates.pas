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
     Value := DateToStr(DateTimePicker1.Date);
procedure TMain.ShowReportClick(Sender: TObject);
{
 �������� �����
}
begin
if ShowReport.Checked then frxreport1.showreport;
end;
end.