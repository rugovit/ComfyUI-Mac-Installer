# ComfyUI-Mac-Installer

**Unlock the Magic of AI Image Generation with Ease**

ComfyUI stands at the forefront of AI-driven image generation, offering unparalleled creativity at your fingertips. Yet, its full potential has often been gated behind a somewhat labyrinthine installation process — until now. Recognizing that the beauty of AI shouldn't be reserved for those fluent in macOS terminals or Python development, we present the ComfyUI-Mac-Installer.

## Simplifying the Complex

This project is the bridge between the innovative world of ComfyUI and enthusiasts eager to explore AI image generation without the hassle. Whether you're navigating the intricacies of macOS for the first time or you're a seasoned developer looking for a quicker setup, ComfyUI-Mac-Installer is your key to a seamless start.

# How to Use



## Installation

1. Download [ComfyUI-Mac-installer apps.zip](https://github.com/rugovit/ComfyUI-Mac-Installer/blob/main/ComfyUI-Mac-installer%20apps.zip)  containing  `InstallComfyUI.app` and `ComfyUI Starter.app` to your local machine and unzip. Both apps need to be placed in the same directory to work correctly. 
2. Locate the downloaded `InstallComfyUI.app` in your Finder. Right-click on the app and select `Open` to bypass the macOS gatekeeper for the first run. 
3. This app will open terminal and  install necessary dependencies and set up the environment for ComfyUI , after that it will automatically start ComfyUi server and  open your default browser(sometimes you will have to refresh browser).

**Notes:**
* To  stop the server you can close the terminal window or press `Ctrl+C` in the terminal window where the server is running.

* There’s no need to run the installer again unless you are setting up the project on a new machine or after a clean installation.

* The installer may require additional permissions to install software or modify system settings. Please grant these permissions when prompted.


After sucesfull instalation your screen  should have  new `ComfyUI` folder at the same level as `InstallComfyUI.app`  terminal opened with  log line `To see the GUI go to: http://127.0.0.1:8188`  and browser opned to `http://127.0.0.1:8188/` like in the picture below : 


   ![image](https://github.com/rugovit/ComfyUI-Mac-Installer/assets/12918391/d15461c4-fdda-4c07-bb17-1d64a7e2c046)
## StartupComfyUI

Once the installation is complete, you can use the `StartupComfyUI.app` to start the server (server will be started automatically after installation, you can use this app to start the server again if it is stopped).

1. Find the `StartupComfyUI.app` where you saved it(has to be in the same directory as `ComfyUI` installation folder).
2. Right-click and select `Open` to start the app. This will launch the ComfyUI server and open the project in your default web browser automatically.

# Tested Devices

To ensure compatibility and performance, the ComfyUI-Mac-Installer has been  tested on a variety of devices. Below is a list of devices we've confirmed the installer works smoothly on:

- **MacBook Pro (16-inch, 2019)**
    - **Processor:** 2.3 GHz 8-Core Intel Core i9
    - **Memory:** 16 GB
- **MacBook Pro M3 Max (16-inch, Nov 2023)**
    - **Processor:** M3 Max
    - **Memory:** 48 GB
- **MacBook Pro M1 (13-inch, 2021)**
    - **Processor:** M1 Pro
    - **Memory:** 16 GB
# Script actions

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
- **The site can not be reached error in Browser**: Check if terminal is running the server, sometimes scripts  opens browser  before  server has started  in that case simply refresh browser page  after you make sure server is started  if not run the server using `StartupComfyUI.app` or by running `python main.py` in terminal in the project directory.

# Contributing

We welcome contributions for improvements or bug fixes. Please open an issue or pull request in the repository where this script is hosted.

# Star and Share  if you find it useful!
This project is product of frustration and lots of time wasted  with setting up ComfyUI, I hope it saves some of yours.  If you find it helpful, please consider starring the repository and sharing it with others who might benefit from it, lets not waste time and start creating.
# License

This script and the associated project are distributed under GNU GENERAL PUBLIC LICENSE, which outlines the permissions, limitations, and conditions under which the project can be used.
