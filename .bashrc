# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export PATH="$HOME/go/bin:$HOME/.cargo/bin:$PATH:$HOME/aspectj1.8/bin"
unset SSH_ASKPASS

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Adding the kdesrc-build directory to the path
export PATH="$HOME/kde/src/kdesrc-build:$PATH"

# Creating alias for running software built with kdesrc-build
kdesrc-run ()
{
  source "$HOME/kde/build/$1/prefix.sh" && "$HOME/kde/usr/bin/$1"
}
