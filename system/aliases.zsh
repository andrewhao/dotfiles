# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# fd is a nicer find
# https://github.com/sharkdp/fd
if $(fd &>/dev/null)
then
  alias find="fd"
fi

fkillport() {
    local pid 

    pid=$(echo `lsof -P -i -sTCP:LISTEN | grep LISTEN | fzf -m $FZF_COMPLETION_PTS` | tr -s '[:space:]' | cut -d' ' -f2)

    if [ "x$pid" != "x" ]
    then
        echo $pid | xargs kill -${1:-9}
    fi  
}
