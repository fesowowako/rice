BACKUP_DIR := ~/.config/backup
XINITRC := ~/.xinitrc
BASHRC := ~/.bashrc
XRESOURCES := ~/.Xresources

.PHONY: all install install-dmenu install-slstatus install-dwm install-st

all: $(BACKUP_DIR) $(XINITRC) $(BASHRC) $(XRESOURCES)
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

$(BACKUP_DIR):
	mkdir -p $(BACKUP_DIR)

$(XINITRC): ./xinitrc
	cp -b $@ $(BACKUP_DIR)/xinitrc_backup
	cp -f $< $@

$(BASHRC): ./bashrc
	cp -b $@ $(BACKUP_DIR)/bashrc_backup
	cp -f $< $@

$(XRESOURCES): ./xresources
	cp -b $@ $(BACKUP_DIR)/Xresources_backup
	cp -f $< $@

