#为了防止异常中断
pkill -9 apt
sudo rm /var/lib/apt/lists/lock
sudo rm /var/lib/dpkg/lock-frontend
sudo apt autoremove

#修改时区
sudo rm -f /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#换源
sudo rm -rf /etc/apt/sources.list
sudo echo "# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list

sudo apt-get update -y
sudo apt-get upgrade -y

#安装git：
sudo  apt -y install git

#Cannot initiate the connection to dl.yarnpkg.com:443 
sudo apt -y install curl
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

#卸载nodejs
sudo apt-get -y remove --purge nodejs
sudo apt-get -y remove --purge nodejs-legacy
sudo apt-get -y autoremove

#安装nodejs npm

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs

sudo apt -y install npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

#tab键盘失效
sudo apt -y install rpm
rpm -qa | grep bash-*
sudo apt-get install bash-completion

#ubuntu中source ~/.bash_profile时提示 source: not found
#sudo dpkg-reconfigure dash #执行过程中的选项选择no

#安装unzip
sudo apt-get -y update
sudo apt-get -y install unzip

#下载相关配置
git clone https://github.com/505384662/nvim.git
cp -r $(pwd)/nvim/. $(pwd)/
rm -rf $(pwd)/nvim

#安装nvim7.0
mkdir /tmp
cd /tmp
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo apt -y install ./nvim-linux64.deb 
cd ..

#安装pip
sudo apt -y install pip

#安装vim-plug插件
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#安装cargo
sudo apt -y install cargo

#安装yarn
#sudo apt -y remove cmdtest
#sudo apt -y remove yarn
#curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
#sudo apt -y update
#sudo apt -y install yarn
npm install yarn -g

#安装nerd-fonts字体
sudo apt-get -y install ttf-mscorefonts-installer #使mkfontscale和mkfontdir生效
sudo apt-get -y install fontconfig #是fc-cache -fv生效
sudo rm -rf /usr/share/fonts/SourceCodePro
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
sudo unzip SourceCodePro -d /usr/share/fonts/SourceCodePro
cd /usr/share/fonts/SourceCodePro
sudo mkdir -p ~/.local/share/fonts
sudo mkfontscale # 生成核心字体信息
sudo mkfontdir # 生成字体文件夹
sudo fc-cache -fv # 刷新系统字体缓存
fc-list #查看已经安装的
sudo rm -rf SourceCodePro.zip

#安装 live grep
sudo apt-get -y install ripgrep

#安装zsh和oh-my-zsh
sudo rm -rf ~/.oh-my-zsh
sudo apt -y install zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting
sudo chsh -s `which zsh`
git restore ~/.zshrc
source ~/.zshrc
git restore ~/.p10k.zsh
source ~/.p10k.zsh

#go安装
sudo wget https://dl.google.com/go/go1.18.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go
sudo tar -C tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
sudo rm -rf $HOME/.profile
sudo echo "PATH=$PATH:/usr/local/go/bin" | sudo tee -a $HOME/.profile
source $HOME/.profile
sudo rm -rf go1.18.2.linux-amd64.tar.gz

#安装lazygit
#git clone https://github.com/jesseduffield/lazygit.git
#cd lazygit
#go install
#source ~/.zshrc
#sudo echo "alias lg='lazygit'" | sudo tee -a ~/.zshrc

#删除冗余文件
sudo rm -rf wget-log* .wget-hsts README.md
