#!/usr/bin/env zsh

if [[ "$USER" == "root" ]]; then USERCOLOR="red"; else USERCOLOR="yellow"; fi

get_welcome_symbol() {

	echo -n "%(?..%F{1})"

	local welcome_symbol=👉
	[ $EUID -ne 0 ] || welcome_symbol=⭐️
	
	echo -n $welcome_symbol
	echo -n "%(?..%f)"
}

get_prompt() {

	# 256-colors check (will be used later): tput colors
	
	echo -n "%{$fg_bold[$USERCOLOR]%}[%n]%f" # User
	echo -n "%F{8} @ %f" # at
	echo -n "%{$fg_bold[magenta]%}[$SHORT_HOST]%f" # Host
	echo -n "%F{8} : %f" # in 
	echo -n "%{$fg_no_bold[cyan]%}[%d]%f" # Dir
	echo -n "\n"
	echo -n "$(get_welcome_symbol)%{$reset_color%} " # $ or #
}

#export GREP_COLOR='1;31'

PROMPT='$(get_prompt)'

#local PREFIX="%(?,%{$fg_bold[green]%}👉,%{$fg_bold[red]%}☠️)"
#if [[ "$USER" == "root" ]]; then USERCOLOR="red"; else USERCOLOR="yellow"; fi

#PROMPT=$'%{$fg_bold[$USERCOLOR]%}[%n] \
# %{$fg_bold[magenta]%}[%m] \
# %{$fg_bold[cyan]%}[%d]\
# '\n''$PREFIX'' 

