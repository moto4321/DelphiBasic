object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 474
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    587
    474)
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 32
    Top = 432
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 0
    ExplicitTop = 274
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 432
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    ExplicitTop = 274
  end
  object Button1: TButton
    Left = 393
    Top = 432
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #54869#51064
    ModalResult = 1
    TabOrder = 2
    ExplicitLeft = 311
    ExplicitTop = 274
  end
  object Button2: TButton
    Left = 490
    Top = 432
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #52712#49548
    ModalResult = 2
    TabOrder = 3
    ExplicitLeft = 408
    ExplicitTop = 274
  end
  object DateTimePicker1: TDateTimePicker
    Left = 32
    Top = 24
    Width = 218
    Height = 21
    Date = 44140.000000000000000000
    Time = 0.659752766201563600
    TabOrder = 4
  end
  object MonthCalendar1: TMonthCalendar
    Left = 32
    Top = 64
    Width = 218
    Height = 160
    Date = 44140.000000000000000000
    FirstDayOfWeek = dowMonday
    TabOrder = 5
  end
  object DatePicker1: TDatePicker
    Left = 311
    Top = 24
    Width = 255
    Date = 44140.000000000000000000
    DateFormat = 'yyyy/MM/dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 6
  end
  object CalendarPicker1: TCalendarPicker
    Left = 311
    Top = 88
    Width = 255
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TextHint = 'select a date'
  end
  object CalendarView1: TCalendarView
    Left = 311
    Top = 142
    Width = 255
    Height = 233
    Date = 44140.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    HeaderInfo.DaysOfWeekFont.Color = clWindowText
    HeaderInfo.DaysOfWeekFont.Height = -13
    HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    HeaderInfo.DaysOfWeekFont.Style = []
    HeaderInfo.Font.Charset = DEFAULT_CHARSET
    HeaderInfo.Font.Color = clWindowText
    HeaderInfo.Font.Height = -20
    HeaderInfo.Font.Name = 'Segoe UI'
    HeaderInfo.Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
end
