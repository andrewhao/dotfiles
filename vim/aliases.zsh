# We should almost always prefer neovim
if $(nvim -h &>/dev/null)
then
  alias vim="nvim"
fi
