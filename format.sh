#!/usr/bin/env bash

FILE=words.txt

if ! [[ -e $FILE ]]; then
    echo "File $FILE does not exist" >&2
    exit 1
fi

format_file() {
    sed -i -e 's/, /,\n/g' "$FILE"
}

sort_file() {
    sort --ignore-case --output="$FILE" "$FILE"
}

format_file
sort_file