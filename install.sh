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

sudo rm -rf ~/.oh-my-zsh
sudo rm -rf ~/.zshrc

#安装szrz
sudo apt install lrzsz

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

#下载相关配置
sudo rm -rf temp_dir && git clone https://github.com/frog-game/Ubuntu20.04-nvim.git temp_dir  && cp -r temp_dir/. .

# 给lua-language-server 设置权限
sudo chmod -R a=rwx $HOME/.local/share/nvim/

#安装zsh和oh-my-zsh
sudo apt -y install zsh
yes | sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting
zsh
source ~/.zshrc
chsh -s $(which zsh)
#zsh
