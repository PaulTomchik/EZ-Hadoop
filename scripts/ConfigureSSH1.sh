ssh-keygen -t rsa -N "" -f /home/cluster/.ssh/id_rsa

cp /home/cluster/.ssh/id_rsa.pub /home/cluster/.ssh/authorized_keys

printf "Host master\n\
	User cluster\n\
	HostName 192.168.56.90\n\
	StrictHostKeyChecking no\n\
\n\
Host slave1\n\
	User cluster\n\
	HostName 192.168.56.91\n\
	StrictHostKeyChecking no\n\
\n\
Host slave2\n\
	User cluster\n\
	HostName 192.168.56.92\n\
	StrictHostKeyChecking no" > /home/cluster/.ssh/config
