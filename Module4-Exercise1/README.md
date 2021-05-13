# Module 4 - Exercise 1
Learning Objective: CI Pipeline Feedback Loops

Helpful Links:
- [tSQLt.FakeTable](https://tsqlt.org/user-guide/isolating-dependencies/faketable/)
- [Introduction to GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/introduction-to-github-actions)

## Instructions for Exercise 4

The goal of this exercise is to use GitHub Actions to stand up a simple CI Pipeline and debug your code.

Your colleague has gone on vacation (suddenly) and left you with their code. A couple of problems have been reported by end-users. It is your job to find those problems and fix them.

Set up the GitHub Actions workflow as a simple CI Pipeline; identify the unsuccessful tests; and make the required changes to get a "green" build:

1. Make sure that your forked repository is up to date. There should be both a ".github/workflows" and a "Module4-Exercise1" folder. Now find the "Actions" tab header and click on it.
   |actions|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/116835595-2c7e1480-ab91-11eb-9f6e-3cd0ec3a6536.png)|
   ||

1. Click on the "I understand my workflows, go ahead and enable them" button to enable worfklows for your repository.
   |enable actions| 
   |-|
   |![image](https://user-images.githubusercontent.com/298017/116835634-57686880-ab91-11eb-9f14-951d5b9dab15.png)|
   ||

1. If you haven't yet, create a repository secret to allow you to use on-demand SQL Instances in Redgate Spawn. See https://github.com/sqlity-net/dataplatform-devops-exercises/tree/main/spawn for detailed instructions.
   
1. Run the GitHub Actions workflow.
   1. Find the "Module 4 Exercise 1 CI Pipeline" in the list of Workflows and click on it.
      |CI Pipeline|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835826-263c6800-ab92-11eb-858a-ef2355429fb5.png)|
      ||
   1. Click on "Run workflow".
      |run workflow|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835842-381e0b00-ab92-11eb-9ade-92b05c3af8a2.png)|
      ||
   1. Confirm that the branch is "main" and click the green "Run workflow" button.
      |run workflow for real|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835867-4ff58f00-ab92-11eb-82dd-d4cd736a9436.png)|
      ||
1. Find and inspect the workflow logs.
   1. Click on the workflow run link.
      |now running, get summary|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116836648-55a0a400-ab95-11eb-9cfe-113a77d8a585.png)|
      ||
   1. Note that the job "build-and-test" is both in the left navigation and summary. Click on either.
      |get details|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835950-be3a5180-ab92-11eb-8e57-0c70e8fcb287.png)|
      ||
   1. The job log is displayed with a list of steps.
      |details|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116835969-d4481200-ab92-11eb-8b07-ad43f6494bb8.png)|
      ||
   1. After the job finishes, return to the Summary page for the workflow run by clicking on the "Summary" link in the left-navigation.
      |return to summary|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116836010-f9d51b80-ab92-11eb-8438-de100ee5c225.png)|
      ||
1. Identify unsuccessful tests.
   1. Note that the Annotations section of the Summary will show the tSQLt summary information, including the count of unsuccessful tests. If there are failing tests (and really there should be) click back into the job.
      |tests are failing|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116836210-a44d3e80-ab93-11eb-9bca-ace792df6617.png)|
      ||
   1. Expand the logs for the step which deploys the codes and executes the test. It is called, "Deploy Code to SQL Server Instance on Spawn and Run Tests".
      |get build output|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116836233-ba5aff00-ab93-11eb-859d-7a3a6aaff09e.png)|
      ||
1. For each unsuccessful test:
   1. Scroll to the bottom of the logs to see which tests are unsuccessful.
      |a failing test|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116836829-0b6bf280-ab96-11eb-874a-040b952a595b.png)|
      ||
   1. Copy the test name without the brackets and schema name, and paste it into the search box at the top right. This should move the cursor to the test's output. If it doesn't, you can navigate to the next search result with the arrows to the right of the search box.
      |find the test output|
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116836606-25590580-ab95-11eb-8103-c1683d86522c.png)|
      ||
   1. Based on the output you see, make the necessary changes to tests and/or code to fix the problem.
1. Confirm that you have fixed all the issues by checking in your code and tests and re-running the pipeline. 
   1. You are done once you get a 🟢 Success 🟢 build.
      ||
      |-|
      |![image](https://user-images.githubusercontent.com/298017/116953604-b09cce80-ac5b-11eb-8cdf-ec553bde881a.png)|
      ||
