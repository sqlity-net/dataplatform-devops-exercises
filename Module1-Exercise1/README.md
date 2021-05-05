# Module 1 - Exercise 1
The goal of this exercise is to familiarize yourself with SSMS database projects, install tSQLt, and set up your SSMS shortcuts to more easily build and test your code.

## Instructions

1. Fork the [class GitHub repository](https://github.com/sqlity-net/dataplatform-devops-demos) to your own GitHub Account.

   → See [fork repository](../../../) for detailed instructions.
   
1. Make a new feature branch called, "my-new-feature".
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
      
1. Clone the remote repository to your local machine.

   :warning: **Follow these instructions if you use Tortoise Git (:turtle:). For other tools consult their manual.**
   1. Copy the repository URL. (If you use SSH authentication, you need to copy the SSH URL instead.)
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521157-9e991480-9565-11eb-9f68-732a628183cb.png)|
      ||
   1. Locate or create the folder where you plan to organize your repositories from GitHub, e.g. LocalData\repos. Right click on the folder name in File Explorer and select from the context menu "Git Clone...".
   1. In the dialog, paste the URL you copied from GitHub and click [OK].
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521237-2a12a580-9566-11eb-9e8f-be9226ff373c.png)|
      ||
      
1. On your local machine, switch to the "my-new-feature" branch
   1. Find the repository folder, right-click for the context menu, and select Tortoise Git → "Switch/Checkout" 
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113519762-5e816400-955c-11eb-845f-ff02f036b2b9.png)|
      ||
   1. Select the "my-new-feature" branch in the dropdown
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521214-03ed0580-9566-11eb-84f9-61454bb446b6.png)|
      ||
   1. Click [OK]
1. Open SSMS and create the tSQLt Query shortcuts.
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
1. In SSMS create an External Tools entry for "Build"
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
      
      :warning: **The last (bolded) argument is the database name. Any database with that name will be dropped and recreated, so pick the name carefully!**
      
      :bulb: If you're using SQL Authentication, replace the "-E" in the Arguments field with "-U {USERNAME} -P {PASSWORD}" in a single pair of double-quotes.
      
   1. Once those values are updated, first uncheck the "Close on exit" checkbox and then check the "Use Output window" checkbox. 
      
      :warning: The order in which you do this matters.
      
   1. Before you click [OK], confirm that no other checkboxes are ticked.

1. Open the Module1-Exercise1 SSMS Database Solution in SSMS
   1. First open SQL Server Management Studio (SSMS)
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521046-000cb380-9565-11eb-8c02-ab7c6110c1ca.png)|
      ||
   1. In the File Menu, select "Open" → "Project/Solution..." or press "Ctrl+Shift+O"
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521053-0864ee80-9565-11eb-8c72-028ec4830575.png)|
      ||
   1. Navigate to and open the "Module1-Exercise1" folder.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521084-3f3b0480-9565-11eb-883a-e680b2fa0ed7.png)|
      ||
   1. Select the file "Module1-Exercise1.ssmssln" and click [Open]
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521090-5a0d7900-9565-11eb-8cf1-2ab7a47ec29a.png)|
      ||
1. Run Tools → Build
   1. Find and open the "Solution Explorer" ("Ctrl+Alt+L") and click on the "M1-Exercise1-Tests" project.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521405-45ca7b80-9567-11eb-9f02-d1d72f8ba0dc.png)|
      ||
   1. Go to the "Tools" menu and click on the "Build" menu item you created earlier.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113527639-2b56c900-958c-11eb-8586-94cf8a334d04.png)|
      ||
   1. If you see the message "Thank you for using tSQLt" you can contine with "Run the tests" step. You might have to scroll up a little to see the message.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521466-9c37ba00-9567-11eb-8589-98584fde83f1.png)|
      ||
      
      :warning: If you instead see several error messages as shown here, you need to prep the server.
      
      :warning: Please continue to the next step ("Prepare your SQL Server instance for tSQLt") for instructions.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113527947-23e3ef80-958d-11eb-8952-16772de07850.png)|
      ||
1. Prepare your SQL Server instance for tSQLt.

   :warning: This step is required only if the prior step failed. You need to run it once per SQL Server instance.
   
   To prepare the server, the PrepareServer.sql script has to be executed. It is included in the tSQLt download. This is easily done with a small change to the build.sql file in the tSQLt project.
   1. In Solution Explorer ("Ctrl+Alt+L"), navigate to the "build.sql" file under "Queries" in the "tSQLt" project and double-click to open it.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113528687-4ecf4300-958f-11eb-834b-cc8dd72b4517.png)|
      ||
   1. Add two dashes ("--") at the beginning of the first line **and save** the file. This will cause the next two lines to be executed next time the build runs.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113529093-88ed1480-9590-11eb-9f0f-a807e15b7474.png)|
      ||
   1. In "Solution Explorer" ("Ctrl+Alt+L"), click on the "M1-Exercise1-Tests" project.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521405-45ca7b80-9567-11eb-9f02-d1d72f8ba0dc.png)|
      ||
   1. Go to the "Tools" menu and click on the "Build" menu item you created earlier.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113527639-2b56c900-958c-11eb-8586-94cf8a334d04.png)|
      ||
   1. You will see the "Thank you for using tSQLt" message. (Though, you might have to scroll up.)
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521466-9c37ba00-9567-11eb-8589-98584fde83f1.png)|
      ||
   1. :warning: To prevent this script from unnecessary execution, remove the two dashes ("--") you added to the build.sql file **and save** it.
   
1. Run the tests.
   1. In the Object Explorer, connect to your SQL Server Instance and click on the **module1demodb** database to highlight it.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521505-dc973800-9567-11eb-84ab-61e6a7fa93a2.png)|
      ||
   1. Create a new query window by clicking on the [New Query] button or by pressing "Ctrl+N".
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113521524-f6d11600-9567-11eb-9760-4cacc1db7893.png)|
      ||
   1. Place the cursor in the query window
   1. Press "Ctrl-0" to run all tests in the database.
   1. You should get the following failure message:
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/113529786-6825be80-9592-11eb-9027-360e7f2c1157.png)|
      ||
1. :sparkles: You did it! :sparkles:

   You have successfully set up an SSMS database project, installed tSQLt, set up your SSMS shortcuts, and **executed a test**. 
