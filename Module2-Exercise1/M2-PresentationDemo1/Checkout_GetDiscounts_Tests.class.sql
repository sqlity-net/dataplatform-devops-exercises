EXEC tSQLt.NewTestClass 'Checkout_GetDiscounts_Tests';
GO

CREATE PROCEDURE Checkout_GetDiscounts_Tests.[test Coupon '15OFF' generates 15% discount]
AS
BEGIN
  DECLARE @ActualDiscount NUMERIC(10,2);
  
  SET @ActualDiscount = (SELECT percent_discount FROM Checkout.GetDiscount('15OFF'));

  EXEC tSQLt.AssertEquals @Expected = 15.0, @Actual = @ActualDiscount;
END;
GO

CREATE PROCEDURE Checkout_GetDiscounts_Tests.[test Coupon 'DOESNTEXIST' generates no discount]
AS
BEGIN
  DECLARE @ActualDiscount NUMERIC(10,2);
  
  SET @ActualDiscount = (SELECT percent_discount FROM Checkout.GetDiscount('DOESNTEXIST'));

  EXEC tSQLt.AssertEquals @Expected = 0, @Actual = @ActualDiscount;
END;
GO
