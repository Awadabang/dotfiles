# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# XDG
export XDG_DOWNLOAD_DIR="${HOME}/Downloads"
export XDG_DOCUMENTS_DIR="${HOME}/Documents"
export XDG_PICTURES_DIR="${HOME}/Pictures"
export XDG_VIDEOS_DIR="${HOME}/Movies"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_DATA_HOME="${HOME}/.local/share"

# kubernetes
if [ -d "$HOME/.kube/config" ] ; then
    export KUBECONFIG="$HOME/.kube/config"
fi

# goup setting
[ -f ~/.go/env ] && . ~/.go/env
export GO111MODULE="on"
export GOPROXY="https://goproxy.cn,direct"
export GOPATH="${HOME}/go"

# mise
eval "$(~/.local/bin/mise activate bash)"

# clash: https://github.com/nelvko/clash-for-linux-install
if [ -f /opt/clash/script/common.sh ]; then
  source /opt/clash/script/common.sh && source /opt/clash/script/clashctl.sh && watch_proxy
fi

# tiup
export PATH="~/.tiup/bin:$PATH"

export EDITOR=vim
export PATH="${HOME}/.local/scripts/generic:${PATH}"

