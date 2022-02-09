# Availability Tracking Bot
## Purpose
This bot was created during the Great GPU Shortage that began in 2020 for the purpose of notifying the user when a specific graphics card was available on Best Buy. The specific card being searched for was the Nvidia 3060 Ti Founder's Edition - a lucrative catch given that Best Buy was actually selling it at its MSRP of $399. I was able to purchase a graphics card (albeit a different card from a different source), but I still want to share my bot with the select few who would use it responsibly.
## Installation
__Note:__ If you are running a non-Linux operating system, you may want to follow the VirtualBox/Ubuntu installation instructions [found below](#installing-ubuntu-linux-on-oracle-virtualbox).
### Prerequisites
- Ubuntu Linux 18.04 or newer, or other Debian-based distribution
- APT package manager
- Elevated user privileges for `sudo`
- A Gmail account that you have control over (i.e. not a work or school account)
### Instructions
#### Prepare your Gmail account
__Important__: In step 9.2 you will be entering your password for this account into a plaintext file. The file _is_ hidden in an administrator-only area of your operating system, but nonetheless I highly recommend that you use a Gmail account that has little to no personal information on it. 
#### Install the bot
1. Download the zipped program from [here](https://github.com/knish502/zoit/archive/refs/heads/main.zip).
2. Open Nautilus (the file manager) and navigate to the location where you downloaded the .zip file.
3. Click on the .zip file to open it in the Archive Manager.
4. Click **Extract** on the top-left side of the Archive Manager window.
5. A window will appear confirming the installation location of the program. When you are satisfied with the location of the tool, click the **Extract** button on the top-right side of the screen. Archive Manager will then extract the tool to your location of choice.
6. Navigate to the newly-extracted folder, and right-click on an empty portion of the screen. In the menu that appears, click on **Open in Terminal**.
7. Enter the following command: `./install.sh`
8. When prompted for your password, enter it into the terminal. Note that the password will be hidden while you're typing it in, so it's normal not to see anything change while you're typing.
9. Allow the program to run. After about 5-10 minutes, a new window will appear with a text editor. Replace the following text:
    1. Replace "AGmailUserName<span>@</span>gmail.com" with your Gmail address
    2. Replace "TheGmailPassword" with your Gmail password.
10. Save with `CTRL+S` and exit the window.
## Usage
To use the bot:
1. 
## Future Plans
## Installing Ubuntu Linux on Oracle VirtualBox
