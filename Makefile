BACKUP_DIR := ~/.config/backup
XINITRC := ~/.xinitrc
BASHRC := ~/.bashrc
XRESOURCES := ~/.Xresources

.PHONY: all install install-dmenu install-slstatus install-dwm install-st

all:
	cp -f ./xinitrc $(XINITRC)
	mkdir -p $(BACKUP_DIR)
	@if [ -f $(BASHRC) ]; then \
		cp -f $(BASHRC) $(BACKUP_DIR)/bashrc_backup; \
	fi
	cp -f ./bashrc $(BASHRC)
	@if [ -f $(XRESOURCES) ]; then \
		cp -f $(XRESOURCES) $(BACKUP_DIR)/Xresources_backup; \
	fi
	cp -f ./xresources $(XRESOURCES)
	feh --bg-scale ./bg.png

install: install-dmenu install-slstatus install-dwm install-st

install-dmenu:
	$(MAKE) -C suckless/dmenu install

install-slstatus:
	$(MAKE) -C suckless/slstatus install

install-dwm:
	$(MAKE) -C suckless/dwm install

install-st:
	$(MAKE) -C suckless/st install
