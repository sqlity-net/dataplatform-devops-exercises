# Exercise Repository for Database DevOps Training

This is the repository for all class related exercises.

## Forking this repository

To get started, create a copy of this repository by forking it to your own GitHub account. To do that, follow these steps:

1. [Sign in](https://github.com/login) to your own GitHub account.
1. Open the [original repository](https://github.com/sqlity-net/dataplatform-devops-demos) in your browser.
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113209077-975dc800-9240-11eb-846d-536d39f50df5.png) |
   | |
   
1. Click the Fork button top right:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113209290-dc81fa00-9240-11eb-8aba-cca053951e99.png) |
   | |
   
   
1. After a few second, the repository will show up in your account:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113209713-6336d700-9241-11eb-8fa2-48be59b5a82a.png) |
   | |
   
   As you can see, the original source of your fork is indicated. You can also find information about how your fork compares to the original a little further down the page:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113209992-bb6dd900-9241-11eb-901b-0d2d8c122a09.png) |
   | |

## Pulling changes from the upstream repository

If the original repository that you forked (the "upstream" repository) changes, you will be able to merge those changes into your own repository:

1. Open your fork in GitHub.


1. Confirm that there are changes to pull by clicking the compare link:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113216446-5ff41900-924a-11eb-8b70-3c0d2b2f6b4b.png) |
   | |


1. **CAREFUL!** This will lead you to the upstream repository. To get back to your own repository, we need to change the merge direction:

   1. Select your repository in the top dropdown:
      | |
      | - |
      | ![image](https://user-images.githubusercontent.com/298017/113227264-3d6cfa80-9260-11eb-9b48-d31c51829fda.png) |
      | |

   1. This will remove both repository dropdowns. Click the "compare across forks" link to get them back:
      | |
      | - |
      | ![image](https://user-images.githubusercontent.com/298017/113227342-7d33e200-9260-11eb-9f0e-08ce9ff6bd46.png) |
      | |
   
   1. Finally, select the upstream repository in the bottom dropdown:
      | |
      | - |
      | ![image](https://user-images.githubusercontent.com/298017/113227493-d26ff380-9260-11eb-8d87-b35d5ad42c73.png) |
      | |


1. You are in the right place if the small merge direction arrow points from the upstream repository to your own:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113211990-2fa97c00-9244-11eb-86c9-e00ee8792e89.png) |
   | |
   
   You can inspect the actual changes by scrolling down on this page.


1. Transfering changes from one repository to another related one always requires the use of a pull request. Usually a pull request is made to ask the maintainer of the upstream repository to incorporate changes that were made in a fork. But in this case, we are moving changes in the other direction. Yet, we are still going to use a pull request. Do that by clicking on the "Create pull request" button:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113212441-c2e2b180-9244-11eb-9d5c-b75a00d4c55e.png) |
   | |


1. Now you can review the changes and write a comment. Finally you need to click the "Create pull request" button one more time:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113213063-a004cd00-9245-11eb-9fe9-638219c06aab.png) |
   | |


1. Now you have a new pull request in your repository, but the changes have not yet been incorporated. For that you need to merge the pull request.


## Merging a pull request

To incorporate the changes of a pull request in your repository, you first need to review it. Do everything that you need to feel comfortable with the changes and then merge them in by approving the pull request. The process is the same, no matter in which direction the pull request is going.

1. First open the pull request by clicking on the "pull requests" menu item and then on the pull request itself:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113213615-6da79f80-9246-11eb-9ec4-e26767792ba3.png) |
   | |


1. Now you can see the pull request comments and check the commits and file changes that are included within:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113215274-9b8de380-9248-11eb-9b01-841fbdb7a016.png) |
   | |


1. When you are ready to incorporate the changes into your own repository, find the merge button but don't click it. Instead click on the small arrow next to it:
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113214175-12c27800-9247-11eb-8e73-033dd612c2ec.png) |
   | |


1. This allows you to pick the merge method. Depending on the number of changes applied to either repository you'll make your choice here. Usually you'll want to "squash and merge", but which one is the right way to go is dependent on the situation and beyond what we can cover here. For the purpose of this class, you can use the default "merge commit":
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113214610-b9a71400-9247-11eb-81e5-061a5805a0f7.png) |
   | |


1. Selecting the merge choice above does not yet execute the merge. Instead, you still have to click the button.
1. Afterward, provide a comment and "confirm merge":
   | |
   | - |
   | ![image](https://user-images.githubusercontent.com/298017/113214953-30441180-9248-11eb-9a53-d477dacc6b9f.png) |
   | |


1. Now the changes of the upstream repository have been incorporated in your own fork. If you have a clone of the repository on your own machine, don't forget to "pull" those new changes.

## Setting the SQLCMD_HOME Windows environment variable

:warning: In order to successfully run the exercises in this repository, you must have sqlcmd installed locally.

Follow the steps below to set up the SQLCMD_HOME Windows environment variable.

1. Open up a command prompt in Windows by typing `cmd` in the Start Menu
1. Change directory to C:
   ```
   cd c:\
   ```
1. Use the following command to find an installation of the sqlcmd.exe utility
   ```
   dir /s sqlcmd.exe
   ```
1. Once you have identified the location of sqlcmd.exe, create a new environment variable called, "SQLCMD_HOME". If you get multiple results back, use the one that has the highest version number.
   ```
   SETX SQLCMD_HOME "<YOURPATHGOESHERE>"
   ```
   ||
   |-|
   |![image](https://user-images.githubusercontent.com/298017/113801635-3c880d00-9727-11eb-8e15-17294a6d7a9e.png)|
   ||
1. :warning: You must now restart SQL Server Management Studio (SSMS)
 
