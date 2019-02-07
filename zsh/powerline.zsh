export POWERLINE_PATH="`pip show powerline-status | grep Location | cut -d " " -f 2`/powerline"
# . $POWERLINE_PATH/bindings/tmux/powerline.conf
powerline-config tmux source
