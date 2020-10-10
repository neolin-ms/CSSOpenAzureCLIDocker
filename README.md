# CSSOpen - Session 2 - Lab 1&2 - AzureCLIDocker

- What is Azure CLI? Please refer to [here](https://docs.microsoft.com/en-us/cli/azure/what-is-azure-cli?view=azure-cli-latest).

## Lab 1: Install Azure CLI on Linux and run a shall script

**Manual install instructions**

1. Using SSH to login Ubuntu Linux.
> Command:<br>
> ```bash
> neolin@tw-hslin-207a:~/CSSOpenWSL2$ ssh [username]@104.214.xxx.xxx
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_1.png "1_1")<br>
2. Get packages needed for the installation.
> Command1:<br> 
> ```bash
> azureuser@myVM:~$ sudo apt-get update
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_2.png "1_2")<br>
> Command2:<br>
> ```bash
> azureuser@myVM:~$ sudo apt-get install ca-certificates curl apt-transport-https lsb-release gnupg
> ...
> Do you want to continue? [Y/n] Y
> ...
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_3.png "1_3")<br>
3. Download and install the Microsoft signing key.
> Command:<br> 
> ```bash
> azureuser@myVM:~$ curl -sL https://packages.microsoft.com/keys/microsoft.asc |
>    gpg --dearmor |
>    sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null 
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_4.png "1_4")<br>
4. Add the Azure CLI software repository.
> Command:<br>
> ```bash
> azureuser@myVM:~$ AZ_REPO=$(lsb_release -cs)
> azureuser@myVM:~$ echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" |
>    sudo tee /etc/apt/sources.list.d/azure-cli.list
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_5.png "1_5")<br>
5. Update repository information and install the azure-cli package. 
> Command1:<br>
> ```bash
> azureuser@myVM:~$ sudo apt-get update
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_6.png "1_6")<br>
> Command2:<br>
> ```bash
> azureuser@myVM:~$ sudo apt-get install azure-cli
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_7.png "1_7")<br>
6. If you successful to install the Azure CLI, you can run command to check version.  
> Command:<br>
> ```bash 
> azureuser@myVM:~$ az --version
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_8.png "1_8")<br>
7. To sign in the Azure, use the az login command.
> 7.1 Command:<br>
> ```bash
> azureuser@myVM:~$ az login
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_9.png "1_9")<br>
> 7.2 Open the web browser, and enter the link [https://microsoft.com/devicelogin](https://microsoft.com/devicelogin). Then enter the code **HWxxxxx** and click **Next**.<br> 
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_10.png "1_10")<br>
> 7.3 Enter your email and click **Next**. 
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_11.png "1_11")<br>
> 7.4 You have signed into the Microsoft Azure. Now close this windows. 
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_12.png "1_12")<br>
> 7.5 You see the your subscription infomation. 
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_13.png "1_13")<br>
8. Excute a shell script to create a Linux VM. Here is a exapmle, [Shell Script](https://github.com/neolin-ms/AzureCLI/blob/master/2Create_a_Linux_VM.sh).
> Command:<br>
> ```bash
> neolin@tw-hslin-207a:~$ bash 2Create_a_Linux_VM.sh 
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_14.png "1_14")<br>
9. Using SSH to login the Linux VM.
> Command:<br>
> ```bash
> neolin@tw-hslin-207a:~$ ssh azureuser@<PUBLIC_IP_ADDRESS> 
> ``` 
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_15.png "1_15")<br>

## Lab 2: Install Docker Engine on Debian Linux and run a image

** Install Docker Desktop

1. Download [Docker Desktop](https://docs.docker.com/docker-for-windows/wsl/#download). Once installed, you need to restart the PC or laptop. Then click **Close and log out**.  
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_1.png "2_1")<br>
2. After reboot the PC or laptop, the Docker will be staring. On the window **Get started with Docker in a few easy steps!**, please click **Skip tutorial**. 
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_2.png "2_2")<br>
3. Check the Docker status. Select the Docker icon from the hidden icons menu of your taskbar.
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_3.png "2_3")<br>
4. Right-click the icon to display the Docker commands menu and select "**Settings**".
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_4.png "2_4")<br>
5. Ensure that "Use the WSL 2 based engine" is checked in **Settings** > **General**.
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_5.png "2_5")<br>
6. Select from your installed WSL 2 distributions which you want to enable Docker integration on by going to: **Settings** > **Resources** > **WSL Integration**. Select the **Debian**, and click **Apply & Restart**.
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_6.png "2_6")<br>
7. To confirm that Docker has been installed, open a WSL distribution (e.g. Debian) and display the version and build number by entering. 
```bash
neolin@tw-hslin-207a:~$ docker --version
Docker version 19.03.13, build 4484c46d9d
```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_7.png "2_7")<br>
8. Test that your installation works correctly by running a simple built-in Docker image using command. 
```bash
neolin@tw-hslin-207a:~$ docker run hello-world
```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_8.png "2_8")<br>
9. Try to run a new container, e.g. Ubnutu. 
```bash
neolin@tw-hslin-207a:~$ docker run -it ubuntu bash
```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_9.png "2_9")<br>
10. Check the ubuntu version.
> Command:<br>
>```bash
>root@d1cf5b9429fd:/# cat /etc/*release
>```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_10.png "2_10")<br>
11. Useful commands for Docker.
> Command1:<br>
> ```bash
> neolin@tw-hslin207-a:~$ docker image ls --all
> ````
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_11.png "2_11")<br>
> Command2:<br>
> ```bash
> neolin@tw-hslin207-a:~$ docker ps -a
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureDockerImages/2_12.png "2_12")<br>

## References

1. [Docker Desktop WSL 2 backend](https://docs.docker.com/docker-for-windows/wsl/) 
2. [Get started with Docker remote containers on WSL 2](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers) 
