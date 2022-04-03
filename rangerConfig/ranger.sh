if [[ "$EDITOR"=="/usr/local/bin/nvim" ]];
then
  echo 'export EDITOR=$(which nvim)' >> $HOME/.zshrc
fi

if [[ "$RANGER_LOAD_DEFAULT_RC"=="false" ]];
then
  echo 'export RANGER_LOAD_DEFAULT_RC=false' >> $HOME/.zshrc
fi
