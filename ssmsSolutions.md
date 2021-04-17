# SSMS Solutions and Projects Explained!

Just like Visual Studio, SSMS has solutions and projects. They organize the files that are important to your database application.

The biggest difference between working directly with database objects and working with SSMS solutions is that solutions are based on files in your filesystem, not on objects in your database.

Projects provide a way to organize the files in a solution into groups, and are basically subfolders on your filesystem. The solution is at the top of the hierarchy. All projects must be part of a solution, and every file must be part of a project. Solutions can have, and often do have, more than one project. You may create as many projects as needed.

## How to create a solution
1. To create a solution
   |New Project (and also Solution)|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097644-701e2080-9ef9-11eb-9d8b-4cb54045153a.png)|
   ||

   |Names and Locations|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097676-a6f43680-9ef9-11eb-8e8b-86cc877b4aff.png)|
   ||
3. Create directory for solution, this will also automatically create the first project.
   |Solution and Project Created|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097732-f20e4980-9ef9-11eb-94da-4275176b48bc.png)|
   ||

   |Add - New Item|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097750-0a7e6400-9efa-11eb-9fa9-3e329c7fe86a.png)|
   ||

   |SQL Server Query|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097770-2255e800-9efa-11eb-9310-011d3a220a26.png)|
   ||

   |Item Name|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097791-3863a880-9efa-11eb-9588-a1dd1a6f613b.png)|
   ||

   |MyQuery.sql|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097802-44e80100-9efa-11eb-9907-e79b049c0cad.png)|
   ||

   |Add - New Project|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097831-71038200-9efa-11eb-9277-054edb059deb.png)|
   ||

   |New Project Name|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097860-9bedd600-9efa-11eb-9ed3-0e950574340e.png)|
   ||

   |New Project Created|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097877-b627b400-9efa-11eb-9b12-9cd6b346cff0.png)|
   ||

   |Add - Existing Item|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097888-c2ac0c80-9efa-11eb-9ba5-21b0c6f5f67b.png)|
   ||

   |Selecting a File - Anywhere|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097915-f7b85f00-9efa-11eb-93ad-8adec116dd26.png)|
   ||

   |Copied and Added File|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097946-2cc4b180-9efb-11eb-9782-50166ad27b4c.png)|
   ||

   ||
   |-|
   ||
   ||

   ||
   |-|
   ||
   ||

   ||
   |-|
   ||
   ||

   ||
   |-|
   ||
   ||

   ||
   |-|
   ||
   ||

   ||
   |-|
   ||
   ||

   ||
   |-|
   ||
   ||

## How to create an additional project for an existing solution


## How to add a file

### File types for the three file areas in a project (connections, sql files, other files)

## How to add an existing file


## Directory structure of the solution and related files





## Best practices (how is this different than "we recommend"??)
We recommend the following for your database projects:

- Create one project for your database application code and another project for the tests. However you can create as many (in more complex scenarios) projects as you like for each of the two areas, code and tests.


