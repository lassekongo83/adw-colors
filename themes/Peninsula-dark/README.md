## How to install

1. Clone this repository: `git clone https://github.com/lassekongo83/adw-colors.git`
2. Run the install script: `sh install.sh`

Note: Do not remove or move the cloned repository after you've installed the theme. Symbolic links will break if you do.

If you use flatpak apps you'll have to override the permission settings:

```bash
sudo flatpak override --filesystem=xdg-config/gtk-3.0 && sudo flatpak override --filesystem=xdg-config/gtk-4.0
```

### Manually install the theme
If you don't want to run the install script you can install the theme manually.

1. Download the `gtk.css` file to `~/.config/gtk-4.0/` (Make backups if the file already exists).
2. Enable the corresponding color preference in `gnome-tweaks` and `gnome-control-center`. [e.g Dark for dark color themes.]
3. Create a symbolic link to the gtk-3.0 folder: `ln -s ~/.config/gtk-4.0/gtk.css ~/.config/gtk-3.0/gtk.css`

### How to uninstall
Run: `sh uninstall.sh`

#### Manual uninstall
1. Remove the gtk.css links: `rm ~/.config/gtk-3.0/gtk.css && rm ~/.config/gtk-4.0/gtk.css`
2. Restore any backups if the install script created any.

## How to modify the theme

1. Install `sassc`
2. Make your modifications in `gtk.scss`
3. Run `sh parse-sass.sh`
4. Restart any open GTK applications
