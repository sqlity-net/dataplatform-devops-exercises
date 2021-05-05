# Module 3 - Exercise 4
Learning Objective: tSQLt.FakeTable, testing joins

Helpful Links:
- [tSQLt.FakeTable](https://tsqlt.org/user-guide/isolating-dependencies/faketable/)
- [tSQLt.AssertEmptyTable](https://tsqlt.org/user-guide/assertions/assertemptytable/)
- [tSQLt.AssertEqualsTable](https://tsqlt.org/user-guide/assertions/assertequalstable/)
- [CREATE VIEW (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-view-transact-sql?view=sql-server-ver15)
- [COUNT (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/count-transact-sql?view=sql-server-ver15)
- [SELECT - GROUP BY- Transact-SQL](https://docs.microsoft.com/en-us/sql/t-sql/queries/select-group-by-transact-sql?view=sql-server-ver15)
- [ISNULL (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/isnull-transact-sql?view=sql-server-ver15)

## Instructions for Exercise 4

The goal of this exercise is to write a simple view called, "Reports.HotelReservationCount", and enough tests to cover its functionality.

The Marketing department needs a count of reservations by hotel to better allocate marketing efforts.

Write a view that returns the number of reservations by hotel. The four columns this view returns are: HotelId, HotelName, HotelState, and ReservationCount:

1. Open the Module3-Exercise4 solution in SSMS
1. There are three projects -- one for the tests, one for the code, and one for tSQLt
   1. M3-Exercise4 (code)
   1. M3-Exercise4-Tests (tests)
   1. tSQLt
1. First create (or recreate) the database by following these steps:
   1. Click on the M3-Exercise4-Tests project to highlight it.
   1. Run Tools --> Build. This will drop and recreate the database and install and execute shell tests.
   1. Please note that the test will fail with the message, "TO DO".
1. Create a file for the Reports.HotelReservationCount view in the M3-Exercise4 project called, Reports.HotelReservationCount.view.sql
1. Add the Reports.HotelReservationCount.view.sql file to the entries in build.sql
1. We have already created for you the Reports_HotelReservationCount_Tests.class.sql file for your unit tests.

Write the required code and enough tests.
Think about how to best test this and discuss with your partner before starting.

## Instructions for Advanced Exercise

The goal of this advanced exercise is write a view called, "Reports.StateYearReservationCount", and enough tests to cover its functionality.

The Finance department needs to see an overview of how reservations are performing by state and year.

Write a view that returns the number of reservations by state and year. The three columns this view returns are: ReservationYear, ReservationState, and ReservationCount:

1. Create a file for the Reports.StateYearReservationCount view in the M3-Exercise4 project called, Reports.StateYearReservationCount.view.sql
1. Add the Reports.StateYearReservationCount.view.sql file to the entries in build.sql
1. We have already created for you the Reports_StateYearReservationCount_Tests.class.sql file for your unit tests.

Write the required code and enough tests.
Think about how to best test this and discuss with your partner before starting.
