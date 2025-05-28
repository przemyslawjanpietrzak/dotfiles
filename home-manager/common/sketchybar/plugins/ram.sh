#!/bin/bash
# Fetch RAM usage as percentage (macOS)

RAM=$(memory_pressure | grep "System-wide memory free percentage:" | choose 4:)

sketchybar --set "$NAME" icon= label="${RAM}"
