#Setting up a Virtual Hadoop Cluster.

The end result of these instructions will be an Hadoop cluster with three servers running in VirtualBox.
###Note: These instructions, and associated scripts, are subject to change.
###The following follows [highlyscalablesystems](http://www.highlyscalablesystems.com/3597/hadoop-installation-tutorial-hadoop-2-x/).

##Instructions
1. Install VirtualBox

2. Create *ClusterBase* per the instructions in [EZ-BaseUbuntuServer](https://github.com/PaulTomchik/EZ-BaseUbuntuServer)

3. Clone *ClusterBase*
  1. Right click *ClusterBase* and select *Clone*.
  2. Name the clone *HadoopMaster*
  3. Check the reinitialize MACs box.
  4. Select the defaults until done.

4. Start the VirtualMachine, log in and run:
  1. `git clone https://github.com/PaulTomchik/EZ-Hadoop.git`
  2. `cd EZ-Hadoop`
  3. `./Script1.sh`
  4. `sudo ./Script2.sh`
  5. `sudo halt -p`

5. In VirtualBox
  1. Right click *HadoopMaster* and select *Clone*.
  2. Name the clone *HadoopSlave1*
  3. Check the reinitialize MACs box.
  4. Click through the defaults until done.  
  5. Right click *HadoopMaster* and select *Clone*.
  6. Name the clone *HadoopSlave2*
  7. Check the reinitialize MACs box.
  8. Click through the defaults until done.  

6. Start *HadoopMaster*, log in and run:
  1. `sudo ./EZ-Hadoop/scripts/ConfigureMaster.sh`
  2. `sudo halt -p`

7. Start *HadoopSlave1* and run:
  1. `sudo ./EZ-Hadoop/scripts/ConfigureSlave1.sh`
  2. `sudo halt -p`

8. Start *HadoopSlave2* and run:
  1. `sudo ./EZ-Hadoop/scripts/ConfigureSlave2.sh`
  2. `sudo halt -p`

9. Fire up all three virtual machines: *HadoopMaster*, *HadoopSlave1*, *HadoopSlave2*.

10. Log into *HadoopMaster* and run:
  1. `./EZ-Hadoop/scripts/ConfigureSSH2.sh`

### At this point, the Hadoop cluster should be set up and ready to go!#
I recommend taking snap shots of the VMs at this point.

Running the following commands in HadoopMaster will allow you to test the system.
  1. `hdfs namenode -format`
  2. `start-dfs.sh`
  3. `start-yarn.sh`
  4. `hdfs dfsadmin -report`
  5. `yarn node -list`
  6. `hadoop fs -mkdir /user`
  7. `hadoop fs -mkdir /user/hadoop`
  8. `stop-dfs.sh`
  9. `stop-yarn.sh`

# Have fun!
