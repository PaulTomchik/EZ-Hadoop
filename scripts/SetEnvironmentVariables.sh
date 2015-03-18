printf '

export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64"\n
export HADOOP_COMMON_HOME="${HOME}/opt/hadoop"\n
export HADOOP_MAPRED_HOME="${HADOOP_COMMON_HOME}"\n
export HADOOP_HDFS_HOME="${HADOOP_COMMON_HOME}"\n
export HADOOP_CONF_DIR="${HADOOP_COMMON_HOME}/etc/hadoop"\n
export YARN_HOME="${HADOOP_COMMON_HOME}"\n
\n
export PATH=\"${PATH}:${JAVA_HOME}:${HADOOP_COMMON_HOME}/bin:${HADOOP_COMMON_HOME}/sbin"\n' >> /home/cluster/.bashrc

