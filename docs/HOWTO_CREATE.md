### Setup

Install `dart-sass` using either:

* Your distribution’s package manager if it's available.
* [Node.js](https://nodejs.org/) with `npm install -g sass`

<sub>Alternatively just directly edit the CSS files for simple changes.</sub>

### How to Create a Theme

You can use any theme in this repository as a template. To create a new theme, follow these steps:

1. Create a new theme directory in `src/sass`. From the repository's root directory, run: `mkdir -p src/sass/MY-THEME`
2. Copy the contents of an existing theme into the new directory.
3. Edit the main colors of your theme in `src/sass/MY-THEME/settings/_palette.scss`. This should be sufficient for most changes.
4. For further customization:
   * In `src/sass/MY-THEME/settings/_colors.scss`, you can define custom shades and color mixes as Sass variables.
   * In `src/sass/MY-THEME/_defaults.scss`, you can add custom named colors.
   * For a list of available default named colors, see:
      * GTK4: https://gitlab.gnome.org/GNOME/libadwaita/-/blob/main/src/stylesheet/_colors.scss
      * GTK3: https://github.com/lassekongo83/adw-gtk3/blob/main/src/sass/_defaults.scss
5. Once you've made your edits, compile the Sass by running `sh parse-sass.sh` in the `scripts` directory. Alternatively, you can use your preferred method for compiling Sass.
6. Your theme should now be listed when you run the installation script.

### More Tweaks

* The `src/sass/abstracts` directory stores our global settings, functions, and mixins. This directory contains only Sass code, with no direct CSS, and its contents are shared across all themes.
* Some themes include a `widgets` directory, which contains styles for specific GTK widgets. The `$toolkit` variable determines whether to style GTK3 or GTK4 widgets. Some themes may also have an `_index.scss` file in this directory, which forwards all widget styles to the main SCSS files. Keep this index file in mind, as you'll need to update it when adding custom widget files.
* When naming your main SCSS files, use the following conventions: `gtk3-light.scss`, `gtk4-light.scss`, `gtk3-dark.scss`, and `gtk4-dark.scss`. If your theme includes an option for traffic-light titlebar buttons, also include files like `titlebutton-traffic-gtk4-light.scss`, and so on. The install script will automatically detect these variants and any new themes added to the themes folder with identical naming conventions.
