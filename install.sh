#修改时区
sudo rm -f /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#换源
sudo rm -rf /etc/apt/sources.list
vi /etc/apt/sources.list
chmod 777 /etc/apt/sources.list
sudo echo "#添加阿里源
deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
#添加清华源
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse multiverse" >> /etc/apt/sources.list

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

# 卸载安装更新nodejs
#apt-get 卸载
sudo apt-get -y remove --purge npm
sudo apt-get -y remove --purge nodejs
sudo apt-get -y remove --purge nodejs-legacy
sudo apt-get -y autoremove
#手动删除 npm 相关目录
rm -r /usr/local/bin/npm
rm -r /usr/local/lib/node-moudels
rm -r /tmp/npm*

sudo apt-get -y update
sudo apt-get -y install nodejs
sudo apt -y install nodejs-legacy
sudo apt -y install npm
sudo npm install n -g
sudo n stable

#安装pip
sudo apt -y install pip

#安装vim-plug插件
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#安装cargo
sudo apt -y install cargo

#安装yarn
sudo apt -y remove cmdtest
sudo apt -y remove yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt -y update
sudo apt -y install yarn

#安装nerd-fonts字体
sudo apt-get -y install ttf-mscorefonts-installer #使mkfontscale和mkfontdir生效
sudo apt-get -y install fontconfig #是fc-cache -fv生效
sudo rm -rf /usr/share/fonts/SourceCodePro
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
sudo unzip SourceCodePro -d /usr/share/fonts/SourceCodePro
cd /usr/share/fonts/SourceCodePro
mkdir -p ~/.local/share/fonts
sudo mkfontscale # 生成核心字体信息
sudo mkfontdir # 生成字体文件夹
sudo fc-cache -fv # 刷新系统字体缓存
fc-list #查看已经安装的

#安装 live grep
sudo apt-get -y install ripgrep

#安装zsh和oh-my-zsh
sudo apt -y install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting
sudo chsh -s `which zsh`

#go安装
wget https://dl.google.com/go/go1.17.6.linux-amd64.tar.gz

tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
echo "PATH=$PATH:/usr/local/go/bin" >> /etc/profile
source /etc/profile

#安装lazygit
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get -y update
sudo apt-get -y install lazygit

