#!/bin/sh

script_dir=$(dirname -- "$(realpath -- "$0")")
gtk3_file="$HOME/.config/gtk-3.0/gtk.css"
gtk4_file="$HOME/.config/gtk-4.0/gtk.css"
backup_number=$(date +%s)

WARNING_TEXT="This program will overwrite (but create backups) of the config files ~/.config/gtk-3.0/gtk.css and ~/.config/gtk-4.0/gtk.css if they exist. Are you sure you want to proceed?"

echo "$WARNING_TEXT"
read -p "Proceed? (y/n) " -n 1 -r

case "$REPLY" in
  [Yy]* ) echo "Continuing...";;
  [Nn]* ) echo "Aborting."; exit 1;;
  * ) echo "Invalid input. Please enter y or n.";;
esac

# Define color codes
BLUE="\e[34m"
TEAL="\e[36m"
GREEN="\e[32m"
YELLOW="\e[33m"
ORANGE="\e[38;5;208m"  # Using 256-color mode for orange
RED="\e[31m"
PINK="\e[38;5;213m"    # Using 256-color mode for pink
PURPLE="\e[35m"
SLATE="\e[38;5;245m"  # Using 256-color mode for slate
RESET="\e[0m"

# Check for GTK4
if ! command -v pkg-config >/dev/null || ! pkg-config --modversion gtk4 >/dev/null; then
  echo "Error: GTK4 is not installed or not found in PATH."
  exit 1
fi

# Check GTK4 version
gtk_version=$(pkg-config --modversion gtk4)
required_version="4.16.0"

# Compare versions
if [ "$(printf '%s\n' "$required_version" "$gtk_version" | sort -V | head -n1)" = "$required_version" ]; then
  echo "Your GTK4 version is $gtk_version. Proceeding..."
else
  echo "Error: Your GTK4 version ($gtk_version) needs to be 4.16.0 or newer."
  exit 1
fi

# Check if gsettings command exists
if ! command -v gsettings >/dev/null; then
  echo "Error: gsettings command not found. Install dconf or dconf-editor/dconf-tools."
  exit 1
fi

# Define colors and their corresponding codes
colors=("blue" "teal" "green" "yellow" "orange" "red" "pink" "purple" "slate")
color_codes=("$BLUE" "$TEAL" "$GREEN" "$YELLOW" "$ORANGE" "$RED" "$PINK" "$PURPLE" "$SLATE")

# Display the menu
echo "Available colors:"
i=1
for color in "${colors[@]}"; do
  echo -e "${color_codes[i-1]}$i. $color${RESET}"
  i=$((i + 1))
done

read -p "Choose your accent color by typing a number between 1-9 and press enter (choose nothing to cancel): " choice

if [ "$choice" -ge 1 ] && [ "$choice" -le "${#colors[@]}" ]; then
  selected_color="${colors[$((choice - 1))]}"
  echo -e "You selected: ${color_codes[$((choice - 1))]}$selected_color${RESET}"

  # Set the accent color with gsettings for libadwaita and gnome-shell
  gsettings set org.gnome.desktop.interface accent-color "$selected_color"

  # Procced to add the gtk.css files to set global accent color for gtk3 and gtk4
  # Note: only gtk3 themes that use gtk named colors support accent colors
  # This script will create backups if gtk.css files exist and create them if they do not
  if [ -f "$gtk4_file" ]; then
    cp "$gtk4_file" "${gtk4_file}.${backup_number}.bak"
    echo "Backup created at: ${gtk4_file}.${backup_number}.bak"
  else
    mkdir -p ~/.config/gtk-4.0/ && touch ~/.config/gtk-4.0/gtk.css
  fi

  if [ -f "$gtk3_file" ]; then
    cp "$gtk3_file" "${gtk3_file}.${backup_number}.bak"
    echo "Backup created at: ${gtk3_file}.${backup_number}.bak"
  else
    mkdir -p ~/.config/gtk-3.0/ && touch ~/.config/gtk-3.0/gtk.css
  fi

  # Add the accent color
  # Write the CSS rules to the gtk.css files
  {
    echo ":root {"
    echo "  --accent-color: var(--accent-bg-color);"
    echo "  --accent-bg-color: var(--accent-$selected_color);"
    echo "}"
  } > "$gtk4_file"

  echo "Updated $gtk4_file with new accent color settings."

  {
    echo "@define-color accent_blue #3584e4;"
    echo "@define-color accent_teal #2190a4;"
    echo "@define-color accent_green #3a944a;"
    echo "@define-color accent_yellow #c88800;"
    echo "@define-color accent_orange #ed5b00;"
    echo "@define-color accent_red #e62d42;"
    echo "@define-color accent_pink #d56199;"
    echo "@define-color accent_purple #9141ac;"
    echo "@define-color accent_slate #6f8396;"
    echo "@define-color accent_bg_color @accent_$selected_color;"
    echo "@define-color accent_color @accent_bg_color;"
  } > "$gtk3_file"

  echo "Updated $gtk3_file with new accent color settings."
  echo "Accent color updated. Some applications may require a restart for changes to take effect."

else
  echo "Invalid choice. Please run the script again."
  exit 1
fi
