## This theme is a work in progress. Use at your own risk.

### How to use
1. Clone this repository and then run `sh install.sh` (Make sure you have `xdg-desktop-portal-gtk` installed if you don't use GNOME. It's not recommended to run this script on non-gtk based desktops like KDE or LXQT.)
2. Keep this folder intact and at the same location at all times. The theme is symlinked to this folder and will break if you move or remove it.
3. If you use flatpak apps, make sure you have set the correct permissions: `flatpak override --filesystem=xdg-config/gtk-3.0 && flatpak override --filesystem=xdg-config/gtk-4.0`
4. To apply any updates, simply run `git pull` in the cloned `adw-colors` folder.

Run `sh uninstall.sh` to remove the theme. If there previously was a gtk.css file in one of your config folders there should be a backup that you can restore.

If you don't want to run any scripts you can symlink `gtk4.css` + `assets` to `~/.config/gtk-4.0/gtk.css` and `gtk3.css` + `assets` to `~/.config/gtk-3.0/gtk.css` as shown below.

From this directory run:

```bash
mkdir -p ~/.config/gtk-3.0/
mkdir -p ~/.config/gtk-4.0/
ln -s gtk3.css ~/.config/gtk-3.0/gtk.css
ln -s gtk4.css ~/.config/gtk-4.0/gtk.css
ln -s assets ~/.config/gtk-3.0/assets
ln -s assets ~/.config/gtk-4.0/assets
```
