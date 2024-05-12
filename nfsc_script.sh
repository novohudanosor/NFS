#!/bin/bash
sudo -i
yum install -y nfs-utils
systemctl enable firewalld --now
echo "192.168.50.10:/srv/share/ /mnt nfs vers=3,proto=udp,noauto,xsystemd.automount 0 0" >> /etc/fstab
mount 192.168.50.10:/srv/share /mnt/

 