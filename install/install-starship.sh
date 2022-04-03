if ! command -v starship &> /dev/null
then
  curl -sS https://starship.rs/install.sh | sh
  mkdir -p ~/.config && touch ~/.config/starship.toml
fi
