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

