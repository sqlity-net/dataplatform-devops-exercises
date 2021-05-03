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

The goal of this exercise is write a simple view called, "HotelReservationCount", and enough tests to cover its functionality.

The Marketing department needs a count of reservations by hotel to better allocate marketing efforts.

Write a view that returns the number of reservations by hotel. The four columns this view returns are: HotelId, HotelName, HotelState, and ReservationCount:

1. Make a new feature branch called, "my-new-feature".
   1. xxx
      |actions|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835595-2c7e1480-ab91-11eb-9f6e-3cd0ec3a6536.png)|
      ||
   1. xxx
      |enable actions|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835634-57686880-ab91-11eb-9f14-951d5b9dab15.png)|
      ||
   1. xxx
      |settings|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835661-6cdd9280-ab91-11eb-861e-2091791c7681.png)|
      ||
   1. xxx
      |secrets|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835680-82eb5300-ab91-11eb-9145-fb1a4b56afc3.png)|
      ||
   1. xxx
      |new secret|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835693-972f5000-ab91-11eb-9b0f-622ad4c80728.png)|
      ||
   1. xxx
      |SPAWNCTL_ACCESS_TOKEN|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835743-d1005680-ab91-11eb-8c2d-3e57b0a4335f.png)|
      ||
   1. xxx
      |back to actions|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835768-ef665200-ab91-11eb-951b-29b71ca85ae5.png)|
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
   1. xxx
      ||
      |-|
      ||
      ||
