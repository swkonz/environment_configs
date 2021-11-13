# enable color support of ls and other handy aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"

# enable git autocomplete
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git*' formats "- (%b) "
precmd() {
		vcs_info
}

# enable substitution in the prompt
setopt prompt_subst

# load prompt colors
autoload -U colors && colors

# Set prompt
# prompt='\e[1;36m\u|\d|\@\e[0m\e[0;32m|\W\e[0m\e[0;33m$(${vcs_info_msg_0_} " (%s) ")\e[0m\n$ '
NEWLINE=$'\n'
prompt='%(?.%F{green}√ .%F{red}? %?)%F{cyan}%2~|%w|%t|%F{yellow}${vcs_info_msg_0_}${NEWLINE}%f$ '

