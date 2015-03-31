###############
##  .bashrc  ##
###############

#
# Common
#
export PS1='\u@\h:\w\$ '
export EDITOR=vim
export RANGER_LOAD_DEFAULT_RC=FALSE

complete -cf sudo
complete -cf man

alias c='clear'
alias ls='ls -pa --color=auto'
alias ll='ls -hal'
alias mc='mc -b'
alias mkdir='mkdir -pv'
alias mount='/usr/bin/sudo mount'
alias umount='/usr/bin/sudo umount'
alias vim='gvim -v'

clrswp ()
{
    echo "Clearing swap space..."
    /usr/bin/sudo /sbin/swapoff -a
    /usr/bin/sudo /sbin/swapon -a
    echo "Done!"
}

#
# Debian
#
if [ -f /etc/debian_version ]; then
    export PATH='/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:~/bin'

    alias apt-get='/usr/bin/sudo /usr/bin/apt-get'
    alias aptitude='/usr/bin/sudo /usr/bin/aptitude'
    alias iptlist='/usr/bin/sudo /sbin/iptables --line-numbers -n -L';
fi

#
# Slackware
#
if [ -f /etc/slackware-version ]; then
    export PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/lib64/java/jre/bin:/opt/texlive/bin/x86_64-linux:~/bin'

    alias slackpkg='/usr/bin/sudo /usr/sbin/slackpkg'
    alias installpkg='/usr/bin/sudo /sbin/installpkg'
    alias upgradepkg='/usr/bin/sudo upgradepkg'
    alias sbopkg='/usr/bin/sudo /usr/sbin/sbopkg'
    alias qpkg='ls /var/log/packages | grep -i'
    alias iptlist='/usr/bin/sudo /usr/sbin/iptables --line-numbers -n -L';
fi

#
# Arch
#
if [ -f /etc/arch-release ]; then
    export PATH='/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:~/bin'
fi

#
# losthill
#
if [ "$(hostname)" = 'losthill' ]; then
    alias vim=/usr/bin/vim;
fi

#
# texlive
#
if [ -d ~/bin/texlive ]; then
    export PATH=~/bin/texlive/bin/x86_64-linux:$PATH;
fi
