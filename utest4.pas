unit utest4;


// type, const, var, procedure, function �����ϴ� ��
// �̰��� ����� type, const, var, procedure, function�� �ڱ� ���� �� �ܺ� ���ֿ����� ��밡��
interface
uses
  vcl.Dialogs;
type

  TPerson = class(TObject)     // parent�� �Ⱦ��� TOBject��� ����
    private                    // ���� ���ֿ����� �ٸ� Ŭ������ ��� ����
      ttt: string;
    strict private             // + 2007�� �߰��� ���� only �ڱ� Ŭ����������
      ttt2: string;
    public                     // class�� ����Ʈ�� public
      Name: String;
      Age: byte;
      Address: string;
      function GetName: string;
      constructor Create; virtual;
  end;

  TEmp = class(TPerson)  //Create, constructor, destroy, Free, Name, Age ... ���
    Company: string;     // �߰�
    function salary: integer; virtual; abstract;
    constructor Create; override;
  end;

  TH = class(TEmp)
    hrs: integer;    //�߰�
    rate: integer;   //�߰�
    function salary: integer; override;
    constructor Create; override;
  end;

  TDog = class(TObject)
    Name: String;
    Age: byte;
    Address: string;
    function GetName: string;
  end;


  country = array [0..2] of string; // �����迭, zero based �迭, ���ϼ�,
  Person = record
    Name: String;
    Age: byte;
    Address: String;
    function GetName: String;  // +2007 record�� procedure�� function�� �߰�����.
  end;
var
  pi: ^integer;
  ps: pchar; // ���ڿ�Ÿ�� pansiCHAR, Pwidechar, punicodechar
  a1: array of string;              // �����迭 1����
  a2: array of array of string;
  countries: Country;// = ('Korea', 'America', 'Japan');
  s: String;   // 1.0 : shortstring; 2.0~2009 ���� : AnsiString; 2009~ : unicodestring;
  i: Nativeint = 100; //32 or 64 �ѳ� �� �� ����.
  r: real;
  t: TDateTime;
  b: boolean;  // bytebool, wordbool, longbool ���(��Ʈ������??)
  v: variant;
  // ����, ����, ����, �Ǽ�, �迭, �����迭, (����, ����, �Ŀ�����Ʈ) : ole object ���� ����Ÿ�� ���� �� �ִ� Ÿ��
  // unssigned 16 byte --> �޸� ���� ��� --> performance ����

procedure Hello;
function Add(x: integer = 2; y: integer = 3): integer;  inline;
function Sub(x, y: integer): integer;
function Divide(x, y: real): extended; overload;  // �������� ���� real���ٴ� extended��
function Divide(x, y: integer): integer; overload;
// ������ ����� ��ƾ���� �����ϴ� ��
// type, const, var, procedure, function ���� ---->> �ڱ� ���� �ؿ����� ��밡��

implementation
var
  j: integer = 1;
procedure Hello;
var
  k: integer;  // ���⼭�� �ʱ�ó���� �ȵ�.
begin
  ShowMessage('�ȳ�');
end;

function Add(x, y: integer): integer;
begin
  //exit(x + y);   // +2010 exit (���ϰ�)
  Result := x + y;
end;

function Sub(x, y: integer): integer;
begin
  Result := x - y;
end;

function Divide(x, y: real): extended;
begin
  Result := x / y;
end;

function Divide(x, y: integer): integer;
begin
  Result := x div y;
end;

function Person.GetName: String;
begin
  Result := Name;
end;
// �ʱ�ó��: �޸��Ҵ�, �������Ҵ�.. ���� �ʱ�ó��.
//uses���� ������ ����, ���� �߱� ����!: �� ���� �߿�.
{ Person }


{ TPerson }

constructor TPerson.Create;
begin
  Name := '��켮';
  Age := 26;
  Address := '��õ �߱�';
end;

function TPerson.GetName: string;
begin
  Result := Name;
end;

{ TDog }

function TDog.GetName: string;
begin
  Result := Name;
end;

{ TH }

constructor TH.Create;
begin
  inherited;
  hrs := 10;
  rate := 100000;
end;

function TH.salary: integer;
begin
  Result := hrs * rate;
end;

{ TEmp }

constructor TEmp.Create;
begin
  inherited;
  Company := '�Ｚ';
end;

initialization
begin
  countries[0] := '�ѱ�';
  countries[1] := '�̱�';
  countries[2] := '�Ϻ�';
  SetLength(a1, 2);
  a1[0] := 'a1';
  SetLength(a2, 2, 2);    // �迭, ����ü�� �ڵ����� �޸� ������ �ȴ�.
  a2[0,0] := 'a2';        // ������ �̷��� nulló�� �� �� �� �ִ�. a1 := nil;
  SetLength(a1, 3);       // �տ��ִ� a1���� Ȯ���� �����̴�.
end;

// initialization�� �־�� finalization�� �� �� �ִ�.
// ����ó�� �ʱ�ó�� a-b-c ����ó�� c-b-a
finalization

end.