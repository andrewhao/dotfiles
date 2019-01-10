# holman does dotfiles

## dotfiles

Your dotfiles are how you personalize your system. These are mine.

I was a little tired of having long alias files and everything strewn about
(which is extremely common on other dotfiles projects, too). That led to this
project being much more topic-centric. I realized I could split a lot of things
up into the main areas I used (Ruby, git, system libraries, and so on), so I
structured the project accordingly.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read my post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## ahao foreward (install)

Set up Tmux:

    $ git clone https://github.com/tmux-plugins/tpm tmux.symlink/plugins/tpm

## Installation of these dotfiles:

Clone this repo and install with bootstrap command:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## ahao's addendum

### Install all extra Brew packages here.

    $ brew bundle

### vim plugins managed by Janus

    $ curl -L https://bit.ly/janus-bootstrap | bash

Note that actual Janus plugins are managed by these dotfiles, so after you install Janus, you will need to run this repository's `script/bootstrap` script to blow away the installed Janus folder.

### Run install script

    $ ./scripts/ahao-install.sh

### Change default shell

    $ chsh -s /bin/zsh

### Things that need manual installs

* [1Password 6](https://1password.com/downloads/) [link](https://app-updates.agilebits.com/download/OPM4)
* [Slack](https://slack.com/downloads/mac)

#### GPG

Import GPG key:

    $ gpg --import path/to/key.asc

Tell git to use it:

    $ git config --global user.signingkey KEY

