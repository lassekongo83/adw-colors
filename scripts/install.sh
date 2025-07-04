#!/bin/sh
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
THEMES_DIR=$(realpath "$SCRIPT_DIR/../themes")

. "$SCRIPT_DIR/functions.sh"
setup_variables
check_gsettings
check_gtk_theme_var
check_adw_gtk3_installed

# Themes menu
theme_paths=
for d in "$THEMES_DIR"/*; do
  [ -d "$d" ] && theme_paths="${theme_paths}
$d"
done
theme_paths=${theme_paths#?}

# Show themes
printf "Which theme do you want to install?\n"
i=0
IFS='
'
for theme in $theme_paths; do
  i=$((i+1))
  printf " %d) %s\n" "$i" "$(basename "$theme")"
done
unset IFS

# Select & validate
printf "Enter choice [1-%d]: " "$i"
read -r tchoice
case $tchoice in
  ''|*[!0-9]*|0|[!1-9]|[1-9][0-9]*) 
    printf "\e[31mError:\e[0m invalid theme choice\n" >&2
    exit 1
  ;;
esac
if [ "$tchoice" -gt "$i" ]; then
  printf "\e[31mError:\e[0m theme choice out of range\n" >&2
  exit 1
fi

theme_dir=$(printf "%s\n" "$theme_paths" | sed -n "${tchoice}p")

auto_apply_variant "$theme_dir"

