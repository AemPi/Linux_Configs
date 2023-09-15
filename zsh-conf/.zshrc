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

# https://www.cyberciti.biz/faq/apple-mac-osx-terminal-color-ls-output-option/
#export LSCOLORS=GxBxhxDxbxhxhxhxhxcxcx
export LSCOLORS=GxfxexDxbxaghfhcabxdbd
export LS_COLORS
export CLICOLOR=1

# User configuration
#################################################################################

# PATH VARIABLES


# SOURCES
source ~/.config/conf-lnx/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


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

# CUSTOM PROMPT
PROMPT='%F{red}%}[%F{cyan}%n%F{white}@%F{green}%m%F{red}] %F{cyan}(%~) %b%F{red}%(!.#.#>)%F{grey}'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Don´t forget to reload .zshrc with "source .zshrc"
alias ls="ls --color=auto"
alias ll="ls -lsahF"
alias vim="nvim"
alias clear_history='echo "" > ~/.zsh_history & exec $SHELL -l'
#alias take_backup="sh /Users/mpro/Documents/Skripte/backup.sh"
#alias csr="sh /Users/mpro/Documents/Skripte/gen-csr.sh"
#alias ip2hex="sh /Users/mpro/Documents/Skripte/IpToHex.sh"
#alias active_nic="sh /Users/mpro/Documents/Skripte/active_nic.sh"
#alias mtmux="sh /Users/mpro/Documents/Skripte/MPtmux.sh"
#alias home_nas="sh /Users/mpro/Documents/Skripte/wake_home_nas.sh"
alias python=/usr/local/bin/python3
