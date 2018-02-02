#!/bin/sh

if [ ! -d ~/.spacemacs.d ]
then
  if [ ! -L ~/.spacemacs.d ]
  then
    echo "This assumes you have already run 'brew bundle'!"
    echo "Installing spacemacs..."
    git clone https://github.com/syl20bnr/spacemacs ~/.spacemacs.d
    echo "Linking emacs"
    brew linkapps emacs-plus
  fi
fi
echo "Done!"
