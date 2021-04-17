# SSMS Solutions and Projects Explained!

Just like Visual Studio, SSMS has solutions and projects. They organize the files that are important to your database application.

The biggest difference between working directly with database objects and working with SSMS solutions is that solutions are based on files in your filesystem, not on objects in your database.

Projects provide a way to organize the files in a solution into groups, and are basically subfolders on your filesystem. The solution is at the top of the hierarchy. All projects must be part of a solution, and every file must be part of a project. Solutions can have, and often do have, more than one project. You may create as many projects as needed.

## How to create a solution
1. To create a solution
1. Create directory for solution, this will also automatically create the first project.

## How to create an additional project for an existing solution


## How to add a file

### File types for the three file areas in a project (connections, sql files, other files)

## How to add an existing file


## Directory structure of the solution and related files





## Best practices (how is this different than "we recommend"??)
We recommend the following for your database projects:

- Create one project for your database application code and another project for the tests. However you can create as many (in more complex scenarios) projects as you like for each of the two areas, code and tests.


