## How to use
1. Download the script: https://github.com/lassekongo83/adw-colors/raw/refs/heads/main/accent-color-change/accent-color-change.sh
2. In a terminal navigate to the downloaded location.
3. Run the script with the command: `sh accent-color-change.sh`
4. Follow the instructions.

Warning: This program will overwrite (but create backups) of any gtk.css config files located in `~/.config/gtk-3.0/gtk.css` and `~/.config/gtk-4.0/gtk.css`.

Note: This script is meant to be used with **GNOME 47 or any later version**. It will not work with older versions.

Note: Flatpak applications may require you to update permissions. Run: `sudo flatpak override --filesystem=xdg-config/gtk-3.0 && sudo flatpak override --filesystem=xdg-config/gtk-4.0`

Note: GTK3 applications will only change accent color if your theme use [gtk named colors](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.2/named-colors.html).
