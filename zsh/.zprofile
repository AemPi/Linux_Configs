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

# WELCOME MESSAGE
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
    echo "${Cyan} $(figlet -f slant "$(id -un)") ${Reset}"
    echo "${Cyan} https://github.com/AemPi ${Reset}"
    echo "${Reset}"

fi

uptime=`uptime -p`
echo "${Yellow}Uptime: $uptime ${Reset}"
echo "${Cyan}######################################################${Reset}"

# EXPORTS
#####################

# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# zsh config dir
export ZDOTDIR=$HOME/.config/conf-lnx/zsh
