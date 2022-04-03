mypath="$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"

apt update
apt -y upgrade

# uninstall
source ${mypath}/install/uninstall.sh

# install configuration
source ${mypath}/install/install-apt.sh
source ${mypath}/install/install-zsh.sh
source ${mypath}/install/install-ranger.sh
source ${mypath}/install/install-rust.sh
source ${mypath}/install/install-docker.sh
source ${mypath}/install/install-zinit.sh
source ${mypath}/install/install-starship.sh

# zsh configuration
cat ${mypath}/zshConfig/zsh-config.sh >> $HOME/.zshrc
cat ${mypath}/zshConfig/zsh-alias.sh >> $HOME/.zshrc

# git configuration
ln -snf "${mypath}/gitConfig/gitconfig" $HOME/.gitconfig

# ranger configuration
ln -snf "${mypath}/rangerConfig/rc.conf" "${HOME}/.config/ranger/rc.conf"
ln -snf "${mypath}/rangerConfig/rifile.conf" "${HOME}/.config/ranger/rifile.conf"
source ${mypath}/rangerConfig/ranger.sh

# neovim configuration
source ${mypath}/nvimConfig/nvim-install.sh

# starship configuration
cp -f starshipConfig/starship.toml $HOME/.config/starship.toml


source $HOME/.zshrc
