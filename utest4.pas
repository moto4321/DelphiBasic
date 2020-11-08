unit utest4;


// type, const, var, procedure, function 선언하는 곳
// 이곳에 선언된 type, const, var, procedure, function는 자기 유닛 및 외부 유닛에서도 사용가능
interface
uses
  vcl.Dialogs;
type

  TPerson = class(TObject)     // parent를 안쓰면 TOBject라고 간주
    private                    // 같은 유닛에서는 다른 클래스도 사용 가능
      ttt: string;
    strict private             // + 2007에 추가된 문법 only 자기 클래스에서만
      ttt2: string;
    public                     // class의 디폴트는 public
      Name: String;
      Age: byte;
      Address: string;
      function GetName: string;
      constructor Create; virtual;
  end;

  TEmp = class(TPerson)  //Create, constructor, destroy, Free, Name, Age ... 계승
    Company: string;     // 추가
    function salary: integer; virtual; abstract;
    constructor Create; override;
  end;

  TH = class(TEmp)
    hrs: integer;    //추가
    rate: integer;   //추가
    function salary: integer; override;
    constructor Create; override;
  end;

  TDog = class(TObject)
    Name: String;
    Age: byte;
    Address: string;
    function GetName: string;
  end;


  country = array [0..2] of string; // 정적배열, zero based 배열, 통일성,
  Person = record
    Name: String;
    Age: byte;
    Address: String;
    function GetName: String;  // +2007 record에 procedure나 function을 추가가능.
  end;
var
  pi: ^integer;
  ps: pchar; // 문자열타입 pansiCHAR, Pwidechar, punicodechar
  a1: array of string;              // 동적배열 1차원
  a2: array of array of string;
  countries: Country;// = ('Korea', 'America', 'Japan');
  s: String;   // 1.0 : shortstring; 2.0~2009 이전 : AnsiString; 2009~ : unicodestring;
  i: Nativeint = 100; //32 or 64 넘나 들 수 있음.
  r: real;
  t: TDateTime;
  b: boolean;  // bytebool, wordbool, longbool 등등(비트연산자??)
  v: variant;
  // 문자, 숫자, 정수, 실수, 배열, 동적배열, (엑셀, 워드, 파워포인트) : ole object 등의 데이타를 가질 수 있는 타입
  // unssigned 16 byte --> 메모리 많이 사용 --> performance 저하

procedure Hello;
function Add(x: integer = 2; y: integer = 3): integer;  inline;
function Sub(x, y: integer): integer;
function Divide(x, y: real): extended; overload;  // 나누기일 때는 real보다는 extended로
function Divide(x, y: integer): integer; overload;
// 위에서 선언된 루틴들을 구현하는 곳
// type, const, var, procedure, function 선언 ---->> 자기 유닛 밑에서만 사용가능

implementation
var
  j: integer = 1;
procedure Hello;
var
  k: integer;  // 여기서는 초기처리가 안됨.
begin
  ShowMessage('안녕');
end;

function Add(x, y: integer): integer;
begin
  //exit(x + y);   // +2010 exit (리턴값)
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
// 초기처리: 메모리할당, 변수값할당.. 등의 초기처리.
//uses절을 만나면 실행, 폼이 뜨기 전에!: 이 시점 중요.
{ Person }


{ TPerson }

constructor TPerson.Create;
begin
  Name := '기우석';
  Age := 26;
  Address := '인천 중구';
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
  Company := '삼성';
end;

initialization
begin
  countries[0] := '한국';
  countries[1] := '미국';
  countries[2] := '일본';
  SetLength(a1, 2);
  a1[0] := 'a1';
  SetLength(a2, 2, 2);    // 배열, 구조체는 자동으로 메모리 관리가 된다.
  a2[0,0] := 'a2';        // 하지만 이렇게 null처리 할 수 는 있다. a1 := nil;
  SetLength(a1, 3);       // 앞에있는 a1에서 확장의 개념이다.
end;

// initialization이 있어야 finalization을 쓸 수 있다.
// 마감처리 초기처리 a-b-c 마감처리 c-b-a
finalization

end.
