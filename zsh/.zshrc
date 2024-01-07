#    ___                  ____  _
#   /   | ___  ____ ___  / __ \(_)
#  / /| |/ _ \/ __ `__ \/ /_/ / /
# / ___ /  __/ / / / / / ____/ /
#/_/  |_\___/_/ /_/ /_/_/   /_/
#
# Filename:     .zshrc
# Github:       https://github.com/AemPi/Linux_Configs.git
# Maintainer:   Markus Pröpper (AemPi)
#########################################################

# User configuration
#################################################################################
# HISTORY FILE
HISTFILE=~/.zhistory
HISTSIZE=1000
SAVEHIST=1000

# FUNCTIONS
source "$ZDOTDIR/zsh-functions"

# PLUGINS
# for zsh-ssh install junegunn/fzf via
# Debian based: sudo apt install fzf
# Arch based: sudo pacman -S fzf
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "sunlei/zsh-ssh"

# NORMAL FILES SOURCES
zsh_add_file "zsh-aliases"

# zsh-completion
autoload -Uz compinit
compinit

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':completion:*' menu select
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' get-revision true
zstyle ':vcs_info:git:*' check-for-changes true
# match uppercase from lowercase
zstyle ':completion:*'   matcher-list 'm:{a-z}={A-Z}'
# hash changes branch misc
zstyle ':vcs_info:git:*' formats "[%s-%b] %F{green}%c%F{red}%u %m"
zstyle ':vcs_info:git:*' actionformats "[%s|%a-%b] %F{green}%c%F{red}%u%a %m"
zstyle ':vcs_info:git:*+set-message:*' hooks untracked-git
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

+vi-untracked() {
  if [[ -n "$(git ls-files --others --exclude standard)" ]]; then
      hook_com[misc]='?'
  else
      hook_com[misc]=''
  fi
}

setopt PROMPT_SUBST
# Show completion on first TAB
setopt menucomplete

# PROMPT DESIGN - DEFAULT IS oneline
#####################################
#PROMPT_ALTERNATIVE=oneline
PROMPT_ALTERNATIVE=twoline

case "$PROMPT_ALTERNATIVE" in
    oneline)
        PROMPT='%F{red}%}[%F{cyan}%n%F{white}@%F{green}%m%F{red}] %F{cyan}(%~) %F{yellow}${vcs_info_msg_0_}%b%F{red}%(!.#.#>)%F{grey}'
    ;;
    twoline)
        PROMPT='%F{red}╭─%F{red}%}[%F{cyan}%n%F{white}@%F{green}%m%F{red}] %F{cyan}(%~) %F{yellow}${vcs_info_msg_0_}%b 
%F{red}╰─%F{red}%(!.#.#>)%F{grey}'
        ;;
    *)
        PROMPT='%F{red}%}[%F{cyan}%n%F{white}@%F{green}%m%F{red}] %F{cyan}(%~) %F{yellow}${vcs_info_msg_0_}%b%F{red}%(!.#.#>)%F{grey}'
    ;;
esac
