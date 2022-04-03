
zinit ice depth"1" # git clone depth

zinit for \
    light-mode  zsh-users/zsh-autosuggestions \
    light-mode  zdharma-continuum/fast-syntax-highlighting \
                zdharma-continuum/history-search-multi-word

zinit ice from"gh-r" as"program"
zinit light junegunn/fzf

zinit ice from"gh-r" as"program" mv"docker* -> docker-compose" bpick"*linux*"
zinit load docker/compose

zinit load agkozak/zsh-z

zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

echo 'eval "$(starship init zsh)"' >> $HOME/.zshrc
