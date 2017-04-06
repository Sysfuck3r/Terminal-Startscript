#!/bin/sh

#####################################################
# Custom Terminal Startscript
# Made by Sysfuck3r:
# https://github.com/Sysfuck3r
# Please don't remove this section.
# And give credits to me, if you publish this script.
#####################################################

show_menu(){
    NORMAL=`echo "\033[m"`
    MENU=`echo "\033[36m"`
    NUMBER=`echo "\033[33m"`
    FGRED=`echo "\033[41m"`
    RED_TEXT=`echo "\033[31m"`
    ENTER_LINE=`echo "\033[33m"`
    echo "${ENTER_LINE}Welcome to ${RED_TEXT}Sysfuck3rs ${NORMAL}${ENTER_LINE}Terminal"
    echo "${MENU}${NUMBER} 1)${MENU} Connect to 'MyServer1' (SSH) ${NORMAL}"
    echo "${MENU}${NUMBER} 2)${MENU} Connect to 'MyServer2' (Telnet) ${NORMAL}"
    echo "${MENU}${NUMBER} 3)${MENU} Connect to 'MyServer3' (SSH) ${NORMAL}"
    read opt
}

function option_picked() {
    COLOR='\033[01;31m'
    RESET='\033[00;00m'
    MESSAGE=${@:-"${RESET}Error: No message passed"}
    echo "${COLOR}${MESSAGE}${RESET}"
}

clear
show_menu
    if [[ $opt = "" ]]; then
            exit;
    else
        case $opt in
        1) clear;
            option_picked "This is MyServer1";
            ssh -p 1337 sysfuck3r@1.2.3.4;;


        2) clear;
            option_picked "This is MyServer2";
            telnet 2.3.5.6 PORT;;


        3) clear;
            option_picked "This is MyServer3";
            ssh -p 1337 sysfuck3r@6.7.5.4;;


        x)exit;
        ;;

        \n)exit;
        ;;

        *)clear;
        option_picked "Pick an option from the menu";
        show_menu;
        ;;
    esac
fi
