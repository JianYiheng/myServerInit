# apt install neovim and related pkgs
if command -v nvim &> /dev/null
then
  sudo apt-get -y install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
  git clone https://github.com/neovim/neovim
  make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo make -j8 -C neovim
  sudo make -j8 -C neovim install
  # sudo rm -rf neovim
  
  sudo apt install -y ruby
  sudo apt install -y xsel
  sudo apt install -y nodejs
  
  sudo apt install -y python-is-python3
  sudo apt install -y python3-pip
  python -m pip install pynvim
  
  sudo apt install -y npm
  sudo npm i -g neovim
fi
