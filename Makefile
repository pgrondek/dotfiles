FILES = .bash_aliases .bashrc .inputrc .profile .vimrc .xsessionrc

install:
	cp -v $(FILES) $(HOME)
	cp -rv bin $(HOME)/bin
	cp -rv .local $(HOME)/.local
	cp -rv .config $(HOME)/.config