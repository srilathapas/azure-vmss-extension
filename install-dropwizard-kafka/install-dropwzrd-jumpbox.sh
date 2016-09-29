#!/bin/bash

# redhat java install 

cd /tmp 
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jdk-8u102-linux-x64.rpm" 
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u102-b14/jre-8u102-linux-x64.rpm" 

#Install packages 
rpm -Uvh jdk-8u102-linux-x64.rpm 
rpm -Uvh jre-8u102-linux-x64.rpm 

wget "https://github.com/srilathapas/azure-vmss-extension/tree/master/install-dropwizard-kafka/kafka-http.yml"
cd /tmp
$Java -jar target/dropwizard-kafka-http-0.0.1-SNAPSHOT.jar server kafka-http.yml