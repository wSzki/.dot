git clone https://aur.archlinux.org/yay.git

sudo pacman -S --noconfirm pkgconf gcc make
cd yay
makepkg -si
