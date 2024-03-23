-- Determine the path of the script itself
set thisFilePath to path to me as string
-- Convert to POSIX path (standard file system path)
set thisFolderPath to POSIX path of ((thisFilePath) & "::")
-- Prepare the shell script commands
set shellScript to "
cd '" & thisFolderPath & "'
echo \"=========> Change directory\"
cd ComfyUI
echo \"=========> Start ConfyUI insiade of the environment \"
./venv/bin/python main.py &
sleep 2
echo \"=========>Open Browser \"
open http://127.0.0.1:8188
"

-- Execute the shell script in Terminal
tell application "Terminal"
	activate
	do script shellScript
	
end tell