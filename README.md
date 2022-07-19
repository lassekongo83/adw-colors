<div align="center">

# adw-colors
Style [libadwaita](https://gnome.pages.gitlab.gnome.org/libadwaita/) and [adw-gtk3](https://github.com/lassekongo83/adw-gtk3) with named colors.

[How to create your own color themes.](https://github.com/lassekongo83/adw-colors/blob/main/HOWTO.md)

</div>

1. Copy one of the files below to `~/.config/gtk-4.0/gtk.css` (Make backups if the file already exists).
2. Enable the corresponding color preference in `gnome-tweaks` and `gnome-control-center`. [e.g Dark for dark color themes.]
3. Create a symbolic link to the gtk-3.0 folder: `ln -s ~/.config/gtk-4.0/gtk.css ~/.config/gtk-3.0/gtk.css`
4. If you use flatpak apps, run:

```bash
sudo flatpak override --filesystem=xdg-config/gtk-3.0 && sudo flatpak override --filesystem=xdg-config/gtk-4.0
```

5. Restart any open applications or log out and in again.
  
<div align="center">

## Available themes
| Color theme | Info / Screenshot | Submitted by |
|:------------|:------------------|:-------------|
| [Dracula](https://github.com/lassekongo83/adw-colors/tree/main/themes/dracula/gtk.css) | ![dracula](/themes/dracula/dracula.png?raw=true) |
| [Nord](https://github.com/lassekongo83/adw-colors/tree/main/themes/nord/gtk.css) | ![nord](/themes/nord/nord.png?raw=true) 
| [Peninsula-dark](https://github.com/lassekongo83/adw-colors/tree/main/themes/Peninsula-dark/gtk.css) | ![Peninsula-dark](/themes/Peninsula-dark/peninsula-dark.png?raw=true) |
[Gruvbox-dark](https://github.com/lassekongo83/adw-colors/blob/main/themes/gruvbox-dark/gtk.css) | ![gruvbox-dark](/themes/gruvbox-dark/gruvbox-dark.png?raw=true) | [WryOpussum](https://github.com/WryOpussum) |
| [Solarized](https://github.com/lassekongo83/adw-colors/blob/main/themes/solarized/gtk.css) | ![solarized](/themes/solarized/solarized.png?raw=true) | [davidphilipbarr](https://github.com/davidphilipbarr) |
| [Solarized-dark](https://github.com/lassekongo83/adw-colors/blob/main/themes/solarized-dark/gtk.css) | ![solarized](/themes/solarized-dark/solarized-dark.png?raw=true) | [davidphilipbarr](https://github.com/davidphilipbarr) |
| [adw-hc-dark](https://github.com/lassekongo83/adw-colors/blob/main/themes/adw-hc-dark/gtk.css) | A slightly higher contrast libadwaita dark theme. [Screenshot](/themes/adw-hc-dark/screenshot.png?raw=true). |
| [adw-hc-light](https://github.com/lassekongo83/adw-colors/blob/main/themes/adw-hc-light/gtk.css) | A slightly higher contrast libadwaita light theme. [Screenshot](/themes/adw-hc-light/screenshot.png?raw=true). |

</div>

