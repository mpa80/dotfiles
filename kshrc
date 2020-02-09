#
# .kshrc
#

export EDITOR=vi
export PAGER=less
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export CLICOLOR=1

HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

set -o emacs

if command -v colorls > /dev/null ; then
	LS='colorls'
else
	LS='ls'
fi

alias ls='$LS -FHh'
alias ll='ls -la'
alias mkdir='mkdir -p'
alias pkg_add='/usr/bin/doas /usr/sbin/pkg_add'

_XTERM_TITLE='\[\033]0;\u@\h:\w\007\]'
_PS1_CLEAR='\[\033[0m\]'
_PS1_BLUE='\[\033[34m\]'
case "$(id -u)" in
	0) _PS1_COLOR='\[\033[1;31m\]' ;;
	*) _PS1_COLOR='\[\033[32m\]'   ;;
esac
PS1='$_XTERM_TITLE$_PS1_COLOR\u@\h$_PS1_CLEAR:\w\$ '

