DROP View IF EXISTS Marketing.EmailList;
GO
CREATE VIEW Marketing.EmailList As
select 
	CustomerId,
  FirstName,
  LastName ,
  Email ,
  OptIn 
  from Booking.Customers
  where Optin = 1
GO