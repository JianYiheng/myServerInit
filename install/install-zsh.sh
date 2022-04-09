if ! command -v zsh &> /dev/null
then
	sudo apt install -y zsh
	chsh -s /bin/zsh
	return
fi

