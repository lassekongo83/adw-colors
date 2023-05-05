## This theme is a work in progress. Use at your own risk.

### How to use
1. Run `sh install.sh` (Make sure you have `xdg-desktop-portal-gtk` installed if you don't use GNOME. It's not recommended to run this script on non-gtk based desktops like KDE or LXQT.)
2. Keep this folder intact and at the same location at all times. The theme is symlinked to this folder and will break if you move or remove it.
3. If you use flatpak apps, make sure you have set the correct permissions: `flatpak override --filesystem=xdg-config/gtk-3.0 && flatpak override --filesystem=xdg-config/gtk-4.0`
4. To apply any updates, simply run `git pull` in the cloned `adw-colors` folder.

Run `sh uninstall.sh` to remove the theme. If there previously was a gtk.css file in one of your config folders there should be a backup that you can restore.

If you don't want to run any scripts you can put `gtk.css` and `assets` in `~/.config/gtk-4.0/` and symlink the file and folder to `~/.config/gtk-3.0/`.
