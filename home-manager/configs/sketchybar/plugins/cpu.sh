#!/bin/bash

sketchybar --set "$NAME" icon= label="$(top -l  2 | grep -E "^CPU" | tail -1 | awk '{ print $3 + $5"%" }')"
