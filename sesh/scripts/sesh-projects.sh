#!/usr/bin/env bash

sesh list -z --icons |
while IFS= read -r line; do
    path="${line#* }"

    case "$path" in
        ~/Projects/*)
            rest="${path#~/Projects/}"
            [[ "$rest" != */* ]] && printf '%s\n' "$line"
            ;;
        ~/Documents/*)
            rest="${path#~/Documents/}"
            [[ "$rest" != */* ]] && printf '%s\n' "$line"
            ;;
    esac
done
