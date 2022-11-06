set -v 
#换源
sudo rm -rf /etc/apt/sources.list
sudo echo "deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse

deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-security main restricted universe multiverse

# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse

deb http://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-proposed main restricted universe multiverse
deb-src http://mirrors.163.com/ubuntu/ focal-backports main restricted universe multiverse

deb https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list

sudo apt autoremove
sudo apt update && sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y

#安装python3.8
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install python3.8
sudo ln -s /usr/bin/python3.8 /usr/bin/python
sudo DEBIAN_FRONTEND=noninteractive apt -y install python3-pip

#修改时区
sudo rm -f /etc/localtime
sudo ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#安装git：
sudo DEBIAN_FRONTEND=noninteractive apt -y install git

#Cannot initiate the connection to dl.yarnpkg.com:443 
sudo DEBIAN_FRONTEND=noninteractive apt -y install curl
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo DEBIAN_FRONTEND=noninteractive apt-key add -

#卸载nodejs
sudo DEBIAN_FRONTEND=noninteractive apt-get -y remove --purge nodejs
sudo DEBIAN_FRONTEND=noninteractive apt-get -y remove --purge nodejs-legacy
sudo DEBIAN_FRONTEND=noninteractive apt-get -y autoremove

#安装nodejs
sudo apt-get -y install gcc g++ make
sudo apt-get -y update 
sudo apt-get -y install yarn
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs

#安装npm
sudo DEBIAN_FRONTEND=noninteractive apt-get install npm
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

#ubuntu中source ~/.bash_profile时提示 source: not found
sudo DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash -n #执行过程中的选项选择no

#安装unzip
sudo DEBIAN_FRONTEND=noninteractive apt-get -y update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install unzip

#安装multitail
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install multitail

#安装剪切板
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install vim vim-scripts vim-gtk vim-gtk3

#安装lua-fmt
sudo npm i -g lua-fmt

#安装clang-format
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt update
sudo apt -y install clang-format-12

#安装gdb-dashboard
sudo rm -rf .gdbinit
sudo apt install gdb
wget https://raw.githubusercontent.com/cyrus-and/gdb-dashboard/master/.gdbinit
pip install pygments

#卸载现有neovim
sudo apt remove neovim    
sudo apt remove neovim-runtime    
sudo apt-get install software-properties-common   

#安装nvim8.0
wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb

#下载相关配置
git clone https://github.com/505384662/nvim.git nvim
cp -r $(pwd)/nvim/. $(pwd)/
sudo rm -rf $(pwd)/nvim

#安装nvim7.0
mkdir /tmp
cd /tmp
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
sudo DEBIAN_FRONTEND=noninteractive apt -y install ./nvim-linux64.deb 
cd ..

#安装pip
sudo DEBIAN_FRONTEND=noninteractive apt -y install pip

#安装vim-plug插件
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#安装cargo
sudo DEBIAN_FRONTEND=noninteractive apt -y install cargo

#安装nerd-fonts字体
sudo rm -rf /usr/share/fonts/SourceCodePro
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install ttf-mscorefonts-installer #使mkfontscale和mkfontdir生效
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install fontconfig #是fc-cache -fv生效
sudo DEBIAN_FRONTEND=noninteractive rm -rf /usr/share/fonts/SourceCodePro
sudo wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
sudo unzip SourceCodePro -d /usr/share/fonts/SourceCodePro
cd /usr/share/fonts/SourceCodePro
sudo mkdir -p ~/.local/share/fonts
sudo mkfontscale # 生成核心字体信息
sudo mkfontdir # 生成字体文件夹
sudo fc-cache -fv # 刷新系统字体缓存
fc-list #查看已经安装的
cd ~/
sudo rm -rf SourceCodePro.zip

#安装 live grep
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install ripgrep

#pip3安装ranger
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install ranger
pip3 install ranger-fm -i https://mirrors.aliyun.com/pypi/simple/
pip3 install pynvim -i https://mirrors.aliyun.com/pypi/simple/

#安装lazygit
wget https://github.com/jesseduffield/lazygit/releases/download/v0.34/lazygit_0.34_Linux_x86_64.tar.gz -O lazygit.tgz
tar xvf lazygit.tgz
sudo mv lazygit /usr/local/bin/
sudo rm -rf lazygit.tgz

# 给lua-language-server 设置权限
sudo chmod -R a=rwx $HOME/.local/share/nvim/

#安装zsh和oh-my-zsh
sudo rm -rf ~/.oh-my-zsh
sudo rm -rf ~/.zshrc.*
sudo apt -y install zsh
echo y | sh -c "$(wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting 
git restore ~/.zshrc 
source ~/.zshrc
#echo '505384662' | chsh -s /bin/zsh
#zsh
