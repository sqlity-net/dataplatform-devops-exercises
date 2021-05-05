# Module 3 - Exercise 5
Learning Objective: CRISP

Helpful Links:
- [tSQLt - Assertions](https://tsqlt.org/user-guide/assertions/)
- [tSQLt - Isolating Dependencies](https://tsqlt.org/user-guide/isolating-dependencies/)

## Instructions for Exercise 5

The goal of this exercise is use CRISP best practices to reduce test maintainance costs.

Review the tests you have written so far. Pick one of the best practices below and refactor your tests to follow it, for example Clean Test Names.

The CRISP best practices include the following:

- Clean
  - Name your tests to describe the expectation, not the situation. For example, instead of [test 1 customer] use [test returns one row if there is 1 customer]
  - Define test variables with descriptive and appropriate names. 
  - Create only as much data in your tests as needed to test one and only one thing. 
  - Create each test to test only one specific piece of the requirement.
- Repeatable
  - Set up or assemble everything your test needs within the test, so that it produces the same result every single time it is executed.
- Independent
  - Use test case doubles to make sure that the test is independent of outside influences. See also Repeatable.
- Speedy
  - Use as little data as possible so that your tests are fast, and thus more likely to be run frequently.
- Precise
  - Write your test such that there is one and only one reason for the test to fail.
  - Write your tests such that a change in requirements results in only one test being updated.
  - Be precise in the test expectations. For example instead of expecting 3 rows to be returned using COUNT(), use tSQLt.AssertEqualsTable to specify the exact column values.
