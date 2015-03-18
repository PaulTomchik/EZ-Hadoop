sed -i '/^export JAVA_HOME/ s/^/# /' /home/cluster/opt/hadoop/etc/hadoop/hadoop-env.sh


sed -i '/^# export JAVA_HOME/ s/$/\nexport JAVA_HOME=\/usr\/lib\/jvm\/java-7-openjdk-amd64/' /home/cluster/opt/hadoop/etc/hadoop/hadoop-env.sh


mkdir -p /home/cluster/data
mkdir -p /home/cluster/data/dfs
mkdir -p /home/cluster/data/dfs/name
mkdir -p /home/cluster/data/dfs/data


sed -i '/<configuration>/ s/$/\
	<property>\
		<name>fs.default.name<\/name>\
		<value>hdfs:\/\/master<\/value>\
	<\/property>/' /home/cluster/opt/hadoop/etc/hadoop/core-site.xml


sed -i '/<configuration>/ s/$/\
	<property>\
		<name>dfs.namenode.name.dir<\/name>\
		<value>\/home\/cluster\/data\/dfs\/name<\/value>\
	<\/property>\
	<property>\
		<name>dfs.datanode.data.dir<\/name>\
		<value>\/home\/cluster\/data\/dfs\/data<\/value>\
	<\/property>/' /home/cluster/opt/hadoop/etc/hadoop/hdfs-site.xml


sed  -i '/<configuration>/ s/$/\
	<property>\
		<name>yarn.resourcemanager.hostname<\/name>\
		<value>master<\/value>\
		<description>The hostname of the ResourceManager<\/description>\
	<\/property>\
	<property>\
		<name>yarn.nodemanager.aux-services<\/name>\
		<value>mapreduce_shuffle<\/value>\
		<description>Shuffle Service for MapReduce<\/description>\
	<\/property>/' /home/cluster/opt/hadoop/etc/hadoop/yarn-site.xml


cp /home/cluster/opt/hadoop/etc/hadoop/mapred-site.xml.template  /home/cluster/opt/hadoop/etc/hadoop/mapred-site.xml

sed -i '/<configuration>/ s/$/\
	<property>\
		<name>mapreduce.framework.name<\/name>\
		<value>yarn<\/value>\
		<description>Execution framework.<\/description>\
	<\/property>/' /home/cluster/opt/hadoop/etc/hadoop/mapred-site.xml

sed -i 's/localhost/master\
slave1\
slave2/' /home/cluster/opt/hadoop/etc/hadoop/slaves

mkdir -p /home/cluster/data


