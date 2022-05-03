## 文件目录结构及说明

目录结构及说明：

```bash
> tree
.
├── custom.vim								# 自定义的一些vim-script配置
├── debug-template						# vim-vimspector插件模板目录（用于debug）
│   └── go-template						# debug golang的模板
├── general.vim								# 一般设置
├── init.vim									# 初始化配置文件（主要）
├── keymaps.vim								# 键盘映射配置文件，大部分是通用的键盘映射配置，不包含插件的键盘映射
├── lua												# -- lua配置 ---
│   └── core									# 配置文件命名空间，在init.vim中引进
│       ├── init.lua					# 命名空间lua配置主入口文件
│       ├── lsp.lua
│       ├── nvim-autopairs.lua
│       ├── nvim-bufferline.lua
│       ├── nvim-cmp.lua
│       ├── nvim-diffview.lua
│       ├── nvim-gitsigns.lua
│       ├── nvim-lsp-installer.lua
│       ├── nvim-lspsaga.lua
│       ├── nvim-lualine.lua
│       ├── nvim-neoscroll.lua
│       ├── nvim-session-manager.lua
│       ├── nvim-signature.lua
│       ├── nvim-telescope.lua
│       ├── nvim-todo-comments.lua
│       ├── nvim-toggleterm.lua
│       ├── nvim-transparent.lua
│       ├── nvim-tree.lua
│       ├── nvim-treesitter.lua
│       └── nvim-whichkey.lua
├── push.sh
├── push2GitHub.sh					# push到github的脚本
├── sessions								# 会话管理器的数据存放目录
│   └── %usr%share%dict.vim
└── shpy-autoheader.vim			# 自动文件头部的vim-script
```
