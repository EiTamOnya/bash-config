backup_bashrc:
	cp ~/.bashrc ~/.backup_bashrc
install_ble:
	git clone --recursive https://github.com/akinomyoga/ble.sh.git
	make -C ble.sh install PREFIX=~/.local
	echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc
install_fzf:
	git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
	~/.fzf/install --key-bindings --completion --update-rc
add_aliases:
	cat aliases >> ~/.bashrc
all: backup_bashrc install_ble install_fzf add_aliases source
clean:
	rm -rf ble.sh
