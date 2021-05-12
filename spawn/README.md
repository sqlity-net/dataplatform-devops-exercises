# Module 4 - Prep
Learning Objective: Prep for Module 4

Helpful Links:
- [Gitpod](https://gitpod.io)
- [GitHub](https://github.com)
- [Spawn](https://spawn.cc)

## Instructions for Module 4 - Prep

The goal of this exercise is to use set up the required repository secrets to enable you to connect to Spawn data-containers.

You will use Gitpod to create a temporary development environment. In that development environment, you will authenticate to Spawn, onboard, and then generate a token. That token must be saved as a repository secret in your GitHub repo.

1. In a new tab or browser window, open this url `https://gitpod.io/#https://github.com/sqlity-net/dataplatform-devops-exercises`
   |gitpod link|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117911689-377d2700-b2ac-11eb-9d07-58bc6c39cdff.png)|
   ||

1. Login by clicking on "Continue with GitHub"
   |gitpod login|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117911925-93e04680-b2ac-11eb-88a7-b7d75c44b9b0.png)|
   ||

1. Click the green "Authorize gitpod-io" button.
   |gitpod login 2|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117911805-65fb0200-b2ac-11eb-8f1f-3d4f20691d5a.png)|
   ||

1. Wait for a couple of minutes while Gitpod processes the request.
   |wait for pod creation|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117911980-aa869d80-b2ac-11eb-9c19-4c973c72da44.png)|
   ||

1. Gitpod will create a new development environment for you. In the bottom right-hand section, open the "TERMINAL" tab.
   |open terminal and increase its size|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912027-bf633100-b2ac-11eb-82b9-cfd4899f3dcf.png)|
   ||

1. To login to Spawn, run the `spawnctl auth` command in the TERMINAL area.
   |spawnctl auth|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912083-d73ab500-b2ac-11eb-846b-aa8ea07da62b.png)|
   ||

1. This will print a link. You must manually click this link to complete the authorization process.
   |spawnctl auth link|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912129-e91c5800-b2ac-11eb-84ab-164ef9ebac2b.png)|
   ||

1. Click on the "Open" button in the confirmation dialog.
   |spawnctl auth link confirm|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912161-f9ccce00-b2ac-11eb-880d-e9e34cda0bae.png)|
   ||

1. Click "Submit" in the new window. Do not change the displayed code.
   |github authentication 1|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912180-07825380-b2ad-11eb-9dda-90c8b846fc92.png)|
   ||

1. This will take you to an authorization page. Click the green "Authorize red-gate" button.
   |github authentication 2|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912783-1e757580-b2ae-11eb-8c66-b11e8648a533.png)|
   ||

1. You should now see a "Login Successful for spawnctl" screen. Please close this tab. It is not needed.
   |github authentication success|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912728-03a30100-b2ae-11eb-85fe-1327f35ba919.png)|
   ||

1. In the Gitpod terminal, you may need to wait for 10-20 seconds until "Authenticated successfully." appears. Now enter the `spawnctl onboard` command to accept license and terms of use agreements.
   |spawnctl onboard|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117912888-5381c800-b2ae-11eb-8a06-3aaaa5a4119a.png)|
   ||

1. Follow the three prompts as shown.
   |y,accept,accept|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913053-a491bc00-b2ae-11eb-968a-f2c7264628d9.png)|
   ||

1. Create the access token by using the command `spawnctl create access-token --purpose "tSQLt Class"`
   |spawnctl create access-token|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913088-b5dac880-b2ae-11eb-9786-0f5779cf72f5.png)|
   ||

1. Highlight and copy the displayed access token.
   |copy token|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913130-c7bc6b80-b2ae-11eb-9d07-d3c8cadd36b2.png)|
   ||

1. Back in your GitHub repository, click on the "Settings" tab.
   |github repository settings|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913212-fb979100-b2ae-11eb-97ae-4746397262fe.png)|
   ||

1. On the left-hand navigation near the bottom, click on "Secrets".
   |github repository secrets|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913261-110cbb00-b2af-11eb-869b-232ab06ce664.png)|
   ||

1. Click the "New repository secret" button on the top-right.
   |new repository secret|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913294-21bd3100-b2af-11eb-92a0-441709ce010d.png)|
   ||

1. Create a new token with the Name, "SPAWNCTL_ACCESS_TOKEN", and paste the access token from Step #15 into the Value field. Click "Add Secret" to confirm.
   |SPAWNCTL_ACCESS_TOKEN|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913318-2a156c00-b2af-11eb-93ba-edee2a9eff6a.png)|
   ||

1. You should now see the "SPAWNCTL_ACCESS_TOKEN" displayed in the Repository secrets list.
   |done|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913375-431e1d00-b2af-11eb-9be1-ddf8ba5ade6e.png)|
   ||

### Delete the Gitpod Development Environment

Now that you have successfully created and saved the access token required for Spawn, you should delete the Gitpod development environment.

1. Navigate to `https://gitpod.io/workspaces` in a new tab or browser window.
   |gitpod workspaces|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913420-53ce9300-b2af-11eb-989f-ab9b72e6e8f5.png)|
   ||

1. Hover over the listed Workspace; click on the three vertical dots; and then select "Delete".
   |delete|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913441-61841880-b2af-11eb-9081-f527c2275de1.png)|
   ||

1. Confirm by clicking the red "Delete Workspace" button.
   |confirm|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913472-6a74ea00-b2af-11eb-8f14-976eb1884ec7.png)|
   ||

1. You might have to refresh the page after 10-30 seconds to confirm that the deletion was successful and that you no longer have any active Workspaces.
   |refresh page|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/117913496-72348e80-b2af-11eb-99b7-b60899a4baec.png)|
   ||

