set -v
#换源
sudo rm -rf /etc/apt/sources.list
sudo echo "deb http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list

sudo apt autoremove -y
sudo apt update && sudo apt upgrade -y

#安装python3.8
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install python3.10
sudo ln -s /usr/bin/python3.10 /usr/bin/python
sudo DEBIAN_FRONTEND=noninteractive apt -y install python3-pip

#修改时区
sudo rm -f /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#安装git：
sudo DEBIAN_FRONTEND=noninteractive apt -y install git

#安装unzip
sudo DEBIAN_FRONTEND=noninteractive apt-get -y update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install unzip

#安装gdb-dashboard
sudo rm -rf .gdbinit
sudo apt install gdb -y
wget -nc https://gitee.com/Jello_Smith/gdbinit/raw/master/.gdbinit
pip install pygments

#安装zsh和oh-my-zsh
sudo rm -rf ~/.oh-my-zsh
sudo apt -y install zsh
yes | sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting


sudo rm -rf ~/.zshrc*
wget https://raw.githubusercontent.com/frog-game/Ubuntu20.04-nvim/master/.zshrc
wget https://raw.githubusercontent.com/frog-game/Ubuntu20.04-nvim/master/.p10k.zsh

zsh
source ~/.zshrc
chsh -s $(which zsh)
#zsh
