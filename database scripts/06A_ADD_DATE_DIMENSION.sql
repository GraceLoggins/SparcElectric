/* Create DimDate Table
Thanks to Ginger Grant of Patterns and Practices for the CTE function form 
https://blog.pragmaticworks.com/patterns-and-practices-creating-a-date-table
Alterations and errors are mine. */
--- Note: Sunday is considered the first day of the week, Monday the second ... Saturday the seventh.
USE [SparcElectricHybridDW]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DimDate]') AND type in (N'U'))
DROP TABLE [dbo].[DimDate]
GO

CREATE TABLE [dbo].[DimDate](

[DateKey] int NOT NULL,
[CalendarDate] [smalldatetime] NULL,
[CalendarYear] [int] NULL,
[QuarterNumber] [int] NULL,
[QuarterName] [varchar](14) NULL,
[MonthNumber] [int] NULL,
[MonthName] [nvarchar](30) NULL,
[DayNumber] [int] NULL,
[DayName] [nvarchar] (10),
[DayOfMonth] [int] NULL,
[WeekOfMonth] [int] NULL,
[YearDay] [int] NULL,
[YearWeek] [int] NULL,
[DaysInMonth] [tinyint] NULL,
[HolidayName] [nvarchar](50) NULL,
[IsHoliday] [bit] NULL,
[IsBankHoliday] [bit] NULL,
[IsWeekend] [bit] NULL,
[IsWeekday] [bit] NULL,
[IsBusinessDay] [bit] NULL,
[IsLeapYear] [bit] NULL
) ON [PRIMARY]

GO

DECLARE @StartDate smalldatetime = '01/01/2018';
DECLARE @EndDate smalldatetime = '08/01/2022';

/* CTE creates a list of numbers to generate the calendar */
WITH
A00(N) AS (SELECT 1 UNION ALL SELECT 1),
A02(N) AS (SELECT 1 FROM A00 a, A00 b),
A04(N) AS (SELECT 1 FROM A02 a, A02 b),
A08(N) AS (SELECT 1 FROM A04 a, A04 b),
A16(N) AS (SELECT 1 FROM A08 a, A08 b),
A32(N) AS (SELECT 1 FROM A16 a, A16 b),
cteTally(N) AS (SELECT ROW_NUMBER() OVER (ORDER BY N) FROM A32),

/*Calendar dates are created here*/
CalendarBase as (
    SELECT DateKey = n,
    CalendarDate = DATEADD(day, n - 1, @StartDate )
    FROM cteTally
    WHERE N <= DATEDIFF(day, @StartDate , @EndDate +1)
)

/* Populate date table here */
insert into dbo.DimDate(
    DateKey,
    CalendarDate,
    CalendarYear,
    QuarterNumber,
    QuarterName,
    MonthNumber,
    MonthName,
    DayNumber,
    DayName,
    DayOfMonth,
    WeekOfMonth,
    YearDay,
    YearWeek) 
SELECT
    DateKey = CONVERT(char(8), CalendarDate, 112),
    CalendarDate,
    CalendarYear = YEAR(CalendarDate),
    QuarterNumber =  (DATEPART(QUARTER,CalendarDate) ),
    QuarterName = 'Quarter ' + cast((DATEPART(QUARTER,CalendarDate) ) as char(1)) +' ' + cast(YEAR(CalendarDate) as char(4)),
    MonthNumber = MONTH(CalendarDate),
    MonthName = DATENAME(Month, CalendarDate),
    DayNumber = DATEPART(Dw, CalendarDate),
    DayName = DATENAME (Weekday,CalendarDate ),
    WeekDayNumber = DATEPART(DAY, CalendarDate),
    WeekOfMonth = DATEDIFF(week, DATEADD(day,1, CalendarDate - DAY(CalendarDate) + 1) -1, CalendarDate) +1,
    YearDay = DATEPART(DAYOFYEAR, CalendarDate),
    YearWeek = DATEPART(WEEK, CalendarDate)
FROM CalendarBase;

UPDATE dbo.DimDate SET IsLeapYear = 0 WHERE CalendarYear != 2020;
UPDATE dbo.DimDate SET IsLeapYear = 1 WHERE CalendarYear = 2020;

UPDATE dbo.DimDate
SET DaysInMonth = 30 WHERE MonthName IN ('April', 'June', 'September', 'November');
UPDATE dbo.DimDate
SET DaysInMonth = 31 WHERE MonthName IN  ('January', 'March', 'May', 'July', 'August', 'October', 'December');
UPDATE dbo.DimDate
SET DaysInMonth = 28 WHERE MonthName = 'February';
UPDATE dbo.DimDate
SET DaysInMonth = 29 WHERE MonthName = 'February' AND CalendarYear = 2020;

UPDATE dbo.DimDate SET IsWeekend = 1 WHERE DayName IN ('Saturday', 'Sunday');
UPDATE dbo.DimDate SET IsWeekend = 0 WHERE DayName NOT IN ('Saturday', 'Sunday');
UPDATE dbo.DimDate SET IsWeekday = 1 WHERE DayName NOT IN ('Saturday', 'Sunday');
UPDATE dbo.DimDate SET IsWeekday = 0 WHERE DayName IN ('Saturday', 'Sunday');

/* US Federal Holidays */
/* Locked to specific days */
--- Juneteenth: June 19
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, IsBusinessDay = 0, HolidayName = 'Juneteenth'
WHERE MonthName = 'June' AND DayOfMonth = 19;
--- Independance Day / July Fourth: July 4
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, IsBusinessDay = 0, HolidayName = 'Independance Day / July Fourth'
WHERE MonthName = 'July' AND DayOfMonth = 4;
--- Veterans Day: November 11
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, IsBusinessDay = 0, HolidayName = 'Veterans Day'
WHERE MonthName = 'November' AND DayOfMonth = 11;
--- Christmas: Dec 25th
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, IsBusinessDay = 0, HolidayName = 'Veterans Day'
WHERE MonthName = 'December' AND DayOfMonth = 25;
--- Not a Federal Holiday: Halloween
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 0, HolidayName = 'Halloween'
WHERE MonthName = 'October' AND DayOfMonth = 31;
GO
/* Positional Dates - Federal Holidays */
/* will replace with calculated dates instead of brute force at a later time */
--- Martin Luther King Jr Day: Third Monday of January
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Martin Luther King Jr Day'
WHERE CalendarYear = 2018 AND MonthName = 'January' AND DayOfMonth = 15;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Martin Luther King Jr Day'
WHERE CalendarYear = 2019 AND MonthName = 'January' AND DayOfMonth = 21;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Martin Luther King Jr Day'
WHERE CalendarYear = 2020 AND MonthName = 'January' AND DayOfMonth = 20;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Martin Luther King Jr Day'
WHERE CalendarYear = 2021 AND MonthName = 'January' AND DayOfMonth = 18;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Martin Luther King Jr Day'
WHERE CalendarYear = 2022 AND MonthName = 'January' AND DayOfMonth = 17;
GO
--- Washingtons Birthday / Presidents Day: Third Monday in February
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Presidents Day'
WHERE CalendarYear = 2018 AND MonthName = 'February' AND DayOfMonth = 19;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Presidents Day'
WHERE CalendarYear = 2019 AND MonthName = 'February' AND DayOfMonth = 18;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Presidents Day'
WHERE CalendarYear = 2020 AND MonthName = 'February' AND DayOfMonth = 17;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Presidents Day'
WHERE CalendarYear = 2021 AND MonthName = 'February' AND DayOfMonth = 15;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Presidents Day'
WHERE CalendarYear = 2022 AND MonthName = 'February' AND DayOfMonth = 21;
GO
--- Memorial Day: Last Monday of May
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Memorial Day'
WHERE CalendarYear = 2018 AND MonthName = 'May' AND DayOfMonth = 28;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Memorial Day'
WHERE CalendarYear = 2019 AND MonthName = 'May' AND DayOfMonth = 27;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Memorial Day'
WHERE CalendarYear = 2020 AND MonthName = 'May' AND DayOfMonth = 25;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Memorial Day'
WHERE CalendarYear = 2021 AND MonthName = 'May' AND DayOfMonth = 31;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Memorial Day'
WHERE CalendarYear = 2022 AND MonthName = 'May' AND DayOfMonth = 30;
GO
--- Labor Day: First Monday in September
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Labor Day'
WHERE CalendarYear = 2018 AND MonthName = 'September' AND DayOfMonth = 3;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Labor Day'
WHERE CalendarYear = 2019 AND MonthName = 'September' AND DayOfMonth = 2;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Labor Day'
WHERE CalendarYear = 2020 AND MonthName = 'September' AND DayOfMonth = 7;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Labor Day'
WHERE CalendarYear = 2021 AND MonthName = 'September' AND DayOfMonth = 6;
/* UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Labor Day'
WHERE CalendarYear = 2022 AND MonthName = 'September' AND DayOfMonth = 5; */
GO
--- Columbus Day: Second Monday in October
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Columbus Day / Indiginous Peoples Day'
WHERE CalendarYear = 2018 AND MonthName = 'October' AND DayOfMonth = 8;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Columbus Day / Indiginous Peoples Day'
WHERE CalendarYear = 2019 AND MonthName = 'October' AND DayOfMonth = 14;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Columbus Day / Indiginous Peoples Day'
WHERE CalendarYear = 2020 AND MonthName = 'October' AND DayOfMonth = 12;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Columbus Day / Indiginous Peoples Day'
WHERE CalendarYear = 2021 AND MonthName = 'October' AND DayOfMonth = 11;
/* UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Columbus Day / Indiginous Peoples Day'
WHERE CalendarYear = 2022 AND MonthName = 'October' AND DayOfMonth = 10; */
GO
--- Thanksgiving: Fourth Thursday of November
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Thanksgiving Day'
WHERE CalendarYear = 2018 AND MonthName = 'November' AND DayOfMonth = 22;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Thanksgiving Day'
WHERE CalendarYear = 2019 AND MonthName = 'November' AND DayOfMonth = 28;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Thanksgiving Day'
WHERE CalendarYear = 2020 AND MonthName = 'November' AND DayOfMonth = 26;
UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Thanksgiving Day'
WHERE CalendarYear = 2021 AND MonthName = 'November' AND DayOfMonth = 25;
/* UPDATE dbo.DimDate SET IsHoliday = 1, IsBankHoliday = 1, HolidayName = 'Thanksgiving Day'
WHERE CalendarYear = 2022 AND MonthName = 'November' AND DayOfMonth = 24; */
GO

/* Other Positional Dates */
--- Easter
UPDATE dbo.DimDate SET IsHoliday = 1, HolidayName = 'Easter'
WHERE CalendarYear = 2018 AND MonthName = 'April' AND DayOfMonth = 1;
UPDATE dbo.DimDate SET IsHoliday = 1, HolidayName = 'Easter'
WHERE CalendarYear = 2019 AND MonthName = 'April' AND DayOfMonth = 21;
UPDATE dbo.DimDate SET IsHoliday = 1, HolidayName = 'Easter'
WHERE CalendarYear = 2020 AND MonthName = 'April' AND DayOfMonth = 12;
UPDATE dbo.DimDate SET IsHoliday = 1, HolidayName = 'Easter'
WHERE CalendarYear = 2021 AND MonthName = 'April' AND DayOfMonth = 4;
UPDATE dbo.DimDate SET IsHoliday = 1, HolidayName = 'Easter'
WHERE CalendarYear = 2022 AND MonthName = 'April' AND DayOfMonth = 17;
GO

UPDATE dbo.DimDate SET IsHoliday = 0 WHERE IsHoliday IS NULL;
UPDATE dbo.DimDate SET IsBankHoliday = 0 WHERE IsBankHoliday IS NULL;
UPDATE dbo.DimDate SET IsBusinessDay = 1 WHERE IsWeekend = 0 AND IsBankHoliday = 0;
UPDATE dbo.DimDate SET IsBusinessDay = 0 WHERE IsBusinessDay IS NULL;
GO

/* Add Clustered Primary Key as DateKey */
ALTER TABLE DimDate ADD PRIMARY KEY (DateKey);
GO
