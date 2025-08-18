##  🎨 Accent Color Changer
This program can change your accent color for gnome-shell, libadwaita, GTK4, and GTK3 applications.
Before you continue, ensure that your GTK3 theme supports accent color changes. One such theme is [adw-gtk3](https://github.com/lassekongo83/adw-gtk3).

### How to use
1. [Download the script](https://raw.githubusercontent.com/lassekongo83/adw-colors/refs/heads/main/scripts/accent-color-change/accent-color-change.sh).
2. Navigate to the directory where you downloaded the script.
3. Run the following command:
```bash
sh accent-color-change.sh
```
4. Follow the prompts.

### Important Notes

* **Flatpak Permissions:** To apply the new accent color to Flatpak applications, you will need to update permissions. Use the following commands:
```bash
sudo flatpak override --filesystem=xdg-config/gtk-3.0
sudo flatpak override --filesystem=xdg-config/gtk-4.0
```
* **Warning:** This program will overwrite any existing `gtk.css` configuration files located in `~/.config/gtk-3.0/gtk.css` and `~/.config/gtk-4.0/gtk.css`, but it will create backups of these files.
* This program is incompatible with any of the other themes in this repository.
