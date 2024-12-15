#!/bin/sh

hc=hyprctl

if [ "$1" = "" ]; then
    # echo -en "\0use-hot-keys\x1f"
    $hc workspaces | sed -nE 's/^.*special:([[:alnum:]]*).*$/\1/p' | sort
else
    coproc ($hc dispatch togglespecialworkspace "$1")
fi
