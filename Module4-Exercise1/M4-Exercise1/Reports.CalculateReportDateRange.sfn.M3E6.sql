IF OBJECT_ID('Reports.CalculateReportDateRange') IS NOT NULL DROP FUNCTION Reports.CalculateReportDateRange;
GO
CREATE FUNCTION Reports.CalculateReportDateRange(@StartDate DATETIME2, @Length INT, @DatePart VARCHAR(20))
RETURNS TABLE
AS
RETURN
  SELECT 
      V.StartDate, 
      V.Length, 
      CASE @DatePart
        WHEN 'DAY' THEN DATEADD(DAY,V.Length-1,V.StartDate) 
        ELSE DATEADD(N,(CAST(@DatePart+' is not a valid DatePart. Check parameters of Reports.CalculateEndDate function.' AS INT)),NULL)
      END AS EndDate
    FROM (VALUES(COALESCE(@StartDate,SYSDATETIME()), COALESCE(@Length, 7)))V(StartDate, Length);
GO
