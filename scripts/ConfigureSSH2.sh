KNOWN_HOSTS=/home/cluster/.ssh/known_hosts

ssh-keyscan -H 0.0.0.0    >> $KNOWN_HOSTS
ssh-keyscan -H 127.0.0.1  >> $KNOWN_HOSTS
ssh-keyscan -H localhost  >> $KNOWN_HOSTS
ssh-keyscan -H master     >> $KNOWN_HOSTS
ssh-keyscan -H slave1     >> $KNOWN_HOSTS
ssh-keyscan -H slave2     >> $KNOWN_HOSTS

scp $KNOWN_HOSTS slave1:$KNOWN_HOSTS 
scp $KNOWN_HOSTS slave2:$KNOWN_HOSTS 

