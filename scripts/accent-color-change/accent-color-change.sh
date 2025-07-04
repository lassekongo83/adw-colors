#!/bin/sh
# This program is licensed under GPLv3
# https://www.gnu.org/licenses/gpl-3.0.html

backup_number=$(date +%s)
gtk_files="$HOME/.config/gtk-3.0/gtk.css $HOME/.config/gtk-4.0/gtk.css"

echo "This program will overwrite any existing gtk.css configuration files located in ~/.config/gtk-3.0/gtk.css and ~/.config/gtk-4.0/gtk.css, but it will create backups of these files. Are you sure you want to proceed?"
echo "Proceed? (y/n)"
read -r REPLY

case "$REPLY" in
  [Yy]*) echo "Continuing...";;
  [Nn]*) echo "Aborting."; exit 1;;
  *) echo "Invalid input."; exit 1;;
esac

# Ensure gsettings command exists
command -v gsettings >/dev/null || { echo "Error: gsettings not found."; exit 1; }

# List available colors
colors="blue teal green yellow orange red pink purple slate"
color_codes="\e[34m \e[36m \e[32m \e[33m \e[38;5;208m \e[31m \e[38;5;213m \e[35m \e[38;5;245m"
RESET="\e[0m"

i=1
for color in $colors; do
  color_code=$(echo "$color_codes" | cut -d' ' -f"$i")
  printf "%b%d. %s%b\n" "$color_code" "$i" "$color" "$RESET"
  i=$((i + 1))
done

echo "Choose a color (1-9):"
read -r choice

if [ "$choice" -ge 1 ] && [ "$choice" -le 9 ]; then
  selected_color=$(echo "$colors" | cut -d' ' -f"$choice")

  # Map color names to escape codes using a case statement
  case "$selected_color" in
    blue) COLOR="\e[34m" ;;
    teal) COLOR="\e[36m" ;;
    green) COLOR="\e[32m" ;;
    yellow) COLOR="\e[33m" ;;
    orange) COLOR="\e[38;5;208m" ;;
    red) COLOR="\e[31m" ;;
    pink) COLOR="\e[38;5;213m" ;;
    purple) COLOR="\e[35m" ;;
    slate) COLOR="\e[38;5;245m" ;;
    *) echo "Invalid color selection"; exit 1 ;;
  esac

  printf "%bYou selected: %s%b\n" "$COLOR" "$selected_color" "\e[0m"

  # Apply accent color with gsettings
  gsettings set org.gnome.desktop.interface accent-color "$selected_color"

  # unlink any previous themes
  unlink "$HOME/.config/gtk-3.0/gtk.css" 2>/dev/null
  unlink "$HOME/.config/gtk-4.0/gtk.css" 2>/dev/null
  unlink "$HOME/.config/gtk-3.0/assets" 2>/dev/null
  unlink "$HOME/.config/gtk-4.0/assets" 2>/dev/null

  # Handle backup and file creation in a loop
  for file in $gtk_files; do
    [ -f "$file" ] && cp "$file" "${file}.${backup_number}.bak" && echo "Backup created: ${file}.${backup_number}.bak"
    mkdir -p "$(dirname -- "$file")" && touch "$file"
  done

  # Write styles
  echo ":root { --accent-bg-color: var(--accent-$selected_color); }" > "$HOME/.config/gtk-4.0/gtk.css"
  cat <<EOF > "$HOME/.config/gtk-3.0/gtk.css"
@define-color accent_blue #3584e4;
@define-color accent_teal #2190a4;
@define-color accent_green #3a944a;
@define-color accent_yellow #c88800;
@define-color accent_orange #ed5b00;
@define-color accent_red #e62d42;
@define-color accent_pink #d56199;
@define-color accent_purple #9141ac;
@define-color accent_slate #6f8396;
@define-color accent_bg_color @accent_$selected_color;
EOF

  echo "Accent color updated! Restart apps for changes to take effect."

else
  echo "Invalid choice. Try again."
  exit 1
fi

