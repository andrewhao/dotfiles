if [ -z "$SSH_AUTH_SOCK" ] ; then
  echo "Starting ssh-agent.."
  eval `ssh-agent -s`
  ssh-add
fi
