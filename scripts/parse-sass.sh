#!/bin/bash

if ! command -v sass &> /dev/null; then
  echo "dart-sass needs to be installed to generate the css."
  exit 1
fi

SASSC_OPT="--style=expanded --no-source-map"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$SCRIPT_DIR/../src/sass"
DEST_DIR="$SCRIPT_DIR/../themes"

# Auto-discover theme directories, excluding 'abstracts'
themes=()
for dir in "$SRC_DIR"/*/; do
  theme=$(basename "$dir")
  if [[ "$theme" != "abstracts" ]]; then
    themes+=("$theme")
  fi
done

variants=("gtk3-light" "gtk3-dark" "gtk4-light" "gtk4-dark")
buttons=("titlebutton-traffic-gtk3-light" "titlebutton-traffic-gtk4-light" "titlebutton-traffic-gtk3-dark" "titlebutton-traffic-gtk4-dark")

echo "Generating the css..."

for theme in "${themes[@]}"; do
  for target in "${variants[@]}" "${buttons[@]}"; do
    input="$SRC_DIR/$theme/$target.scss"
    output_dir="$DEST_DIR/$theme"
    output="$output_dir/$target.css"
    if [[ -f "$input" ]]; then
      mkdir -p "$output_dir"
      echo "Compiling $input → $output"
      sass $SASSC_OPT "$input" "$output"
    else
      echo "Skipping $input (file not found)"
    fi
  done
done
