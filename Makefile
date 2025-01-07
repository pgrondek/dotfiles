FILES = .bash_aliases .bashrc .inputrc .profile .vimrc .xsessionrc
CONFIGS = .config/mimeapps.list .config/picom.conf .config/redshift.conf .config/user-dirs.dirs .config/rofi/config.rasi

install: install_config
	cp -v $(FILES) $(HOME)
	cp -rv bin/* $(HOME)/bin
	cp -rv .local $(HOME)

install_config: install_config_git install_config_polybar install_config_rofi install_config_other

install_config_git:
ifneq ("$(wildcard $(HOME)/.config/git/config)","")
	@echo "Git config found, skipping install"
else
	mkdir -p $(HOME)/.config/git
	cp .config/git/config $(HOME)/.config/git
endif

install_config_polybar:
	cp -rv .config/polybar $(HOME)/.config

install_config_rofi:
	cp -rv .config/rofi $(HOME)/.config

install_config_other:
	cp -rv $(CONFIGS) $(HOME)/.config
