# Module 3 - Exercise 2
Learning Objective: tSQLt.FakeTable

Helpful Links:
- [tSQLt.FakeTable](https://tsqlt.org/user-guide/isolating-dependencies/faketable/)
- [tSQLt.AssertEmptyTable](https://tsqlt.org/user-guide/assertions/assertemptytable/)
- [tSQLt.AssertEqualsTable](https://tsqlt.org/user-guide/assertions/assertequalstable/)
- [CREATE SCHEMA (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-schema-transact-sql?view=sql-server-ver15)
- [CREATE VIEW (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-view-transact-sql?view=sql-server-ver15)

## Instructions for Exercise 2

The goal of this exercise is write a simple view and enough tests to cover its functionality.

The marketing department needs a list of email addresses for email marketing purposes.

Write a view that returns CustomerId, FirstName, LastName, Email, and OptIn from the Booking.Customers table, but only for those customers who have opted in to receive marketing communications (OptIn = 1).

Write the Marketing.EmailList view:

1. Open the Module3-Exercise2 solution in SSMS
1. There are four projects -- one for the tests, one for the code, one that includes both code and tests from the demo, and one for tSQLt
   1. M3-Exercise2 (code)
   1. M3-Exercise2-Tests (tests)
   1. Module3-PresentationDemo2 
   1. tSQLt
1. First create (or recreate) the database by following these steps:
   1. Click on the M3-Exercise2-Tests project to highlight it.
   1. Run Tools --> Build. This will drop and recreate the database and install and execute a shell test.
   1. If you would like to also install the demo code in the database, click on Module3-PresentationDemo2 instead in step i) above.
3. Create a file to create the Marketing schema in the M3-Exercise2 project called, Marketing.schema.sql
4. Create a file for the view in the M3-Exercise2 project called, Marketing.EmailList.view.sql
5. Add entries for both files in build.sql, by following the example you'll find in build.sql
6. Find the the Marketing_EmailList_Tests.class.sql in the M3-Exercise2-Tests project. We have already added it for you.

Write the required code and enough tests.

## Optional Exercise
Learning Objective: tSQLt.FakeTable, testing joins

Helpful Links:
- [ISNULL (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/isnull-transact-sql?view=sql-server-ver15)
- [COUNT (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/count-transact-sql?view=sql-server-ver15)
- [Joins (SQL Server)](https://docs.microsoft.com/en-us/sql/relational-databases/performance/joins?view=sql-server-ver15)
- [FROM clause plus JOIN, APPLY, PIVOT (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/queries/from-transact-sql?view=sql-server-ver15)

Add the number of reservations for each customer to the view described above. You can get the number by counting the number of reservations in the Booking.Reservations table.

Think about how to best test this and discuss with your partner before starting.

