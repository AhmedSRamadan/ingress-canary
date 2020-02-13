sudo yum update -y 
sudo yum install -y yum-utils   device-mapper-persistent-data   lvm2
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-nightly
sudo yum install docker-ce docker-ce-cli containerd.io
docker images
mkdir java
cd java/
ls -ltr
sudo vim Dockerfile
cd ..
mkdir go
cd go/
ls -ltr
sudo groupadd docker
sudo usermod -aG docker $(whoami)
docker images
