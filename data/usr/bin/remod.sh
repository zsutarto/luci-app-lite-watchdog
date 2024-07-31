
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
adb shell ip route
sleep 1
echo -e "${endcolor} "
echo -e "${Yellow}Enable airplane mode. . . .${endcolor}"
adb shell cmd connectivity airplane-mode enable
sleep 10
echo -e "${Purple}Disable airplane mode. . . .${endcolor}"
adb shell cmd connectivity airplane-mode disable
echo -e " "
sleep 10
echo -e "${Green}Change IPv4 address: "
sleep 1
adb shell ip route
echo -e "${endcolor} "
echo -e "Restart completed. . . ."
echo -e " "