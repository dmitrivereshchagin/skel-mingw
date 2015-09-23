#
# ~/.profile
#

LANG=C
PATH=$HOME/bin:${PATH#.:}
export LANG PATH

if test -n "$BASH_VERSION" && test -f "$HOME"/.bashrc
then
    . "$HOME"/.bashrc
fi
