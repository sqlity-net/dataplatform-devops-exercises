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
   |![image](https://user-images.githubusercontent.com/298017/118062843-db76d900-b365-11eb-901e-47a8156bfc0d.png)|
   ||

1. Login by clicking on "Continue with GitHub"
   |gitpod login|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118062941-12e58580-b366-11eb-80f8-86cdf7ccc100.png)|
   ||

1. Click the green "Authorize gitpod-io" button.
   |gitpod login 2|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118062959-1bd65700-b366-11eb-9df7-a1b31010fd2b.png)|
   ||

1. Wait for a couple of minutes while Gitpod processes the request.
   |wait for pod creation|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118062984-2abd0980-b366-11eb-9d5a-c1e6c6b5fcf1.png)|
   ||

1. Gitpod will create a new development environment for you. In the bottom right-hand section, open the "TERMINAL" tab.
   |open terminal and increase its size|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063002-36103500-b366-11eb-8ba1-66d9b9d41938.png)|
   ||

1. To login to Spawn, run the `spawnctl auth` command in the TERMINAL area.
   |spawnctl auth|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063023-3dcfd980-b366-11eb-93ef-585c61c92eed.png)|
   ||

1. This will print a link. You must manually click this link to complete the authorization process.
   |spawnctl auth link|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063039-46281480-b366-11eb-8caa-00b5b523e34d.png)|
   ||

1. Click on the "Open" button in the confirmation dialog.
   |spawnctl auth link confirm|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063050-4d4f2280-b366-11eb-80b7-56dbae07d6bf.png)|
   ||

1. Click "Submit" in the new window. Do not change the displayed code.
   |github authentication 1|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063116-6b1c8780-b366-11eb-8956-2d4bed1440bd.png)|
   ||

1. This will take you to an authorization page. Click the green "Authorize red-gate" button.
   |github authentication 2|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063087-622bb600-b366-11eb-9712-407cdec7ac5f.png)|
   ||

1. You should now see a "Login Successful for spawnctl" screen. Please close this tab. It is not needed.
   |github authentication success|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063136-77084980-b366-11eb-816a-5501da509935.png)|
   ||

1. In the Gitpod terminal, you may need to wait for 10-20 seconds until "Authenticated successfully." appears. Now enter the `spawnctl onboard` command to accept license and terms of use agreements.
   |spawnctl onboard|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063149-7e2f5780-b366-11eb-81e6-8fd292bab5ad.png)|
   ||

1. Follow the three prompts as shown.
   |y,accept,accept|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063169-88e9ec80-b366-11eb-9dac-f98c59080a8f.png)|
   ||

1. Create the access token by using the command `spawnctl create access-token --purpose "tSQLt Class"`
   |spawnctl create access-token|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063195-9606db80-b366-11eb-81cf-a345961bd628.png)|
   ||

1. Highlight and copy the displayed access token.
   |copy token|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063210-9e5f1680-b366-11eb-9ce9-60c8f2601092.png)|
   ||

1. Back in your GitHub repository, click on the "Settings" tab.
   |github repository settings|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063242-aae36f00-b366-11eb-8b95-55796451b619.png)|
   ||

1. On the left-hand navigation near the bottom, click on "Secrets".
   |github repository secrets|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063248-b171e680-b366-11eb-9ff2-3e527004bf25.png)|
   ||

1. Click the "New repository secret" button on the top-right.
   |new repository secret|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063255-b767c780-b366-11eb-8d1b-d57185451ea2.png)|
   ||

1. Create a new token with the Name, "SPAWNCTL_ACCESS_TOKEN", and paste the access token from Step #15 into the Value field. Click "Add Secret" to confirm.
   |SPAWNCTL_ACCESS_TOKEN|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063275-c2baf300-b366-11eb-876b-f841e0019b42.png)|
   ||

1. You should now see the "SPAWNCTL_ACCESS_TOKEN" displayed in the Repository secrets list.
   |done|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063293-ca7a9780-b366-11eb-9a2f-b0a8f4e0ca26.png)|
   ||

### Delete the Gitpod Development Environment

Now that you have successfully created and saved the access token required for Spawn, you should delete the Gitpod development environment.

1. Navigate to `https://gitpod.io/workspaces` in a new tab or browser window.
   |gitpod workspaces|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063310-d7978680-b366-11eb-8fc8-012f703b0e46.png)|
   ||

1. Hover over the listed Workspace; click on the three vertical dots; and then select "Delete".
   |delete|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063325-de25fe00-b366-11eb-85b7-b8166476fdbe.png)|
   ||

1. Confirm by clicking the red "Delete Workspace" button.
   |confirm|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063335-e716cf80-b366-11eb-85e4-cb959d290bec.png)|
   ||

1. You might have to refresh the page after 10-30 seconds to confirm that the deletion was successful and that you no longer have any active Workspaces.
   |refresh page|
   |-|
   |![image](https://user-images.githubusercontent.com/298017/118063358-f138ce00-b366-11eb-98c5-86e4f9259da7.png)|
   ||

