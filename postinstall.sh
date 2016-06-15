#!/bin/bash

GRADLE_HOME=/tmp/gradle
GRADLE_VERSION=2.14

apt-get update
apt-get upgrade -y
apt-get install -y openjdk-7-jre unzip

wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip -O /tmp/gradle.zip
unzip /tmp/gradle.zip -d $GRADLE_HOME

cat << EOL > /etc/profile.d/gradle.sh
export GRADLE_HOME=$GRADLE_HOME/gradle-$GRADLE_VERSION
export PATH=\$PATH:\$GRADLE_HOME/bin
EOL
