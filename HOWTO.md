## How to customize

Libadwaita and adw-gtk3 can be customized with GTK named colors.

Here's an example on how to change the accent colors in libadwaita and the adw-gtk3 theme.

1. Create or modify `~/.config/gtk-4.0/gtk.css` *(Make backups if `~/.config/gtk-4.0/gtk.css` and `~/.config/gtk-3.0/gtk.css` exists).*
2. Add:
```css
/* Replace #E95420 with any css color value */
@define-color accent_bg_color #E95420;
@define-color accent_color @accent_bg_color;
```
3. Create a symbolic link between the css config files: `ln -s ~/.config/gtk-4.0/gtk.css ~/.config/gtk-3.0/gtk.css`
4. Save the file and restart any open applications to see the changes. (Or relog).
5. Flatpak apps will need a permission setting:
```bash
sudo flatpak override --filesystem=xdg-config/gtk-3.0 && sudo flatpak override --filesystem=xdg-config/gtk-4.0
```

If you don't use GNOME you'll have to make sure that `~/.config/gtk-3.0/gtk.css` and `~/.config/gtk-4.0/gtk.css` aren't being automatically created or overwritten by your DE/WM.

*These colors were created for GTK3/GTK4 applications. The gnome-shell theme is not affected and apps using other toolkits aren't supported. Other toolkits may have documentation on theme creation.*

### Supported named colors

Libadwaita named colors - https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/named-colors.html

Adw-gtk3 currently only supports these named colors:

```
window_bg_color          # The main background color used on GtkWindow
window_fg_color          # The main foreground text color
view_bg_color            # A secondary background color used in icon views, text fields, etc
view_fg_color            # Secondary foreground text color
accent_bg_color          # Something colorful!
accent_fg_color          # The text over the accent color
accent_color             # Can be the same as accent_bg_color, but maybe with a slightly brighter tone
headerbar_bg_color       # The headerbar background
headerbar_backdrop_color # The headerbar backdrop state background
headerbar_fg_color       # The headerbar foreground text color
card_bg_color            # The background color of lists
card_fg_color            # The text color on libhandy lists
popover_bg_color         # The background color of popovers and menus
popover_fg_color         # The text color on popovers

# Warning, error, success colors, etc. fg_colors not 100% implemented.
warning_bg_color
warning_fg_color
warning_color
error_bg_color
error_fg_color
error_color
success_bg_color
success_fg_color
success_color
destructive_bg_color
destructive_fg_color
destructive_color
```

Plus the colors from the [theme's palette](https://github.com/lassekongo83/adw-gtk3/blob/main/gtk/src/adw-gtk3/gtk-3.0/_palette.scss).

*Keep in mind that GTK4 use a lot of transparent widgets, adw-gtk3 doesn't. GTK3 can be CPU heavy with too much transparency. If you compare a libadwaita app with a GTK3 app you may notice that some colors aren't exactly matched. (It should still be close enough.)*
