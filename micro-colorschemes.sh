#!/bin/sh

# git clone https://github.com/zyedidia/micro.git
# ls micro/runtime/colorschemes | sed -e 's/.micro//'
COLORSCHEMES="atom-dark bubblegum cmc-16 cmc-tc darcula default dracula-tc dukedark-tc dukelight-tc dukeubuntu-tc geany gotham gruvbox gruvbox-tc material-tc monokai-dark monokai one-dark railscast simple solarized solarized-tc sunny-day twilight zenburn"

FILE="~/is6/home/erik/ceph/list-locks.sh"

for scheme in $COLORSCHEMES ; do 
    rxvt -e micro -colorscheme $scheme "${FILE}" &
    RXVT_PID=$!
    sleep 2
    scrot -u "micro-${scheme}.png"
    sleep 2
    kill $RXVT_PID
done

