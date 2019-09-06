# How did i to got docker to work?
1. Started by seeing and following this youtube video:
  + <https://youtu.be/KN8wuFi2RXM>
This was not enough to get to work so i look around and found one blog post.

2. Followed [Django dev with Docker Compose and Machine](https://realpython.com/django-development-with-docker-compose-and-machine/)

## Installing Python 3.7.4 in my local machine:
```shell
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget
wget http://www.python.org/ftp/python/3.7.4/Python-3.7.4.tar.xz
tar -xf Python-3.7.4.tar.xz
cd Python-3.7.4
./configure --enable-optimizations
make -j 4
sudo make altinstall
```
## Installing virtual enviroment:
```shell
python3.7 -m venv venv
source venv/bin/activate
```
## Install Docker-CE
```shell
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
sudo systemctl enable docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```
## Install docker-machine
```shell
base=https://github.com/docker/machine/releases/download/v0.16.0 && curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && sudo mv /tmp/docker-machine /usr/local/bin/docker-machine
sudo chmod +x /usr/local/bin/docker-machine
```
### Adding completion scripts
```shell
base=https://raw.githubusercontent.com/docker/machine/v0.16.0
for i in docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash
do
  sudo wget "$base/contrib/completion/bash/${i}" -P /etc/bash_completion.d
done
```
#### edit ~/.bashrc
```shell
PS1='[\u@\h \W$(__docker_machine_ps1)]\$'
```
