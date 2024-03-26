-- Determine the path of the script itself
set thisFilePath to path to me as string
-- Convert to POSIX path (standard file system path)
set thisFolderPath to POSIX path of ((thisFilePath) & "::")
-- Prepare the shell script commands
set shellScript to "
cd '" & thisFolderPath & "'

echo \"===========================> StartComfyUI  v.0.9.0  <===========================\"
echo \"=========> Change directory\"
cd ComfyUI
echo \"=========> Start ConfyUI insiade of the environment \"
 kill_server_on_port() {
    echo \"=========>   Checking if a server is running on port $1...\"
    server_pid=$(lsof -i :$1 | grep LISTEN | awk '{print $2}')
    if [ -n \"$server_pid\" ]; then
        echo \"=========>   Server found with PID $server_pid. Killing server...\"
        kill -9 $server_pid
        echo \"=========>   Server on port $1 has been killed.\"
    else
        echo \"=========>   No server is currently running on port $1.\"
    fi
}
kill_server_on_port
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