## How to use
1. [Download the script](https://github.com/lassekongo83/adw-colors/raw/refs/heads/main/accent-color-change/accent-color-change.sh).
2. Navigate to the directory where you downloaded the script.
3. Run the following command:
```bash
sh accent-color-change.sh
```
4. Follow the prompts.

### Important Notes

1. **Flatpak Permissions:** To apply the new accent color to Flatpak applications, you will need to update permissions. Use the following commands:
```bash
sudo flatpak override --filesystem=xdg-config/gtk-3.0
sudo flatpak override --filesystem=xdg-config/gtk-4.0
```
2. **Warning:** This program will overwrite any existing `gtk.css` configuration files located in `~/.config/gtk-3.0/gtk.css` and `~/.config/gtk-4.0/gtk.css`, but it will create backups of these files. This script is incompatible with any of the other themes in this repository.
3. This script is designed for GNOME 47 or later. It will not function with earlier versions.
4. Ensure that your GTK3 theme supports accent color changes for the modifications to take effect. The theme must use [gtk named colors](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.2/named-colors.html). One such theme is [adw-gtk3](https://github.com/lassekongo83/adw-gtk3).
