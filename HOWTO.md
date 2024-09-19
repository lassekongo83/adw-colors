## How to customize

Libadwaita and adw-gtk3 can be customized with GTK named colors.

Here's an example on how to change the accent colors in adw-gtk3 and libadwaita.

### For GTK3 apps

1. Create or modify `~/.config/gtk-3.0/gtk.css` *(Make a backup of the file if it exists).*
2. Add:
```css
/* Replace #E95420 with any css color value */
@define-color accent_bg_color #E95420;
@define-color accent_color @accent_bg_color;
```
3. Save the file and restart any open applications to see the changes. (Or relog).
4. Flatpak apps will need a permission setting:
```bash
sudo flatpak override --filesystem=xdg-config/gtk-3.0
```

### For GTK4 apps (as of GTK 4.16+)

1. Create or modify `~/.config/gtk-4.0(gtk.css` *(Make a backup of the file if it exists).*
2. Add:
```css
:root {
  --accent-bg-color: #E95420; /* Note: The accent color may be overridden if you've changed the accent color in gnome-settings. */
}
```
3. Save the file and restart any open applications to see the changes. (Or relog).
4. Flatpak apps will need a permission setting:
```bash
sudo flatpak override --filesystem=xdg-config/gtk-4.0
```

If you don't use GNOME you'll have to make sure that `~/.config/gtk-3.0/gtk.css` and `~/.config/gtk-4.0/gtk.css` aren't being automatically created or overwritten by your DE/WM.

*These colors were created for GTK3/GTK4 applications. The gnome-shell theme is not affected and apps using other toolkits aren't supported. Other toolkits may have documentation on theme creation.*

### Supported named colors

* Libadwaita named colors - https://gnome.pages.gitlab.gnome.org/libadwaita/doc/main/named-colors.html
* Libadwaita css variables - https://gitlab.gnome.org/GNOME/libadwaita/-/blob/main/src/stylesheet/_colors.scss

Adw-gtk3 currently only supports these named colors:

```
window_bg_color          # The main background color used on GtkWindow
window_fg_color          # The main foreground text color
view_bg_color            # A secondary background color used in icon views, text fields, etc
view_fg_color            # Secondary foreground text color
accent_bg_color          # Color to indicate that a widget is important, interactive, or currently active
accent_fg_color          # Color for text over widgets using accent_bg_color
accent_color             # Mostly used for text labels. Can be the same as accent_bg_color
headerbar_bg_color       # The headerbar background
headerbar_fg_color       # The headerbar foreground text color
headerbar_backdrop_color # The headerbar backdrop state background
headerbar_border_color   # Currently not used in adw-gtk3
headerbar_shade_color    # The bottom border of the headerbar
card_bg_color            # The background color of lists
card_fg_color            # The text color on libhandy lists
card_shade_color         # List borders
popover_bg_color         # The background color of popovers and menus
popover_fg_color         # The text color on popovers
dialog_bg_color          # The background color of message dialogs
dialog_fg_color          # The foreground color of message dialogs
sidebar_bg_color         # Sidebar background color
sidebar_fg_color         # Sidebar foreground color
sidebar_backdrop_color   # Sidebar backdrop background color
sidebar_shade_color      # Sidebar shade color

warning_bg_color         # Background for widgets and elements that show a warning
warning_fg_color         # Foreground for widgets and elements that show a warning
warning_color            # Warning text label
error_bg_color           # Background for widgets and elements that show an error
error_fg_color           # Foreground for widgets and elements that show an error
error_color              # Error text label
success_bg_color         # Background for widgets and elements that show a successful action
success_fg_color         # Foreground for widgets and elements that show a successful action
success_color            # Success text label
destructive_bg_color     # The destructive color indicates a dangerous action, such as deleting a file
destructive_fg_color     # Destructive foreground color
destructive_color        # Destructive text label

# Custom colors (GTK3 only)
panel_bg_color           # Background for XFCE4 panel
panel_fg_color           # Foreground for XFCE4 panel
incognito_bg_color       # adw-gtk3 only: For epiphany (Gnome web gtk3 version) incognito headerbar
```

Plus the colors from the [theme's palette](https://github.com/lassekongo83/adw-gtk3/blob/main/gtk/src/adw-gtk3/gtk-3.0/_palette.scss).

*Keep in mind that GTK4 use a lot of transparent widgets, adw-gtk3 doesn't. GTK3 can be CPU heavy with too much transparency. If you compare a libadwaita app with a GTK3 app you may notice that some colors aren't exactly matched. (It should still be close enough.)*
