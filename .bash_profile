# .bash_profile

# User specific environment

pathmunge () {
    case ":${PATH}:" in
        *:"$1":*)
            ;;
        *)
            if [ "$2" = "after" ] ; then
                PATH=$PATH:$1
            else
                PATH=$1:$PATH
            fi
    esac
}

# Set a more secure default
umask 0022

if [ -x /usr/bin/id ]; then
    USER="$(/usr/bin/id -un)"
    LOGNAME=$USER
    MAIL="/var/spool/mail/$USER"
fi  

for path in "$HOME"/bin "$HOME"/.local/bin; do
    if [ -d "$path" ]; then
        pathmunge "$path"
    fi
done
unset path
unset -f pathmunge

EDITOR=/usr/bin/vi
HISTSIZE=8192
HISTCONTROL=ignoreboth
HOSTNAME=$(/usr/bin/hostnamectl --transient 2>/dev/null) || \
HOSTNAME=$(/usr/bin/hostname 2>/dev/null) || \
HOSTNAME=$(/usr/bin/uname -n)
SSLKEYLOGFILE=/run/user/${UID}/tls.keylog_file
touch $SSLKEYLOGFILE && chmod 600 $SSLKEYLOGFILE

export USER LOGNAME MAIL PATH EDITOR HISTSIZE HISTCONTROL HOSTNAME SSLKEYLOGFILE

#export PIP_REQUIRE_VIRTUALENV=true

#export CHROME_CONFIG_HOME="$HOME/.config/google-chrome/$(cat /etc/machine-id)"

# Uncomment the following line if you don't like systemctl's
#	auto-paging feature:
#export SYSTEMD_PAGER=

[ -d "$HOME"/.bash_functions ] && for f in "$HOME"/.bash_functions/*.sh; do
	. $f || :
done

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
# vim:ts=4:sw=4
