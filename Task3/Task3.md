#   Task 3

****
##  Task 3A
### 1.    Explain the difference between an image and a container

### 2.    Give some advantages of using containers

### 3.    How can security of containers be compromised?

### 4.    How is Docker different from Vagrant?


****
##  Task 3B
### 1. Install Docker on your local machine
#####   Docker has been installed in the Virtual Machine

### 2. Pull the rocker/rstudio image to your machine
-   Navigate to the [rocker/rstudio](https://hub.docker.com/r/rocker/rstudio/) page on DockerHub.
-   Use `docker pull`to pull the image

### 3. Create a container for the image
-   You can use the command `docker run`
-   You will need to specify:
    -   Image name `--name`
    -   Ports to open `-p`. Rocker/RStudio image uses port 8787:8787
    -   Environment variables `-e`. You need to spcify the password
    -   Image to build container from
    -   Put together:
        `docker run -p 8787:8787 -e PASSWORD=[type_in_your_password] rocker/rstudio`

### 4. Access the application from your browser.
-   In your browser, navigate to [localhost:8787](localhost:8787). 
-   Log in with the username `rstudio` and type in the password you've set.
-   You can now access the rocker/rstudio image
-   End the session by using `Ctrl+C` in the Terminal
****
##  Task 3C
### 1. Set up a docker-compose file for the image in Task 3B
-   In a Terminal, create a new file called `docker-compose.yml`
    For Windows: `New-Item docker-compose.yml`
    For Mac and Ubuntu VM: `touch docker-compose.yml`
-   Open `docker-compose.yml` in your favourite text editor and insert your script. You will need to specify:
    -   Version number of Docker Compose. Use version 3.3.
    -   Services. We are using rstudio as a service.
    -   Environment variables. You will need to specify a user and set a password
    -   Image to use.
    -   Ports to open.
-   Save `docker-compose.yml`

### 2. Demonstrate that containers can be started up with docker-compose
-   In a Terminal, navigate to the directory containing the docker-compose file.
-   Build the container using the command line `docker-compose up` in the Terminal
-   Access the container through [localhost:8787](localhost:8787)
-   To end the session `Ctrl+C` into the Terminal
-   To stop the container `docker-compose down` in the Terminal

****
### Annex: Installing Docker on your own machine
For Windows:
- Click on this [link](https://docs.docker.com/v17.09/docker-for-windows/install/#download-docker-for-windows). Select on **Get Docker for Windows (Stable)**. This is the Windows installer for Docker Desktop (Windows).
- Navigate to your **Downloads** directory (or whichever directory you've downloaded the installer into). Double-click `Docker Desktop Installer.exe`
- Follow the Install Wizard to accept the license, authorise the installer, and proceed with the install.
- Click **Finish** on the setup complete dialog to launch Docker.
- To start Docker, search for **Docker** in the Start Bar and click on the results. When the whale in the status bar, Docker is ready to be accessed from any terminal window.

For Mac:
-   Click on this [link](https://docs.docker.com/v17.09/docker-for-mac/install/). Select on **Get Docker for Mac (Stable)**. This is the installer for Docker Desktop (Mac)
-   Navigate to the directory you've installed Docker in. Double click on `Docker.dmg` to open the installer. Drag the whale to the Applications folder.
-   Doucle ckick `Docker.app` in Applications to start Docker. 
-   You will be asked to authorise Docker with your system password after launching it. Privileged access is needed to install networking components and links to Docker apps. 
-   The whale in the status bar will indicate that Docker is running and accessible from a terminal.
    


