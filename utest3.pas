unit utest3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Vcl.WinXPickers,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm3 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    MonthCalendar1: TMonthCalendar;
    DatePicker1: TDatePicker;
    CalendarPicker1: TCalendarPicker;
    CalendarView1: TCalendarView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
