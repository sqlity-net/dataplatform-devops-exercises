# SSMS Solutions and Projects Explained!

Just like Visual Studio, SSMS has solutions and projects. Solutions and projects organize the files that are important to your database application.

The biggest difference between working directly with database objects and working with SSMS solutions is that solutions are based on files in your filesystem, not on objects in your database.

Projects provide a way to organize the files in a solution into groups, and are basically subfolders on your filesystem. The solution is at the top of the hierarchy. All projects must be part of a solution, and every file must be part of a project. Solutions can have, and often do have, more than one project. You may create as many projects as needed.

## How to create a solution
1. Select New → Project... from the File Menu
   |New Project (and also Solution)|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097644-701e2080-9ef9-11eb-9d8b-4cb54045153a.png)|
   ||
1. Follow these steps in the correct order
   1. Tick the checkbox, "Create directory for solution"
   1. Enter the "Solution name:"
   1. Enter the "Project name:"
   1. Click "OK"
   
   |Names and Locations|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097676-a6f43680-9ef9-11eb-8e8b-86cc877b4aff.png)|
   ||
1. Note: If you don't see the Solution Explorer, open it by selecting Solution Explorer from the View Menu
   |Solution and Project Created|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097732-f20e4980-9ef9-11eb-94da-4275176b48bc.png)|
   ||

## How to add a new file
1. Right-click on the project name in the Solution Explorer and select Add → New Item... from the context menu
   |Add - New Item|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097750-0a7e6400-9efa-11eb-9fa9-3e329c7fe86a.png)|
   ||
1. Select "SQL Server Query" in the "Add New Item" dialog box
   |SQL Server Query|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097770-2255e800-9efa-11eb-9310-011d3a220a26.png)|
   ||
1. Enter the "Name:" and click "Add"
   |Item Name|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097791-3863a880-9efa-11eb-9588-a1dd1a6f613b.png)|
   ||
   
   Note: You can use this same technique to add non-SQL files. Just use the appropriate extension in the file name.
1. New SQL files will always be listed under the "Queries" branch in the project tree view. Non-SQL files can be found under "Miscellaneous"
   |MyQuery.sql|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097802-44e80100-9efa-11eb-9907-e79b049c0cad.png)|
   ||

## How to create an additional project for an existing solution
1. Right-click on the solution name, and select Add → New Project... from the context menu
   |Add - New Project|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097831-71038200-9efa-11eb-9277-054edb059deb.png)|
   ||
1. Enter the "Name:" for the project and click "OK"
   |New Project Name|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097860-9bedd600-9efa-11eb-9ed3-0e950574340e.png)|
   ||
1. The project will be listed in alphabetical order in the solution
   |New Project Created|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097877-b627b400-9efa-11eb-9b12-9cd6b346cff0.png)|
   ||

## How to add an existing file
1. Right-click on the project name, and select Add → Existing Item... from the context menu
   |Add - Existing Item|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097888-c2ac0c80-9efa-11eb-9ba5-21b0c6f5f67b.png)|
   ||
1. In the "Add Existing Item" dialog, select the file you want to add to the project and click "Add"
   |Selecting a File - Anywhere|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097915-f7b85f00-9efa-11eb-93ad-8adec116dd26.png)|
   ||
1. Note: If the file you selected is not in the project directory, SSMS will create a copy for you in the project directory.
   |Copied and Added File|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115097946-2cc4b180-9efb-11eb-9782-50166ad27b4c.png)|
   ||

## Directory structure of the SSMS solution and related files

SSMS creates a directory for each project in the solution and adds a .ssmssqlproj file in it. There is also a .ssmssln file that contains the main information for that solution. Other files in those directories might be part of a project in the solution. However, files are not automatically added, so you might see files that are not part of the solution at all (for example ~\Documents\repos\SolutionName\PreexistingSQLFile.sql in the image below).
1. |SSMS Solution Folder Structure|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/115125803-92b34680-9f98-11eb-80b5-96fa54b2f585.png)|
   ||

## Best practices
We recommend the following for your database projects:

- Create one project for your database application code and another project for the tests. However in more complex scenarios you can create as many projects as you like for each of the two areas, code and tests.

- Delete your connection information before checking in if you are working in a team. This is not a security issue, but makes working on different SQL Server instances easier.
