# Module 3 - Exercise 3
The goal of this exercise is to show how to isolate code from the specific implementation of external dependencies, in this case tables.

## Instructions for Exercise 3, Part 1

The database team has decided that they forgot an important implementation detail in the Booking.Reservations table and has provided a migration script to upgrade your database to the new version.

You want to make sure that this upgrade doesn't impact your code.

Execute the upgrade in the database and run the included test.
1. Open the Module3-Exercise3 solution in SSMS
1. Select the M3-Exercise3-Tests project and "Build" it. Does the included test pass? Record your answer.
1. Find the "➜➜Run_This.sql" file in the M3-Exercise3 project, open it, and execute it. This will run the migration script and run the test.
1. Does the test still pass? Record your answer.

## Instructions for Exercise 3, Part 2

Use tSQLt.FakeTable to fix the test. Find the documentation for tSQLt.FakeTable [here](https://tsqlt.org/user-guide/isolating-dependencies/faketable).
