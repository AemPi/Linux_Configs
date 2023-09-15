#    ___                  ____  _
#   /   | ___  ____ ___  / __ \(_)
#  / /| |/ _ \/ __ `__ \/ /_/ / /
# / ___ /  __/ / / / / / ____/ /
#/_/  |_\___/_/ /_/ /_/_/   /_/
#
# Filename:     .zprofile
# Github:       https://github.com/AemPi/Linux_Configs.git
# Maintainer:   Markus Pröpper (AemPi)
##########################################################
#!/bin/sh
Reset='\033[0m'       # Text Reset
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

echo ""
echo "${Yellow}Welcome Back...${Reset}"
if ! command -v figlet &> /dev/null
then
    echo "
    ${Cyan} █████╗ ███████╗███╗   ███╗██████╗ ██╗${Reset}
    ${Cyan}██╔══██╗██╔════╝████╗ ████║██╔══██╗██║${Reset}
    ${Cyan}███████║█████╗  ██╔████╔██║██████╔╝██║${Reset}
    ${Cyan}██╔══██║██╔══╝  ██║╚██╔╝██║██╔═══╝ ██║${Reset}
    ${Cyan}██║  ██║███████╗██║ ╚═╝ ██║██║     ██║${Reset}
    ${Cyan}╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝     ╚═╝${Reset}
    ${Cyan}https://github.com/AemPi${Reset}
    "
else
#   echo "${Cyan}$(echo $(id -un) | $(figlet -f slant) ${Reset}"
#    echo "${Cyan}"
#    echo "$(id -un)" | figlet -w 50 -p -f slant
#    echo "https://github.com/AemPi"
#    echo "${Reset}"
#    echo "
    echo "
    ${Cyan} █████╗ ███████╗███╗   ███╗██████╗ ██╗${Reset}
    ${Cyan}██╔══██╗██╔════╝████╗ ████║██╔══██╗██║${Reset}
    ${Cyan}███████║█████╗  ██╔████╔██║██████╔╝██║${Reset}
    ${Cyan}██╔══██║██╔══╝  ██║╚██╔╝██║██╔═══╝ ██║${Reset}
    ${Cyan}██║  ██║███████╗██║ ╚═╝ ██║██║     ██║${Reset}
    ${Cyan}╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝     ╚═╝${Reset}
    ${Cyan}https://github.com/AemPi${Reset}
    "

fi

uptime=`uptime -p`
echo "${Yellow}Uptime: $uptime ${Reset}"
echo "${Cyan}######################################################${Reset}"
