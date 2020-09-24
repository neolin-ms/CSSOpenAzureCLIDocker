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
> Command: 
> ```bash
> curl -sL https://packages.microsoft.com/keys/microsoft.asc |
>    gpg --dearmor |
>    sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg > /dev/null 
> ```
> Output:<br>
> ![GITHUB](https://github.com/neolin-ms/CSSOpenAzureCLIDocker/blob/master/AzureCLIImages/1_4.png "1_4")<br>
