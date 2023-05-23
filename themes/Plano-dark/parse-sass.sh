#! /bin/bash

#if [ ! "$(which sassc 2> /dev/null)" ]; then
#   echo sassc needs to be installed to generate the css.
#   exit 1
#fi

SASSC_OPT="-M -t expanded"

echo Generating the css...

sassc $SASSC_OPT main-gtk3.scss gtk3.css
sassc $SASSC_OPT main-gtk4.scss gtk4.css
