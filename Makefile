BACKUP_DIR := ~/.config/backup

all:
	cp -f ./xinitrc ~/.xinitrc
	mkdir -p $(BACKUP_DIR)
	@if [ -f ~/.bashrc ]; then \
		cp -f ~/.bashrc $(BACKUP_DIR)/bashrc_backup; \
	fi
	cp -f ./bashrc ~/.bashrc
	@if [ -f ~/.Xresources ]; then \
		cp -f ~/.Xresources $(BACKUP_DIR)/Xresources_backup; \
	fi
	cp -f ./xresources ~/.Xresources
	mkdir -p ~/.config/alacritty
	cp -f ./alacritty.yml ~/.config/alacritty/
	feh --bg-scale ./bg.png

install:
	$(MAKE) -C suckless/dmenu install
	$(MAKE) -C suckless/slstatus install
	$(MAKE) -C suckless/dwm install
