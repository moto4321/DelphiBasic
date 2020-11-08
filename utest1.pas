unit utest1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MyButton: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button9: TButton;
    FontDialog1: TFontDialog;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    procedure FormActivate(Sender: TObject);
    procedure MyButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure TestHandler(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  //default는 published
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses utest4, utest3, utest2;  // 컴파일 명령어
var
  h: th;   // 51''
  Test_btn: TButton;

procedure TForm1.Button10Click(Sender: TObject);
begin
  if FontDialog1.Execute then     // 이해가 안감!!
    Font := FontDialog1.Font;     // 찍어놓은 컴포넌트는 해제 안해줘도됨.
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  cd: TColorDialog;       // 여기 변수는 stack을 쓰기때문에 메모리 잡지않음
begin
  cd := TColorDialog.Create(Self);
  caption := IntToStr(ComponentCount);
  if cd.Execute then
    color := cd.Color;
  cd.Free;
  caption := IntToStr(ComponentCount);
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  if not Assigned(Form2) then
  begin
    Form2 := TForm2.Create(Application);
    Caption := IntToStr(Application.ComponentCount);
    Form2.Show;
  end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Form3 := TForm3.Create(Application);  // 2' 15''
  Caption := IntToStr(Application.ComponentCount);
  if Form3.ShowModal = mrOk then
    ShowMessage('ok');
  Form3.Free;                           // showmodal은?
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  if Sender = Button1 then
    Mybutton.Caption := '닫기'
  else
    ShowMessage('기타 버튼 클릭');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage('my process');
  button1Click(Sender); // 버튼3이 넘어감, Sender 대신 button1을 넣으면 '기타버튼클릭' 이 안나옴.
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Button4.Caption := IntToStr(i);  // j는 안된다.
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  hello;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Button6.Caption := IntToStr(Add(4, 7));
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  button7.Caption := floatToStr(Divide(12, 3));
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  if H = nil then
    H := th.Create;
    edit1.Text := H.GetName;
    edit2.Text := IntToStr(H.Age);
    edit3.Text := H.Address;
    edit4.Text := H.Company;
    edit5.Text := IntToStr(H.salary);
    freeAndnil(H);  // 인스턴스... (1' 06'' 30''')
    //H.Free;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Test_btn := TButton.Create(Self);   // 여기서 self는 form1, nil 도 괜찮음.
  Caption := IntToStr(ComponentCOunt);
  Test_btn.Parent := self;
  Test_btn.Left := button9.Left;
  Test_btn.Top := button9.Top + button9.Height + 16;
  Test_btn.Caption := '테스트';
  Test_btn.SetFocus;
  Test_btn.OnClick := TestHandler;
  //Test_btn.OnClick := nil;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  caption := IntToStr(self.ComponentCOunt); // 여기서 self는 form1 을 가리킴.
end;

procedure TForm1.MyButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.TestHandler(Sender: TObject);
begin
  ShowMessage('테스트 중 입니다.');
end;

end.
