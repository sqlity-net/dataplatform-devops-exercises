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

   :warning:→ **Follow these instructions if you use Tortoise Git (:turtle:). For other tools consult their manual.** ←:warning:
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
      
7. On your local machine, switch to the "my-new-feature" branch
   1. Find the repository folder, right-click for the context menu, and select Tortoise Git → "Switch/Checkout" 
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113519762-5e816400-955c-11eb-845f-ff02f036b2b9.png)|
      ||
   1. Select the "my-new-feature" branch in the dropdown
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113519800-94bee380-955c-11eb-8d19-0756dfeb75f7.png)|
      ||
   1. Click [OK]
9. Open SSMS and create the tSQLt Query shortcuts.
   1. In SSMS open the "Tools" menu and click on "Options...".
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113520095-cb95f900-955e-11eb-8277-5bb79130a203.png)|
      ||
   1. Go to "Environment" → "Keyboard" → "Query Shortcuts".
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113520136-1152c180-955f-11eb-93e3-5b9aadcee0b5.png)|
      ||
   1. Type in the commands shown below for "Ctrl+9" and Ctrl+0" and click [OK].
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113520144-1b74c000-955f-11eb-9724-6a951ae8973d.png)|
      ||
      
      |||
      |-|-|
      |Ctrl-9 | EXEC tSQLt.RunC;--|
      |Ctrl-0 | EXEC tSQLt.RunAll;--|
1. In SSMS create a External Tools entry for "Build"
   1. In SSMS open the "Tools" menu and click on "External Tools...".
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113520524-a5be2380-9561-11eb-8a7d-ddec52ba8cb6.png)|
      ||
   1. Click "Add" in the External Tools dialogue box.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113520527-abb40480-9561-11eb-9a52-c667c4e12b61.png)|
      ||
   1. The new item will appear as, "[New Tool 1]".
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113520532-b79fc680-9561-11eb-858f-efb8091b684f.png)|
      ||
   1. Update the new item with the following values.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113520540-c4241f00-9561-11eb-9ee2-ea18067758d0.png)|
      ||

      |||
      |-|-|
      |Title|Build|
      |Command|$(ProjectDir)\build.bat|
      |Arguments|"{YOURSERVERNAME\INSTANCENAME}" "-E" **"module1demodb"**|
      |Initial directory|$(ProjectDir)|
      
      :bulb: If you're using SQL Authentication, replace the "-E" in the Arguments field with "-U {USERNAME} -P {PASSWORD}" in a single pair of double-quotes. :bulb:
      
   1. Once those values are updates, first uncheck "Close on exit" and then check "Use Output window". 
      
      :warning: The order in which you do this matters. :warning:
      
   3. Before you click [OK], confirm that no other checkboxes are ticked.

1. Open the Module1-Exercise1 SSMS Database Solution in SSMS
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
1. Run Tools → Build
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
1. In the Object Explorer, connect to your SQL Server Instance and click on the **module1demodb** database to highlight it.
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
1. Create a new query window
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
1. Run "Ctrl-0" → This should result in a failing test.
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
