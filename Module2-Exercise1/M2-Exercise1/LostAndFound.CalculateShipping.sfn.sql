CREATE FUNCTION LostAndFound.CalculateShipping (
@HotelState Varchar (10) ,@ShippingState Varchar (10))
RETURNS int 
AS
BEGIN
	if @HotelState = @ShippingState
		RETURN 10
	Return 25
END
GO