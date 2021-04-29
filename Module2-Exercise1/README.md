# Module 2 - Exercises
The goal of these exercises is to write your first test and try out Test Driven Design.

## Instructions for Exercise 1

The Lost & Found department needs to calculate shipping costs for forgotten items.
They are working on a table driven solution but need something working right now.

For now: If the item ships to the same state as the hotel, it’s $10. Otherwise shipping is $25.

Write the LostAndFound.CalculateShipping(@HotelState,@ShippingState) function:

1. Open the Module2-Exercise1 solution in SSMS
1. There are four projects -- one for the tests, one for the code, one that includes both code and tests from the demo, and one for tSQLt
   1. M2-Exercise1 (code)
   1. M2-Exercise1-Tests (tests)
   1. Module2-PresentationDemo1 
   1. tSQLt
1. First create (or recreate) the database by following these steps:
   1. Click on the M2-Exercise1-Tests project to highlight it.
   1. Run Tools --> Build. This will drop and recreate the database and install and execute a shell test.
   1. If you would like to also install the demo code in the database, click on Module2-PresentationDemo1 instead in step i) above.
3. Create a file to create the LostAndFound schema in the M2-Exercise1 project called, LostAndFound.schema.sql
4. Create a file for the function in the M2-Exercise1 project called, LostAndFound.CalculateShipping.sfn.sql
5. Add entries for both files in build.sql, by following the example you'll find in build.sql
6. Find the the LostAndFound_CalculateShipping_Tests.class.sql in the M2-Exercise1-Tests project. We have already added it for you

Write the required code and enough tests.

There are at several ways to run your unit tests:
1. **Run All**: With the cursor in a query window, press Ctrl+0. This will execute all tests in the database.
1. **Run Selection**: Highlight the name of the test class and press Ctrl+9. This will execute all tests in that test class. You can also highlight the full name including schema of a single test to just execute that one test.
1. **Build**: Select the M2-Exercise1-Tests project and run Tools --> Build. This will drop the database and recreate everything from scratch. :warning: Make sure you have everything saved before trying this method.

Note: You have successfully completed this exercise once you have: 
1. Written enough tests
1. All your tests pass when using the "Build" method above

## Instructions for Exercise 2

The Lost & Found department needs to *also* calculate handling costs for forgotten items.
They are still working on a table driven solution but need something working right now.

For now:  If the customer has more than 10000 rewards points, handling is free. If they have less, handling is $37.

Write the LostAndFound.CalculateHandling(@RewardsBalance) function:

1. Use the same project that you used for Exercise 1. 
1. Add the appropriate files for tests and code, as needed.
1. Find a partner, use TDD, and ping-pong style pair programming.
   1. The first person will write a failing unit test based on the business requirements, and pass keyboard control to their partner.
   1. The second person in the pair will write just enough code to make that first unit test pass, and then write a new failing unit test.
   1. The first person will now write just enough code to fix it.
   1. Rinse & Repeat.

   Remember, you want to see each test first fail (for the right reason) and then pass. So, run the tests after each of these steps.

Like in Exercise 1, you have successfully completed this exercise once you have: 
1. Written enough tests
1. All your tests pass when using the "Build" method above
