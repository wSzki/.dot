# Acpi = Battery monitor
sudo pacman -S --noconfirm acpi
sudo cp ./99-lowbat.rules /etc/udev/rules.d/
sudo cp ./40-touchpad.conf /etc/X11/xorg.conf.d/
sudo cp ./loader.conf /boot/loader
sudo cp ./logind.conf /etc/systemd/
sudo cp ./slock@.service /etc/systemd/system

sudo systemctl enable slock@wsz.service
sudo systemctl start slock@wsz.service

# Automatic Login - Copy override.conf in 
# /etc/systemd/system/getty@tty1.service.d/override.conf
