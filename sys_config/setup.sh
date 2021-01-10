# Acpi = Battery monitor
# check acpi_listen for ac handler
sudo pacman -S --noconfirm acpi
sudo pacman -S --noconfirm acpid
sudo cp ./99-lowbat.rules /etc/udev/rules.d/
sudo cp ./40-touchpad.conf /etc/X11/xorg.conf.d/
sudo cp ./loader.conf /boot/loader # 5 sec timeout
sudo cp ./logind.conf /etc/systemd/ # Suspend when lid close
sudo cp ./slock@.service /etc/systemd/system
sudo cp ./powertop.service /etc/systemd/system
sudo cp ./handler.sh /etc/acpi/

sudo systemctl enable slock@wsz.service
sudo systemctl enable acpid.service
sudo systemctl enable powertop.service
sudo systemctl start powertop.service
sudo systemctl start acpid.service
sudo systemctl start slock@wsz.service

sudo sed -i 's/\#DefaultTimeoutStartSec=90s/DefaultTimeoutStartSec=10s/' /etc/systemd/system.conf
sudo sed -i 's/\#DefaultTimeoutStopSec=90s/DefaultTimeoutStopSec=10s/' /etc/systemd/system.conf

# Automatic Login - Copy override.conf in 
# /etc/systemd/system/getty@tty1.service.d/override.conf
