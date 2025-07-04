#!/bin/sh

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

# shellcheck source=./functions.sh
. "$SCRIPT_DIR/functions.sh"

uninstall_old

