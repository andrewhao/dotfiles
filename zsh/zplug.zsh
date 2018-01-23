# Due to a conflict with hub being aliased to git, we unalias it first...
unalias git

# Then we load ZPlug, which checks the Git version...
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# And we restore the git alias
source $HOME/.dotfiles/git/aliases.zsh

# List of ZPlug plugins.
# ----------------------
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
