# Acpi = Battery monitor
sudo pacman -S --noconfirm acpi
sudo cp ./99-lowbat.rules /etc/udev/rules.d/
sudo cp ./40-touchpad.conf /etc/X11/xorg.conf.d/
sudo cp ./loader.conf /boot/loader
sudo cp ./logind.conf /etc/systemd/
