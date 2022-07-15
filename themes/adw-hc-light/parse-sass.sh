#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t expanded"

echo Generating the css...

sassc $SASSC_OPT adw-hc-light.scss gtk.css
