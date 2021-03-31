# Demo and Exercise Repository for Database DevOps

This is the repository for all class related demos and exercises.

## Forking this repository

To get started, create a copy of this repository by forking it to your own GitHub account. To do that, follow these steps:

1) [Sign in](https://github.com/login) to your own GitHub account.
2) Open the [original repository](https://github.com/sqlity-net/dataplatform-devops-demos) in your browser.
   ![image](https://user-images.githubusercontent.com/298017/113209077-975dc800-9240-11eb-846d-536d39f50df5.png)
   
   
3) Click the Fork button top right:
   ![image](https://user-images.githubusercontent.com/298017/113209290-dc81fa00-9240-11eb-8aba-cca053951e99.png)
   
   
4) After a few second, the repository will show up in your account:
   ![image](https://user-images.githubusercontent.com/298017/113209713-6336d700-9241-11eb-8fa2-48be59b5a82a.png)
   
   As you can see, the original source of your fork is indicated. You can also find information about how your fork compares to the original a little further down the page:
   ![image](https://user-images.githubusercontent.com/298017/113209992-bb6dd900-9241-11eb-901b-0d2d8c122a09.png)

## Pulling changes from the upstream repository

If the original repository that you forked (the "upstream" repository) changes, you will be able to merge those changes into your own:

1) Open your fork in GitHub.


2) Confirm that there are changes to pull by clicking the compare link:
   ![image](https://user-images.githubusercontent.com/298017/113216446-5ff41900-924a-11eb-8b70-3c0d2b2f6b4b.png)


3) **CAREFULL!** This will lead you to the upstream repository. To get back to your own repository, click the "switching the base" link:
   ![image](https://user-images.githubusercontent.com/298017/113211499-882c4980-9243-11eb-8a4b-70a188441122.png)


4)  You are in the right place if the small merge direction arrow points from the upstream repository to your own:
    ![image](https://user-images.githubusercontent.com/298017/113211990-2fa97c00-9244-11eb-86c9-e00ee8792e89.png)
    You can inspect the actual changes by scrolling down on this page.


5) Transfering changes from one repository to another (related) one always requires the use od a pull request. Usually, a pull request is made to ask the maintainer of the upstream repository to incorporate changes that were made in a fork. But in this case, we are moving changes in the other direction. Yet, we are still going to use a pull request. Do that by clicking on the "Create pull request" button:
    ![image](https://user-images.githubusercontent.com/298017/113212441-c2e2b180-9244-11eb-9d5c-b75a00d4c55e.png)


6) Now you can review the changes and write a comment. Finally you need to click the "Create pull request" button one more time:
   ![image](https://user-images.githubusercontent.com/298017/113213063-a004cd00-9245-11eb-9fe9-638219c06aab.png)


7) Now you have a new pull request in your repository, but the changes have not yet been incorporated. For that you need to merge the pull request.


## Merging a pull request

To incorporate the changes of a pull request in your repository, you first need to review it. Do everything that you need to feel comfortable with the changes and then merge them in by approving the pull request. The process is the same, no matter in which direction the pull request is going.

1) First open the pull request by clicking on the "pull requests" menue item and then on the pull request in question itself:
   ![image](https://user-images.githubusercontent.com/298017/113213615-6da79f80-9246-11eb-9ec4-e26767792ba3.png)


2) Now you can see the pull request comments and check the commits and file changes that are included within:
   ![image](https://user-images.githubusercontent.com/298017/113215274-9b8de380-9248-11eb-9b01-841fbdb7a016.png)


3) When you are ready to incorporate the changes into your own repository, find the merge button but don't click it. Instead click on the small arrow next to it:
   ![image](https://user-images.githubusercontent.com/298017/113214175-12c27800-9247-11eb-8e73-033dd612c2ec.png)


4) This allows you to pick the merge method. Depending on the amount of changes applied to either repository you'll make youre choice here. Usually, you'll want to "squash and merge", but which one is the right way to go is dependent on the situation and beyond what we can cover here. For the purpose of this class, you can use the default "merge commit":
   ![image](https://user-images.githubusercontent.com/298017/113214610-b9a71400-9247-11eb-81e5-061a5805a0f7.png)


5) Selecting the merge choice above does not yet execute the merge. Instead, you still have to click the button.
6) Afterward, provide a comment and "confirm merge":
   ![image](https://user-images.githubusercontent.com/298017/113214953-30441180-9248-11eb-9a53-d477dacc6b9f.png)


7) Now the changes of the upstream repository have been incorporated in your own fork. If you have a clone of the repository on your own machine, don't forget to "pull" those new changes.

