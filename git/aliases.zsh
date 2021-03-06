# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gpl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gst='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gpo='git pull origin'
alias gfo='git fetch origin'
alias gro='git rebase origin'
alias grebase='git fetch origin && git rebase origin/master'
alias gdel='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'
alias gpo='git pull origin'
alias grubo='git diff origin/master --name-only | grep rb | xargs bundle exec rubocop'
