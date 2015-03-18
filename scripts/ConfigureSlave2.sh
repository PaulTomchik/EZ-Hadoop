sed -i 's/90/92/g' /etc/network/interfaces
sed -i 's/cluster/slave2/g' /etc/hostname
sed -i 's/slave2/slave2 localhost/g' /etc/hosts
