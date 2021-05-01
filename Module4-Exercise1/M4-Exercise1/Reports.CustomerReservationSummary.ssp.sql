IF OBJECT_ID('Reports.CustomerReservationSummary') IS NOT NULL DROP PROCEDURE Reports.CustomerReservationSummary;
GO
CREATE PROCEDURE Reports.CustomerReservationSummary
  @StartDate DATE = NULL,
  @LengthInDays INT = NULL
AS
BEGIN
  DECLARE @CalculatedStartDate DATE, @CalculatedEndDate DATE;
  
  SELECT @CalculatedStartDate = StartDate, @CalculatedEndDate = EndDate FROM Reports.CalculateReportDateRange(@StartDate,@LengthInDays,'DAY');

  SELECT 
      RH.StartDate,
      RH.EndDate,
      RH.TotalCustomerCount,
      RH.ActiveCustomerCount,
      RH.ReservationCount,
      RH.AvgDailyReservationCount
    FROM Reports.CustomerReservationSummaryHeader(@CalculatedStartDate, @CalculatedEndDate) AS RH;

  EXEC Reports.CustomerReservationSummaryDetail @StartDate = @CalculatedStartDate, @EndDate = @CalculatedEndDate;
END;
GO



























































GO
--EXEC Reports.CustomerReservationSummary '2019-03-11',4;
GO
