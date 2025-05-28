#!/bin/sh

sketchybar --set "$NAME" label="$(sketchybar: /run/current-system/sw/bin/sketchybar list-workspaces --focused)"
