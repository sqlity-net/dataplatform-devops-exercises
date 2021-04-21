
CREATE FUNCTION HandlingCosts.CalculateHandling (
@rewards int )
RETURNS int 
AS
BEGIN
	if @rewards > 10000
		RETURN 0
	Return 37
END
GO