if ! command -v cargo &> /dev/null
then
  curl https://sh.rustup.rs -sSf | sh
  source $HOME/.zshenv
  git clone https://github.com/rust-lang/cargo
	cd cargo
	cargo build --release
  cd ../
  rm -rf cargo
fi

# if ! command -v zellij &> /dev/null
# then
# 	cargo install zellij
# fi

if ! command -v fcp &> /dev/null
then
	cargo install fcp
fi

if ! command -v btm &> /dev/null
then
	cargo install bottom
fi

if ! command -v tldr &> /dev/null
then
	cargo install tealdeer
fi

if ! command -v rg &> /dev/null
then
	cargo install ripgrep
fi

if ! command -v bat &> /dev/null
then
	cargo install --locked bat
fi

if ! command -v fd &> /dev/null
then
	cargo install fd-find
fi

if ! command -v exa &> /dev/null
then
	cargo install exa
fi

if ! command -v ytop &> /dev/null
then
  cargo install ytop
fi

if ! command -v dust &> /dev/null
then
  cargo install du-dust
fi

if ! command -v procs &> /dev/null
then
  cargo install procs
fi

if ! command -v tokei &> /dev/null
then
  cargo install tokei
fi

if ! command -v dust &> /dev/null
then
  cargo install dust
fi

if ! command -v procs &> /dev/null
then
  cargo install procs
fi
