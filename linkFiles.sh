#!/bin/sh
## NAME: linkFiles

DOTFILEDIR=$HOME/dotfiles


if [ -d "$DOTFILEDIR" ]; then

  chmod go-rwx -R "$DOTFILEDIR"

  ## profile link
  ln -sfn "${DOTFILEDIR}"/profile "$HOME/.profile"
  
  ## bash link
  ln -sfn "${DOTFILEDIR}"/bash_profile"$HOME/.bash_profile"

  ## vim link
  ln -sfn "${DOTFILEDIR}"/vimrc "$HOME/.vimrc"

  ## screen link
  ln -sfn "${DOTFILEDIR}"/screenrc "$HOME"/.screenrc

else

 echo "clone dotfiles repo"

fi
