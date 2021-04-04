# Module 1 - Exercise 1
The goal of this exercise is to familiarize yourself with SSMS database projects, install tSQLt, and set up your SSMS shortcuts to more easily build and test your code.

## Summary of Steps

1. Fork the [class GitHub repository](https://github.com/sqlity-net/dataplatform-devops-demos) to your own GitHub Account
2. Make a new feature branch called, "my-new-feature"
3. Clone the remote repository to your local machine
4. On your local machine, switch to my-new-feature
5. Open SSMS and create the tSQLt Query shortcuts
   1. Ctrl-9 → EXEC tSQLt.RunC;--
   5. Ctrl-0 → EXEC tSQLt.RunAll;--
7. In SSMS create a External Tools entry for "Build"
   1. Title → Build
   9. Command → $(ProjectDir)\build.bat
   10. Arguments → "<YOURSERVERNAME\INSTANCENAME>" "-E" **"module1demodb"**
   11. Initial directory → $(ProjectDir)
   13. Uncheck "Close on exit"
   12. Check "Use Output window"
13. Open the Module1-Exercise1 SSMS Database Solution in SSMS
14. Run Tools → Build
15. In the Object Explorer, connect to your SQL Server Instance and click on the **module1demodb** database to highlight it.
16. Create a new query window
17. Run "Ctrl-0" → This should result in a failing test.

## Detailed Instructions

1. Fork the [class GitHub repository](https://github.com/sqlity-net/dataplatform-devops-demos) to your own GitHub Account.

   → See [clone repository](../../../) for detailed instructions.
   
3. Make a new feature branch called, "my-new-feature".
   1. Select the branch dropdown (it says, "main") and enter "my-new-feature" as the name of the new branch.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113496568-e1f17580-94c8-11eb-9a56-87963d9920fb.png)|
      ||
   1. Click on the text "Create branch: my-new-feature" to create the branch. (Hitting return doesn't work.)
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113496576-f3d31880-94c8-11eb-95bb-dab2ac2767aa.png)|
      ||
      
5. Clone the remote repository to your local machine.

   **--> Follow these instructions if you use Tortoise Git. For other tools consult their manual. <--**
   1. Copy the repository URL. (If you use SSH authentication, you need to copy the SSH URL instead.)
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113496696-3ea16000-94ca-11eb-875c-d92611999733.png)|
      ||
   1. Locate or create the folder where you plan to organize your repositories from GitHub, e.g. LocalData\repos. Right click on the folder name in File Explorer and select from the context menu "Git Clone...".
   2. In the dialog, paste the URL you copied from GitHub and click [OK].
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113496743-9770f880-94ca-11eb-9ef9-b608f12f3ebd.png)|
      ||
      
7. On your local machine, switch to my-new-feature
8. Open SSMS and create the tSQLt Query shortcuts
   1. Ctrl-9 → EXEC tSQLt.RunC;--
   5. Ctrl-0 → EXEC tSQLt.RunAll;--
9. In SSMS create a External Tools entry for "Build"
   1. Title → Build
   9. Command → $(ProjectDir)\build.bat
   10. Arguments → "<YOURSERVERNAME\INSTANCENAME>" "-E" **"module1demodb"**
   11. Initial directory → $(ProjectDir)
   13. Uncheck "Close on exit"
   12. Check "Use Output window"
13. Open the Module1-Exercise1 SSMS Database Solution in SSMS
14. Run Tools → Build
15. In the Object Explorer, connect to your SQL Server Instance and click on the **module1demodb** database to highlight it.
16. Create a new query window
17. Run "Ctrl-0" → This should result in a failing test.
