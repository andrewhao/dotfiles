#!/usr/bin/env bash

echo "Installing tmux..."
if [ ! -d "tmux.symlink" ]; then
  git clone https://github.com/tmux-plugins/tpm tmux.symlink/plugins/tpm
fi

