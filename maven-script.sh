sudo yum update
sudo su -
sudo yum install java -y
sudo yum install unzip
cd /opt
sudo curl -O https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.zip
sudo unzip apache-maven-3.9.3-bin.zip
sudo rm apache-maven-3.9.3-bin.zip
sudo mv apache-maven-3.9.3/ maven
cd maven
sudo echo "export M2_HOME=/opt/maven" >> ~/.bashrc
sudo echo "export PATH=\$PATH:\$M2_HOME/bin" >> ~/.bashrc
source ~/.bashrc
mvn --version