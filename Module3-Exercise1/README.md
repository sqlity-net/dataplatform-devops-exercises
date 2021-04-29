# Module 3 - Exercise 1
Learning Objective: tSQLt.AssertEqualsString

Helpful Links:
- [tSQLt.AssertEqualsString](https://tsqlt.org/user-guide/assertions/assertequalsstring/)
- [DECLARE @local_variable (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/declare-local-variable-transact-sql?view=sql-server-ver15)
- [CREATE FUNCTION (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/statements/create-function-transact-sql?view=sql-server-ver15)
- [+ (String Concatenation) (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/string-concatenation-transact-sql?view=sql-server-ver15)
- [LEFT (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/functions/left-transact-sql?view=sql-server-ver15)
- [CASE (Transact-SQL)](https://docs.microsoft.com/en-us/sql/t-sql/language-elements/case-transact-sql?view=sql-server-ver15)

## Instructions for Exercise 1

The goal of this exercise is write a simple function and enough tests to cover its functionality.

The Marketing department needs a salutation for customers when sending emails.
Write a function that returns the proper greeting for marketing emails.

For now the marketing department needs only a simple format, "Dear" followed by the first initial, a dot, and then the last name. For example, for the customer, "John Smith", the function would return "Dear J. Smith".

Write the Marketing.GetGreeting(@FirstName,@LastName) function:

1. Open the Module3-Exercise1 solution in SSMS
1. There are four projects -- one for the tests, one for the code, one that includes both code and tests from the demo, and one for tSQLt
   1. M3-Exercise1 (code)
   1. M3-Exercise1-Tests (tests)
   1. Module3-PresentationDemo1 
   1. tSQLt
1. First create (or recreate) the database by following these steps:
   1. Click on the M3-Exercise1-Tests project to highlight it.
   1. Run Tools --> Build. This will drop and recreate the database and install and execute a shell test.
   1. If you would like to also install the demo code in the database, click on Module3-PresentationDemo1 instead in step i) above.
3. Create a file to create the Marketing schema in the M3-Exercise1 project called, Marketing.schema.sql
4. Create a file for the function in the M3-Exercise1 project called, Marketing.GetGreeting.sfn.sql
5. Add entries for both files in build.sql, by following the example you'll find in build.sql
6. Find the the Marketing_GetGreeting_Tests.class.sql in the M3-Exercise1-Tests project. We have already added it for you.

Write the required code and enough tests.

There are several ways to run your unit tests:
1. **Run All**: With the cursor in a query window, press Ctrl+0. This will execute all tests in the database.
1. **Run Selection**: Highlight the name of the test class and press Ctrl+9. This will execute all tests in that test class. You can also highlight the full name including schema of a single test to just execute that one test.
1. **Build**: Select the M3-Exercise1-Tests project and run Tools --> Build. This will drop the database and recreate everything from scratch. :warning: Make sure you have everything saved before trying this method.

Note: You have successfully completed this exercise once you have: 
1. Written enough tests
1. All your tests pass when using the "Build" method above
