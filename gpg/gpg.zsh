eval $( gpg-agent --daemon -q )
GPG_TTY=$(tty)
export GPG_TTY
