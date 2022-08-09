#! /bin/sh

gtk3_file="$HOME/.config/gtk-3.0/gtk.css"
gtk4_file="$HOME/.config/gtk-4.0/gtk.css"

if [ -L "${gtk3_file}" ]; then
  unlink "${gtk3_file}"
else
  echo "adw-colors: No theme installed."
  exit 1
fi
if [ -L "${gtk4_file}" ]; then
  unlink "${gtk4_file}"
else
  echo "adw-colors: No theme installed."
  exit 1
fi

if [ -L $HOME/.config/gtk-3.0/assets ]; then
  unlink $HOME/.config/gtk-3.0/assets
fi
if [ -L $HOME/.config/gtk-4.0/assets ]; then
  unlink $HOME/.config/gtk-4.0/assets
fi

echo "adw-colors: Theme uninstalled. If there were any previous created bak file you can restore it now if needed."
