EXEC tSQLt.NewTestClass 'Marketing_EmailList_Tests';
GO

CREATE PROCEDURE Marketing_EmailList_Tests.[test one person has opted for email]
AS
BEGIN
	
	IF OBJECT_ID(N'ActualList') IS NOT NULL DROP TABLE ActualList;
    IF OBJECT_ID(N'ExpectedList') IS NOT NULL DROP TABLE ExpectedList;

	insert into booking.customers (FirstName,LastName,JoinDate,BirthDate,GenderCd,RegionId,Email,OptIn)
	values ('Jim','Pes',getdate(),'02-04-1989',1,1,'jimpescod@gmail.com',0),
	('Jim1','Pes1',getdate(),'02-04-1989',1,1,'jim1pescod@gmail.com',1),
	('Jim2','Pes2',getdate(),'02-04-1989',1,1,'jim2pescod@gmail.com',0),
	('Jim3','Pes31',getdate(),'02-04-1989',1,1,'jim3pescod@gmail.com',0)

	--Actual
	select Customerid,FirstName,LastName,Email,OptIn 
	into ActualList
	from booking.customers  
	where optin = 1

	select Customerid,FirstName,LastName,Email,OptIn 
	into expected
	from marketing.EmailList

  EXEC tSQLt.AssertEqualsTable expected, ActualList;
END
go

CREATE PROCEDURE Marketing_EmailList_Tests.[test Table and view opted in counts missmatch customer list]
AS
BEGIN	
	Declare @ActualListCount int;
    Declare @ExpectedListCount int;

	insert into booking.customers (FirstName,LastName,JoinDate,BirthDate,GenderCd,RegionId,Email,OptIn)
	values ('Jim','Pes',getdate(),'02-04-1989',1,1,'jimpescod@gmail.com',0),
	('Jim1','Pes1',getdate(),'02-04-1989',1,1,'jim1pescod@gmail.com',1),
	('Jim2','Pes2',getdate(),'02-04-1989',1,1,'jim2pescod@gmail.com',0),
	('Jim3','Pes31',getdate(),'02-04-1989',1,1,'jim3pescod@gmail.com',0)

	--Actual	
	set @ActualListCount =(select count(*)
	from booking.customers ) 
	--expected
	set @ExpectedListCount = (select count(* )
	from marketing.EmailList)

  EXEC tSQLt.AssertNotEquals @ActualListCount, @ExpectedListCount;
END
GO

CREATE PROCEDURE Marketing_EmailList_Tests.[test no one opt in vs customers exist]
AS
BEGIN	
	IF OBJECT_ID(N'ActualList') IS NOT NULL DROP TABLE ActualList;

	insert into booking.customers (FirstName,LastName,JoinDate,BirthDate,GenderCd,RegionId,Email,OptIn)
	values ('Jim','Pes',getdate(),'02-04-1989',1,1,'jimpescod@gmail.com',0),
	('Jim1','Pes1',getdate(),'02-04-1989',1,1,'jim1pescod@gmail.com',0),
	('Jim2','Pes2',getdate(),'02-04-1989',1,1,'jim2pescod@gmail.com',0),
	('Jim3','Pes31',getdate(),'02-04-1989',1,1,'jim3pescod@gmail.com',0)

	--Actual
	select *
	into ActualList
	from Marketing.EmailList
	
  EXEC tSQLt.AssertEmptyTable ActualList
END
GO


CREATE PROCEDURE Marketing_EmailList_Tests.[test no customers opted in customers empty]
AS
BEGIN	

	IF OBJECT_ID(N'ActualList') IS NOT NULL DROP TABLE ActualList;

	--Actual	
	select *
	into ActualList
	from Marketing.EmailList

  EXEC tSQLt.AssertEmptyTable ActualList
END
GO

