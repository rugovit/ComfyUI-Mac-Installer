-- Determine the path of the script itself
set thisFilePath to path to me as string
-- Convert to POSIX path (standard file system path)
set thisFolderPath to POSIX path of ((thisFilePath) & "::")

-- Prepare the shell script commands
set shellScript to "
cd '" & thisFolderPath & "'
install_homebrew() {


echo \"=========>    Check if Homebrew is installed\"

if ! command -v brew &>/dev/null; then
     echo \"=========>   Homebrew not found. Installing Homebrew...\"
     echo \"=========>   install homebrew\"
/bin/bash -c \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\"
    
    echo \"=========>   Check if Homebrew installation was successful\"
    if ! command -v brew &>/dev/null; then
        echo \"=========>   Failed to install Homebrew. Exiting...\"
        exit 1
    fi
fi

echo \"=========>   Homebrew is installed.\"


}
continue_script() {
echo \"=========>   install Python\"
brew install python
echo \"=========>   Clone the Git repository\"
git clone https://github.com/comfyanonymous/ComfyUI
echo \"=========>   Change directory to the cloned repository\"
cd ComfyUI
echo \"=========>   Create and activate virtual environment\"
python3 -m venv venv
echo \"=========>   Activate virtual environment\"
source venv/bin/activate
echo \"=========>   Install torchvision inside of virtual environment \"
./venv/bin/pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cpu
 
./venv/bin/pip install -r requirements.txt
echo \"=========>   Change directory to custom_nodes\"
cd custom_nodes 
echo \"=========>   Clone ComfyUI-Manager\"
git clone https://github.com/ltdrdata/ComfyUI-Manager.git
cd '" & thisFolderPath & "'
echo \"=========>   Change directory\"
cd ComfyUI
echo \"=========>   Start ConfyUI insiade of the environment \"
./venv/bin/python main.py &
sleep 2
echo \"=========>Open Browser \"
open http://127.0.0.1:8188
}
 
 
install_homebrew
continue_script
 
"

-- Execute the shell script in Terminal
tell application "Terminal"
	activate
	do script shellScript
	
end tell

