###############
##  .bashrc  ##
###############

#
# Common
#
export PS1='\u@\h:\w\$ '
export EDITOR=vim

complete -cf sudo
complete -cf man

alias c='clear'
alias iptlist='/usr/bin/sudo /usr/sbin/iptables --line-numbers -n -L'
alias ls='ls -pa --color=auto'
alias ll='ls -hal'
alias mc='mc -b'
alias mkdir='mkdir -pv'
alias mount='/usr/bin/sudo mount'
alias umount='/usr/bin/sudo umount'

clrswp ()
{
    echo "Clearing swap space..."
    /usr/bin/sudo /sbin/swapoff -a
    /usr/bin/sudo /sbin/swapon -a
    echo "Done!"
}


#
# Slackware
#
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/lib64/java/jre/bin:/opt/texlive/bin/x86_64-linux:/home/mpa/bin'

alias slackpkg='/usr/bin/sudo /usr/sbin/slackpkg'
alias installpkg='/usr/bin/sudo /sbin/installpkg'
alias upgradepkg='/usr/bin/sudo upgradepkg'
alias sbopkg='/usr/bin/sudo /usr/sbin/sbopkg'
alias qpkg='ls /var/log/packages | grep -i'
