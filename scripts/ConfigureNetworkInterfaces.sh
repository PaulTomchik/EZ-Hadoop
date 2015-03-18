if [ ! -f /etc/network/interfaces.defaults ]; then
    cp /etc/network/interfaces /etc/network/interfaces.defaults
fi

printf "# This file describes the network interfaces available on your system\n\
# and how to activate them. For more information, see interfaces(5).\n\
\n\
# The loopback network interface\n\
auto lo eth0\n\
iface lo inet loopback\n\
\n\
# The primary network interface\n\
allow-hotplug eth0\n\
iface eth0 inet static\n\
	address 192.168.56.90\n\
	netmask 255.255.255.0\n\
\n\
allow-hotplug eth1\n\
iface eth1 inet dhcp" > /etc/network/interfaces

chown root /etc/network/interfaces
chmod 644 /etc/network/interfaces
