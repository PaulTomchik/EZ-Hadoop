mkdir -p /home/cluster/opt
cd /home/cluster/opt

wget http://apache.arvixe.com/hadoop/common/hadoop-2.6.0/hadoop-2.6.0.tar.gz
tar zxvf hadoop-2.6.0.tar.gz
rm -f hadoop-2.6.0.tar.gz
ln -s /home/cluster/opt/hadoop-2.6.0 hadoop
