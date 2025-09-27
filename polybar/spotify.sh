#!/bin/bash

artist=$(playerctl -p spotify metadata --format "{{ artist }}")
title=$(playerctl -p spotify metadata --format "{{ title }}")

# Insert Polybar color tags directly
echo "%{F#cb231f}$artist%{F-} - %{F#1DB954}$title%{F-}"
