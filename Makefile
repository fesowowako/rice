all:
	cp -f ./zshrc ~/.zshrc
	cp -f ./xinitrc ~/.xinitrc
	cp -f ./xresources ~/.Xresources
	mkdir ~/.config/alacritty
	cp -f ./alacritty.yml ~/.config/alacritty/
	feh --bg-scale ./bg.png

install:
	$(MAKE) -C suckless/dmenu install
	$(MAKE) -C suckless/slstatus install
	$(MAKE) -C suckless/dwm install
