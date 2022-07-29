#! /bin/sh

script_dir=$(dirname -- "$( readlink -f -- "$0"; )";)
gtk3_file="$HOME/.config/gtk-3.0/gtk.css"
gtk4_file="$HOME/.config/gtk-4.0/gtk.css"
backup_number=$(date +%s)

# Checks for gnome
if [ ! "$(pidof gnome-shell)" ]; then
  echo "Error: To run this script you need to use GNOME."
  exit 1
else
  true
fi

# Check if adw-gtk3 is installed
if [ -d "$HOME/.local/share/themes/adw-gtk3-dark" ]; then
  true
elif [ -d "$HOME/.themes/adw-gtk3-dark" ]; then
  true
elif [ -d "/usr/share/themes/adw-gtk3-dark" ]; then
  true
else
  echo "Error: adw-gtk3 not found."
  exit 1
fi

# unlink any previous style
if [ -L "${gtk3_file}" ]; then
  unlink "${gtk3_file}"
fi
if [ -L "${gtk4_file}" ]; then
  unlink "${gtk4_file}"
fi

# Create backup if gtk.css file exist
if [ -f "${gtk3_file}" ]; then
  mv "${gtk3_file}" "${gtk3_file}"."${backup_number}".bak
  echo "adw-colors: gtk.css backup file created at ${gtk3_file}.${backup_number}.bak"
else
  mkdir -p ~/.config/gtk-3.0/
fi

if [ -f "${gtk4_file}" ]; then
  mv "${gtk4_file}" "${gtk4_file}"."${backup_number}".bak
  echo "adw-colors: gtk.css backup file created at ${gtk4_file}.${backup_number}.bak"
else
  mkdir -p ~/.config/gtk-4.0/
fi

# Link the gtk.css file for gtk3 and gtk4
ln -s "${script_dir}"/gtk.css "${gtk3_file}"
ln -s "${script_dir}"/gtk.css "${gtk4_file}"

# Change to the required gtk3 theme and color preference
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

echo "adw-colors: For the changes to take effect you'll have to close and re-open any GTK applications. Sometimes a relog is required."
