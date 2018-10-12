sudo apt-get update
sudo apt-get upgrade

#ACCESSORIES 
sudo apt-get install vim
sudo apt-get install htop
sudo snap install vlc
sudo apt-get install ubuntu-restricted-extras

#installa Ubuntu After Install

#JAVA
#you might have to add/modiy $JAVA_HOME
sudo apt install default-jdk
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install software-properties-common

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get install oracle-java9-installer
sudo apt-get install oracle-java8-installer
sudo apt-get update
sudo apt-get upgrade
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/9.0.4+11/c2514751926b4512b076cc82f959763f/jdk-9.0.4_linux-x64_bin.tar.gz
