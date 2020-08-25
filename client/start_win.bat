echo "start hsync client,don't close it"
echo "若非64位系统，请修改该脚本"

../bin/hsync_windows.exe hsync.json -h default

echo "waiting 10's and exit"
ping -n 10 127.1>nul