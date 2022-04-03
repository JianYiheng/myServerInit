# apt install neovim and related pkgs
if ! command -v nvim &> /dev/null
then
  apt-get -y install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
  git clone https://github.com/neovim/neovim
  make -C neovim
  make -C neovim install
  rm -rf neovim
  
  apt install -y ruby
  apt install -y xsel
  apt install -y nodejs
  
  apt install -y python-is-python3
  apt install -y python3-pip
  python -m pip install pynvim
  
  apt install -y npm
  npm i -g neovim
fi
