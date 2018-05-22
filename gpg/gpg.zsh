eval $( gpg-agent --daemon -q &>/dev/null)
GPG_TTY=$(tty)
export GPG_TTY
