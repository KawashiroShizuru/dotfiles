#!/bin/bash

case "$1" in
    file|files) thetype="$1" ;;
    *) exit 1 ;;
esac

tmpfile=$(mktemp)

kitty --title "lf-selection" sh -c "lf -selection-path $tmpfile"

if [ ! -s "$tmpfile" ]; then
    rm -f "$tmpfile"
    exit 0
fi

if [ "$thetype" == "file" ] && [ $(wc -l < "$tmpfile") -gt 1 ]; then
    notify-send -u critical "文件选择错误" "请只选择一个文件"
    rm -f "$tmpfile"
    exit 1
fi

cat "$tmpfile"
rm -f "$tmpfile"
