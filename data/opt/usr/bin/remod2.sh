
clear
endcolor="\e[0m"
Red="\e[31m"
Green="\e[32m"
Yellow="\e[33m"
Purple="\e[33m"

echo -e "Starting. . . ."
echo -e " "
echo -e "${Red}Check IPv4 address: "
sleep 1
adb shell ip addr show rndis0  | grep 'inet ' | cut -d ' ' -f 6 | cut -d / -f 1
adb shell ip addr show ccmni0  | grep 'inet ' | cut -d ' ' -f 6 | cut -d / -f 1
sleep 1
echo -e "${endcolor} "
echo -e "${Yellow}Enable airplane mode. . . .${endcolor}"
adb shell settings put global airplane_mode_on 1
sleep 10
echo -e "${Purple}Disable airplane mode. . . .${endcolor}"
adb shell settings put global airplane_mode_on 0
echo -e " "
sleep 10
echo -e "${Green}Change IPv4 address: "
sleep 1
adb shell ip addr show rndis0  | grep 'inet ' | cut -d ' ' -f 6 | cut -d / -f 1
adb shell ip addr show ccmni0  | grep 'inet ' | cut -d ' ' -f 6 | cut -d / -f 1
echo -e "${endcolor} "
echo -e "Restart completed. . . ."
echo -e " "