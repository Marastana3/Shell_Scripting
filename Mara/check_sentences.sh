#!/bin/bash

while read -r line; do
    if [[ "$line" =~ ^[[:upper:]][[:lower:][:digit:][:space:],]*\.$ &&
        ! "$line" =~ [[:space:]]and,[[:space:]] && ! "$line" =~ n[ob] ]]; then
        echo "$line"
    fi
done