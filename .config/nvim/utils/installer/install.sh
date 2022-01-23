#!/bin/sh

set -o nounset # error when referencing undefined variable
set -o errexit # exit when command fails


moveoldnvim() {
	echo "Not installing jvim"
	echo "Please move your ~/.config/nvim folder before installing"
	exit
}

installpip() {
	sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
	python3 get-pip.py
	rm get-pip.py
}


installpynvim() {
	echo "Installing pynvim..."
	pip3 install pynvim --user
}

installpacker() {
    echo "Installing packer..."
	git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
}

cloneconfig() {
	echo "Cloning jvim configuration"
	git clone https://github.com/jackm245/jvim ~/.config/nvim
	nvim -u $HOME/.config/nvim/init.vim +PackerSync
}


# Main entry point to program
echo 'Installing jvim'

# move old nvim directory if it exists
[ -d "$HOME/.config/nvim" ] && moveoldnvim

# install pip
which pip3 >/dev/null && echo "pip installed, moving on..." || installpip

# install pynvim
pip3 list | grep pynvim >/dev/null && echo "pynvim installed, moving on..." || installpynvim

if [ -a "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then
	echo 'packer already installed'
else
	installpacker
fi

if [ -a "$HOME/.config/nvim/init.vim" ]; then
	echo 'jvim already installed'
else
	# clone config down
	cloneconfig
fi

echo "install complete"
