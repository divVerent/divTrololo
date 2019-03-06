#!/bin/sh

root="$HOME/.local/share/supertux2"

if ! [ -d "$root" ]; then
	echo >&2 "SuperTux hasn't run yet. Please start and quit SuperTux first"
	echo >&2 "to confirm the data location!"
	exit 1
fi

set -ex
mkdir -p "$root/levels/divTrololo"
bindfs --no-allow-other "$PWD/levels/divTrololo" "$root/levels/divTrololo"
