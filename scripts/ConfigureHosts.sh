if [ ! -f /etc/hosts.defaults ]; then
    cp /etc/hosts /etc/hosts.defaults
fi

sed -i -e "1d" /etc/hosts

sed -i 's/^.*cluster*$/192.168.56.90	master\
192.168.56.91	slave1\
192.168.56.92	slave2/' /etc/hosts

