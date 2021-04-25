# Module 3 - Exercise 4
The goal of this exercise is write a simple view called, "StateYearReservationCount", and enough tests to cover its functionality.

## Instructions for Exercise 4

The Finance department needs a count of reservations by "ReservationState" and "ReservationYear" for reporting purposes.

Write a view that returns the number of reservations by year and state. The three columns this view returns are: ReservationYear, ReservationState, and ReservationCount:

1. Open the Module3-Exercise4 solution in SSMS
1. There are four projects -- one for the tests, one for the code, one that includes both code and tests from the demo, and one for tSQLt
   1. M3-Exercise4 (code)
   1. M3-Exercise4-Tests (tests)
   1. tSQLt
1. First create (or recreate) the database by following these steps:
   1. Click on the M3-Exercise4-Tests project to highlight it.
   1. Run Tools --> Build. This will drop and recreate the database and install and execute a shell test.
   1. Please note that the test will fail with the message, "TO DO".
1. Create a file to create the StateYearReservationCount view in the M3-Exercise4 project called, StateYearReservationCount.view.sql
1. Add the StateYearReservationCount.view.sql file to the entries in build.sql

Write the required code and enough tests.