PRINT 'start dbo.person.tbl.sql';
GO

IF OBJECT_ID('dbo.person', 'U') IS NOT NULL
  DROP TABLE dbo.person
GO

CREATE TABLE dbo.person
(
	id int NOT NULL, 
	fullName nvarchar(MAX) NULL,
    CONSTRAINT PK_person_table PRIMARY KEY CLUSTERED (id)
)
GO

PRINT 'end dbo.person.tbl.sql';
GO