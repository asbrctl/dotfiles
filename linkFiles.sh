#!/bin/sh
#FNAME: linkFiles

DOTFILEDIR=$HOME/dotfiles
DOTFILEENV=$HOME/dotfiles/env


if [ -d "$DOTFILEDIR" ]; then

  chmod go-rwx -R "$DOTFILEDIR"

  ## profile link
  ln -sfn "${DOTFILEENV}"/profile "$HOME/.profile"

  ## bash link
  ln -sfn "${DOTFILEENV}"/bash_profile "$HOME/.bash_profile"
  ln -sfn "${DOTFILEENV}"/bashrc "$HOME/.bashrc"
  ln -sfn "${DOTFILEENV}"/bash_aliases"$HOME/.bash_aliases"

  ## vim link
  ln -sfn "${DOTFILEDIR}"/vimrc "$HOME/.vimrc"

  ## screen link
  ln -sfn "${DOTFILEDIR}"/screenrc "$HOME"/.screenrc

  ## tmux link
  ln -sfn "${DOTFILEDIR}"/tmux.conf "$HOME"/.tmux.conf

else

 echo "clone dotfiles repo"

fi
