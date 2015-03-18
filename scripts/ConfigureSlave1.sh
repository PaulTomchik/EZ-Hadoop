sed -i 's/90/91/g' /etc/network/interfaces
sed -i 's/cluster/slave1/g' /etc/hostname
sed -i 's/slave1/slave1 localhost/g' /etc/hosts
