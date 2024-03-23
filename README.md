# ComfyUI-Mac-Installer

This document details the automated setup process for a macOS-based Python project environment, leveraging an AppleScript. This setup includes Homebrew and Python installations, setting up a virtual environment, and handling Git repositories. It ensures all necessary Python packages are installed and configured properly for the project to run.

# How to Use



## Downloading the Applications

The applications can be found in the `Build/Apps` folder of the ComfyUI project repository. Here’s how to download them:

1. Navigate to the GitHub page for the ComfyUIInstaller project.
2. Locate the `Build/apps` folder.
3. Download both the `InstallComfyUI.app` and `ComfyUI Starter.app` to your local machine.
   
Both apps need to be placed in the same directory to work correctly. You can place them in the same folder or on your desktop.  This  is important because InstallComfyUI.app creates `ComfyUI` installation folder  in the same directory where it is located.

### ComfyUI Installer

First, run the `InstallComfyUI.app`:

1. Locate the downloaded `InstallComfyUI.app` in your Finder.
2. Right-click on the app and select `Open` to bypass the macOS gatekeeper for the first run. 
3. This app will open terminal and  install necessary dependencies and set up the environment for ComfyUI , after that it will automatically start ComfyUi server and  open browser.
4. To  stop the server you can close the terminal window or press `Ctrl+C` in the terminal window where the server is running.

There’s no need to run the installer again unless you are setting up the project on a new machine or after a clean installation.

**Note:** The installer may require additional permissions to install software or modify system settings. Please grant these permissions when prompted.

### StartupComfyUI

Once the installation is complete, you can use the `StartupComfyUI.app` to start the server (server will be started automatically after installation, you can use this app to start the server again if it is stopped).

1. Find the `StartupComfyUI.app` where you saved it(has to be in the same directory as `ComfyUI` installation folder).
2. Right-click and select `Open` to start the app. This will launch the ComfyUI server and open the project in your default web browser automatically.

## Requirements

- macOS operating system
- Internet connection
- Terminal access

## InstallComfyUI Script actions:

1. **Determines the script's file path** to use as a base for executing other commands.
2. **Installs Homebrew** if it's not already installed, providing a package manager for macOS.
3. **Installs Python** using Homebrew, ensuring the project's programming language is available.
4. **Clones the ComfyUI Git repository** to your local machine, where the project's code resides.
5. **Creates and activates a Python virtual environment**, isolating project dependencies.
6. **Installs necessary Python packages** as specified in the `requirements.txt` file. This includes critical packages for the project like `torch`, `torchsde`, `torchvision`, `einops`, `transformers`, `safetensors`, `aiohttp`, `pyyaml`, `Pillow`, `scipy`, `tqdm`, `psutil`, and `kornia`.
7. **Clones the ComfyUI-Manager Git repository** inside a specific directory, further setting up the project environment.
8. **Starts a local server** running the main Python script within the virtual environment and automatically opens it in a web browser.

## StartupComfyUI Script actions:

1. **Determines the script's own file path** to dynamically find its location on your system.
2. **Converts the file path to a POSIX path**, which is compatible with macOS Terminal commands.
3. **Navigates to the ComfyUI project directory** within the Terminal.
4. **Starts the ComfyUI application** inside the activated Python virtual environment.
5. **Opens your default web browser** to `http://127.0.0.1:8188`, where the ComfyUI interface can be accessed.

 



# Troubleshooting

- **Permissions**: Ensure you have the necessary permissions to install software and execute scripts on your Mac.
- **Internet Connection**: An active internet connection is required for downloading packages and cloning repositories.
- **Script Errors**: If errors occur, refer to the Terminal output to identify and resolve issues. These could stem from network interruptions, permissions conflicts, or missing dependencies.

# Contributing

We welcome contributions for improvements or bug fixes. Please open an issue or pull request in the repository where this script is hosted.

# License

This script and the associated project are distributed under GNU GENERAL PUBLIC LICENSE, which outlines the permissions, limitations, and conditions under which the project can be used.
