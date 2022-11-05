#!/bin/sh

export DISPLAY=:0
romname="$1"
case $(grep -F $romname /userdata/retroasd/config/modeline/modeline_240p.txt >/dev/null; echo $?) in
  0)
    echo "trovata"
    ;;
  1)
    # code if not found
    echo "non trovata"
    ;;
  *)
    # code if an error occurred
    ;;
esac

case $(grep -F $romname /userdata/retroasd/config/modeline/modeline_256p.txt >/dev/null; echo $?) in
  0)
     /usr/bin/xrandr -display :0.0 --output $(/userdata/retroasd/bin/get_video_output) --mode "MODE_2560_256"
    ;;
  1)
    # code if not found
    echo "non trovata"
    ;;
  *)
    # code if an error occurred
    ;;
esac
