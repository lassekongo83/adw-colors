#!/bin/bash

INKSCAPE="flatpak run org.inkscape.Inkscape"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_BASE="$SCRIPT_DIR/../src/assets"
DEST_BASE="$SCRIPT_DIR/../themes"

# Loop through theme directories inside src/assets (excluding non-directories)
for theme_dir in "$SRC_BASE"/*/; do
  theme=$(basename "$theme_dir")
  svg="$theme_dir/assets.svg"
  index="$theme_dir/assets.txt"
  output_dir="$DEST_BASE/$theme/assets"

  # Check if required files exist
  if [[ ! -f "$svg" || ! -f "$index" ]]; then
    echo "Skipping $theme (missing assets.svg or assets.txt)"
    continue
  fi

  mkdir -p "$output_dir"

  echo
  echo "Rendering assets for theme: $theme"

  while IFS= read -r id || [[ -n "$id" ]]; do
    [[ -z "$id" ]] && continue  # Skip empty lines

    if [[ -f "$output_dir/$id.png" ]]; then
      echo "$output_dir/$id.png exists."
    else
      echo "Rendering $output_dir/$id.png"
      $INKSCAPE --export-id="$id" \
                --export-id-only \
                --export-filename="$output_dir/$id.png" "$svg" >/dev/null
    fi

    if [[ -f "$output_dir/${id}@2.png" ]]; then
      echo "$output_dir/${id}@2.png exists."
    else
      echo "Rendering $output_dir/${id}@2.png"
      $INKSCAPE --export-id="$id" \
                --export-dpi=180 \
                --export-id-only \
                --export-filename="$output_dir/${id}@2.png" "$svg" >/dev/null
    fi
  done < "$index"
done
