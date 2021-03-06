#!/bin/bash

# Source: https://www.devopsroles.com/install-nexus-repository-oss-on-centos-7/
# download lates
# wget -O /tmp/nexus.tar.gz http://download.sonatype.com/nexus/3/latest-unix.tar.gz

# untar nexus 
# tar xvfz $NEXUS_HOME/nexus.tar.gz --strip-components 1 -C $NEXUS_HOME

# configure nexus service account
#echo 'run_as_user="nexus"' > $NEXUS_HOME/nexus-${NEXUS_VERSION}/bin/nexus.rc
#cat $NEXUS_HOME/nexus-${NEXUS_VERSION}/bin/nexus.rc

# delete tar file
#rm -rf $NEXUS_HOME/nexus.tar.gz 

#echo test
# Setting up the default JDK
# alternatives --config java 

#echo test
# Setting up JAVA_HOME and NEXUS_HOME
#export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.262.b10-0.el7_8.x86_64
#source /etc/bashrc

# Check the JAVA version
#java -version


# start nexus
/opt/nexus/nexus3/bin/nexus start-launchd


