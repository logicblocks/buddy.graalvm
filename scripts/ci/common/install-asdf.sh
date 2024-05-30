#!/usr/bin/env bash

[ -n "$DEBUG" ] && set -x
set -e
set -o pipefail

apt-get update
apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  git

if [ ! -d ~/.asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0

fi

# shellcheck disable=SC2016
echo '. "$HOME/.asdf/asdf.sh"' >> "$BASH_ENV"
