#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

xrdb -merge ~/.Xresources
exec $DE


