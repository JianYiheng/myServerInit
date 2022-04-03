if ! command -v zsh &> /dev/null
then
	apt install -y zsh
	chsh -s /bin/zsh
	exit
fi

