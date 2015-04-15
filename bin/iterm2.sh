#!/bin/sh

# see: https://github.com/fnichol/macosx-iterm2-settings

set -ex

PLIST_PATH="${HOME}/Library/Preferences/com.googlecode.iterm2.plist"
REPO_PATH="./com.googlecode.iterm2.plist"
OPERATION=""

[ -f "$PLIST_PATH" ] || { echo "$PLIST_PATH not found." 2>&1; exit 1; }

usage() {
    echo "sh ./bin/$(basename "$0") {-r|-b} [-h]"
}

while getopts :rbh opt_parser; do
    case "$opt_parser" in
        r)
            OPERATION="RESTORE"
            ;;
        b)
            OPERATION="BACKUP"
            ;;
        h)
            usage
            exit 0
            ;;
        *)
            usage
            exit 1
            ;;
    esac
done

if [ "$OPERATION" = "RESTORE" ]; then
    plutil -convert binary1 -o "$PLIST_PATH" "$REPO_PATH"
elif [ "$OPERATION" = "BACKUP" ]; then
    [ -f "$REPO_PATH" ] || { echo "$REPO_PATH not found." 2>&1; exit 1; }
    plutil -convert xml1 -o - "$PLIST_PATH" | xmllint --format - > "$REPO_PATH"
else
    usage
    exit 1
fi


