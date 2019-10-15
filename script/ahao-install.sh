#!/usr/bin/env bash
#
# Postinstall scripts

echo "Linking nvim"
mkdir -p ~/.config
ln -s ~/.nvim ~/.config/nvim
echo "Done."

echo "Changing default shell"
chsh -s /bin/zsh
echo "Done."

echo "Installing vim-plug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done."

echo "Installing App Store packages..."
# Slack... prefer to install this one from web site
# mas install 803453959
mas install 419330170
mas install 1333542190
mas install 497799835
# Amphetamine
mas install 937984704
echo "Done."
