#!/bin/sh

if [ "$GROUP_ID" = "" ]; then GROUP_ID=$(id -g "$GROUP"); fi
if [ "$GROUP_ID" != "$(id -g "$GROUP")" ]; then groupmod --gid "$GROUP_ID" "$GROUP"; fi
if [ "$USER_ID" = "" ]; then USER_ID=$(id -u "$USER"); fi
if [ "$USER_ID" != "$(id -u "$USER")" ]; then usermod --uid "$USER_ID" "$USER"; fi

exec "$@"