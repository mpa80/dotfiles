# ============================================================ 
#   .bashrc
# ============================================================ 


# ============================================================ 
#   Common
# ============================================================ 

export PS1='\u@\h:\w\$ '
export EDITOR=vim
export RANGER_LOAD_DEFAULT_RC=FALSE
export STEAM_FRAME_FORCE_CLOSE=1

complete -cf sudo
complete -cf man

alias ls='ls -pa --group-directories-first --time-style=+"%Y-%m-%d %H:%M" --color=auto -F'
alias ll='ls -phla --group-directories-first --time-style=+"%Y-%m-%d %H:%M" --color=auto -F'
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


# ============================================================ 
#   Is gvim installed?
# ============================================================ 

if [ -f /usr/bin/gvim ]
then
    alias vim='/usr/bin/gvim -v'
else
    alias vim=/usr/bin/vim
fi


# ============================================================ 
#   git-completion
# ============================================================ 
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash;
fi


# ============================================================ 
#   Slackware
# ============================================================ 

if [ -f /etc/slackware-version ]; then
    export PATH='/home/mpa/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/lib64/java/jre/bin:/usr/games'

    alias slackpkg='/usr/bin/sudo /usr/sbin/slackpkg'
    alias installpkg='/usr/bin/sudo /sbin/installpkg'
    alias upgradepkg='/usr/bin/sudo upgradepkg'
    alias sbopkg='/usr/bin/sudo /usr/sbin/sbopkg'
    alias qpkg='ls /var/log/packages/ | grep -i'
    alias iptlist='/usr/bin/sudo /usr/sbin/iptables --line-numbers -n -L'
    alias ufw='/usr/bin/sudo /usr/sbin/ufw'
    alias tarsnap='/usr/bin/sudo /usr/bin/tarsnap';
fi


# ============================================================ 
#   Fedora
# ============================================================ 

if [ -f /etc/fedora-release ]; then
    export PATH='/home/mpa/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin'

    alias mount='/usr/bin/sudo /bin/mount'
    alias umount='/usr/bin/sudo /bin/umount'
    alias dnf='/usr/bin/sudo /usr/bin/dnf';
fi


# ============================================================ 
#   RedHat / CentOS
# ============================================================ 

if [ -f /etc/redhat-release ]; then
    alias mount='/usr/bin/sudo /bin/mount'
    alias umount='/usr/bin/sudo /bin/umount'
    alias yum='/usr/bin/sudo /usr/bin/yum'
    alias dnf='/usr/bin/sudo /usr/bin/dnf';
fi


# ============================================================ 
#   Debian
# ============================================================ 

if [ -f /etc/debian_version ]; then
    export PATH='/home/mpa/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games'

    alias apt='/usr/bin/sudo /usr/bin/apt'
    alias iptlist='/usr/bin/sudo /sbin/iptables --line-numbers -n -L';
fi


# ============================================================ 
#   Arch
# ============================================================ 

if [ -f /etc/arch-release ]; then
    export PATH='/home/mpa/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl'
fi

if [ -d /home/mpa/.local/bin ]; then
	export PATH="$PATH:/home/mpa/.local/bin"
fi
