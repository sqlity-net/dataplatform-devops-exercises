# Module 2 - Exercises
The goal of these exercises is to write your first test and try out Test Driven Design.

## Instructions for Exercises

The Lost & Found department needs to calculate shipping costs for forgotten items.
They are working on a table driven solution but need something working right now.

For now: If the item ships to the same state as the hotel, it’s $10. Otherwise shipping is $25.

Write the LostAndFound.CalculateShipping(@HotelState,@ShippingState) function:

1. Open the Module2-Exercise1 solution in SSMS
1. There are three projects -- one for the tests and one for the code and one for tSQLt
  1. Module2-Exercise1 (code)
  1. Module2-Exercise1-Tests (tests)
  1. tSQLt
1. Create a file to create the LostAndFound schema in the Module2-Exercise1 project called, LostAndFound.schema.sql
1. Create a file for the function in the Module2-Exercise1 project called, LostAndFound.CalculateShipping.sfn.sql
1. Add entries for both files in build.sql, by following the example you'll find in build.sql
1. Find the the LostAndFound_CalculateShipping_Tests.class.sql in the Module2-Exercise1-Tests project. We have already added it for you

Write the required code and enough tests

There are at several ways to run your unit tests:
1. With the cursor in a query window, press Ctrl+0. This will execute all tests in the database.
1. Highlight the name of the test class and press Ctrl+9. This will execute all tests in that test class. You can also highlight the full name including schema of a single test to just execute that one test.
1. Select the Module2-Exercise1-Tests project and run Tools --> Build. This will drop the database and recreate everything from scratch. :warning: Make sure you have everything saved before doing this.

Note: You have successfully completed this exercise once you have 
1. Written enough tests
1. All your tests pass when using the "Build" method above
