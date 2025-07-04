#! /bin/sh

# Functions for the install script

# Get script directory
get_script_dir() {
  dirname -- "$(readlink -f -- "$0")"
}

# Set up global variables
setup_variables() {
  gtk3_file="$HOME/.config/gtk-3.0/gtk.css"
  gtk4_file="$HOME/.config/gtk-4.0/gtk.css"
  gtk3_assets="$HOME/.config/gtk-3.0/assets"
  gtk4_assets="$HOME/.config/gtk-4.0/assets"
  backup_number=$(date +%s)
}

# Check if gsettings command exists
check_gsettings() {
  if ! command -v gsettings >/dev/null; then
    printf "\e[31mError:\e[0m gsettings command not found. Install dconf.\n"
    exit 1
  fi
}

# Ensure GTK_THEME is not set
check_gtk_theme_var() {
  if [ -n "${GTK_THEME}" ]; then
    printf "\e[31mError:\e[0m GTK_THEME environment variable is set. Please remove it by running:\n"
    printf "  unset GTK_THEME  # Temporarily for this session\n"
    printf "  nano ~/.bashrc   # Remove it permanently from your shell configuration\n"
    printf "  sudo nano /etc/environment  # Remove system-wide setting\n"
    printf "  Setting the GTK_THEME environment variable is not recommended. It can interfere with these themes. It's only meant to be used for developing purposes.\n"
    exit 1
  fi
}

# Check if adw-gtk3 is installed
check_adw_gtk3_installed() {
  if [ -d "$HOME/.local/share/themes/adw-gtk3" ] || [ -d "$HOME/.local/share/themes/adw-gtk3-dark" ]; then
    true
  elif [ -d "$HOME/.themes/adw-gtk3" ] || [ -d "$HOME/.themes/adw-gtk3-dark" ]; then
    printf "\e[33mWarning:\e[0m Unless you use a GTK2 theme you should install adw-gtk3 in ~/.local/share/themes instead of ~/.themes.\n"
    true
  elif [ -d "/usr/share/themes/adw-gtk3" ] || [ -d "/usr/share/themes/adw-gtk3-dark" ]; then
    true
  else
    printf "\e[31mError:\e[0m adw-gtk3 not installed. Download from: https://github.com/lassekongo83/adw-gtk3\n"
    exit 1
  fi
}

# Unlink previous styles
uninstall_old() {
  unlink "$HOME/.config/gtk-3.0/gtk.css" 2>/dev/null
  unlink "$HOME/.config/gtk-4.0/gtk.css" 2>/dev/null
  unlink "$HOME/.config/gtk-3.0/assets" 2>/dev/null
  unlink "$HOME/.config/gtk-4.0/assets" 2>/dev/null
  unlink "$HOME/.config/gtk-3.0/titlebutton-traffic-gtk3-dark.css" 2>/dev/null
  unlink "$HOME/.config/gtk-4.0/titlebutton-traffic-gtk4-dark.css" 2>/dev/null
  unlink "$HOME/.config/gtk-3.0/titlebutton-traffic-gtk3-light.css" 2>/dev/null
  unlink "$HOME/.config/gtk-4.0/titlebutton-traffic-gtk4-light.css" 2>/dev/null
}

# Backup existing GTK config
create_backup() {
  for file in "${gtk3_file}" "${gtk4_file}"; do
    if [ -f "$file" ] && [ ! -L "$file" ]; then
      mv "$file" "$file.${backup_number}.bak"
      echo "Backup created at $file.${backup_number}.bak"
    else
      mkdir -p "$(dirname "$file")"
    fi
  done
}

apply_theme() {
  variant="$1"
  gtk_theme="$2"
  color_scheme="$3"
  css_suffix="$4"

  create_backup
  uninstall_old

  printf "Setting %s theme...\n" "$variant"
  ln -s "${theme_dir}/gtk3-${css_suffix}.css" "${gtk3_file}" || {
    printf "Error creating symlink for gtk3 %s theme\n" "$variant"
    exit 1
  }
  ln -s "${theme_dir}/gtk4-${css_suffix}.css" "${gtk4_file}" || {
    printf "Error creating symlink for gtk4 %s theme\n" "$variant"
    exit 1
  }

  # Link assets if present
  theme_assets="${theme_dir}/assets"
  if [ -d "$theme_assets" ]; then
    ln -s "$theme_assets" "$gtk3_assets" || {
      printf "Error linking assets to %s\n" "$gtk3_assets"
      exit 1
    }
    ln -s "$theme_assets" "$gtk4_assets" || {
      printf "Error linking assets to %s\n" "$gtk4_assets"
      exit 1
    }
  fi

  # Apply theme settings
  gsettings set org.gnome.desktop.interface gtk-theme "$gtk_theme"
  gsettings set org.gnome.desktop.interface color-scheme "$color_scheme"

  printf "Theme installed. Restart GTK applications or relog if needed.\n"
}

apply_theme_titlebutton() {
  variant="$1"
  gtk_theme="$2"
  color_scheme="$3"
  css_suffix="$4"

  create_backup
  uninstall_old

  printf "Setting %s theme...\n" "$variant"
  ln -s "${theme_dir}/titlebutton-traffic-gtk3-${css_suffix}.css" "${gtk3_file}" || {
    printf "Error creating symlink for gtk3 %s theme\n" "$variant"
    exit 1
  }
  ln -s "${theme_dir}/titlebutton-traffic-gtk4-${css_suffix}.css" "${gtk4_file}" || {
    printf "Error creating symlink for gtk4 %s theme\n" "$variant"
    exit 1
  }

  # Link assets if present
  theme_assets="${theme_dir}/assets"
  if [ -d "$theme_assets" ]; then
    ln -s "$theme_assets" "$gtk3_assets" || {
      printf "Error linking assets to %s\n" "$gtk3_assets"
      exit 1
    }
    ln -s "$theme_assets" "$gtk4_assets" || {
      printf "Error linking assets to %s\n" "$gtk4_assets"
      exit 1
    }
  fi

  # Apply theme settings
  gsettings set org.gnome.desktop.interface gtk-theme "$gtk_theme"
  gsettings set org.gnome.desktop.interface color-scheme "$color_scheme"

  printf "Theme installed. Restart GTK applications or relog if needed.\n"
}

# Auto-detect theme variants
auto_apply_variant() {
  theme_dir=$1
  [ -d "$theme_dir" ] || {
    printf "\e[31mError:\e[0m theme_dir '%s' not found\n" "$theme_dir" >&2
    exit 1
  }

  i=0

  # 1) Light
  if [ -f "$theme_dir/gtk3-light.css" ] && [ -f "$theme_dir/gtk4-light.css" ]; then
    i=$((i+1))
    printf " %d) Light theme\n" "$i"
    eval "fn_$i=apply_theme"
    eval "variant_$i=light"
    eval "gtk_theme_$i=adw-gtk3"
    eval "color_scheme_$i=default"
    eval "suffix_$i=light"
  fi

  # 2) Dark
  if [ -f "$theme_dir/gtk3-dark.css" ] && [ -f "$theme_dir/gtk4-dark.css" ]; then
    i=$((i+1))
    printf " %d) Dark theme\n" "$i"
    eval "fn_$i=apply_theme"
    eval "variant_$i=dark"
    eval "gtk_theme_$i=adw-gtk3-dark"
    eval "color_scheme_$i=prefer-dark"
    eval "suffix_$i=dark"
  fi

  # 3) Light + traffic-light
  if [ -f "$theme_dir/titlebutton-traffic-gtk3-light.css" ] \
     && [ -f "$theme_dir/titlebutton-traffic-gtk4-light.css" ]; then
    i=$((i+1))
    printf " %d) Light + traffic-light titlebar buttons\n" "$i"
    eval "fn_$i=apply_theme_titlebutton"
    eval "variant_$i=light"
    eval "gtk_theme_$i=adw-gtk3"
    eval "color_scheme_$i=default"
    eval "suffix_$i=light"
  fi

  # 4) Dark + traffic-light
  if [ -f "$theme_dir/titlebutton-traffic-gtk3-dark.css" ] \
     && [ -f "$theme_dir/titlebutton-traffic-gtk4-dark.css" ]; then
    i=$((i+1))
    printf " %d) Dark + traffic-light titlebar buttons\n" "$i"
    eval "fn_$i=apply_theme_titlebutton"
    eval "variant_$i=dark"
    eval "gtk_theme_$i=adw-gtk3-dark"
    eval "color_scheme_$i=prefer-dark"
    eval "suffix_$i=dark"
  fi

  [ "$i" -gt 0 ] || {
    printf "\e[31mError:\e[0m no variants detected in '%s'\n" "$theme_dir" >&2
    exit 1
  }

  # prompt
  printf "Enter choice [1-%d]: " "$i"
  read -r choice

  # validate numeric
  case $choice in
    ''|*[!0-9]*|0) 
      printf "\e[31mError:\e[0m invalid choice\n" >&2
      exit 1
    ;;
  esac
  if [ "$choice" -gt "$i" ]; then
    printf "\e[31mError:\e[0m choice out of range\n" >&2
    exit 1
  fi

  # retrieve the chosen parameters
  eval fn=\$fn_"$choice"
  eval variant=\$variant_"$choice"
  eval gtk_theme=\$gtk_theme_"$choice"
  eval color_scheme=\$color_scheme_"$choice"
  eval suffix=\$suffix_"$choice"

  # dispatch
  $fn "$variant" "$gtk_theme" "$color_scheme" "$suffix"
}

