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

- **Leader** key set as<kbd>**,**</kbd>

### nvim-notify

| Key                                    | Mode        | Action                                           |
| -------------------------------------- | ----------- | ------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**fn**</kbd> | `nnoremap ` | **nnoremap `<leader>fn` :Telescope notify<CR>** |

### vim-easy-align 

| Key               | Mode        | Action                                                       |
| ----------------- | ----------- | ------------------------------------------------------------ |
| <kbd>**ga**</kbd> | `xmap,nmap` | **`Start interactive EasyAlign in visual mode (e.g. vipga)`**<br />**xmap `ga `<Plug>(EasyAlign)**<br />**`Start interactive EasyAlign for a motion/text object (e.g. gaip)`**<br />**nmap` ga `<Plug>(EasyAlign)** |

### nvim-spectre

| Key                                                          | Mode        | Action                                                       |
| ------------------------------------------------------------ | ----------- | ------------------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**S**</kbd>                        | `nnoremap ` | **nnoremap `<leader>S `<cmd>lua require('spectre').open()<CR>** |
| <span style="display:inline-block;width: 80px"> <kbd>**,**</kbd>**+**<kbd>**sw**</kbd> </span> | `vnoremap`  | **`search current word`**<br />**nnoremap` <leader>sw` <cmd>lua require('spectre').open_visual({select_word=true})<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**s**</kbd>                        | `vnoremap`  | **`search current word`**<br />**vnoremap `<leader>s `<cmd>lua require('spectre').open_visual()<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**sp**</kbd>                       | `nnoremap ` | **`search in current file`<br />nnoremap `<leader>sp` viw:lua require('spectre').open_file_search()<cr>** |

### rnvimr 

| Key                      | Mode       | **Action**                                                   |
| ------------------------ | ---------- | ------------------------------------------------------------ |
| <kbd>**M-o**</kbd><br /> | `nnoremap` | **nnoremap <silent> `<M-o>` :RnvimrToggle<CR>**<br />**tnoremap <silent> `<M-o> `<C-\><C-n>:RnvimrToggle<CR>** |
| <kbd>**M-i**</kbd><br /> | `tnoremap` | **`Resize floating window by all preset layouts`**<br />**tnoremap <silent> `<M-i> `<C-\><C-n>:RnvimrResize<CR>** |
| <kbd>**M-l**</kbd><br /> | `tnoremap` | **`Resize floating window by special preset layouts`**<br />**tnoremap <silent> `<M-l>` <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>** |
| <kbd>**M-y**</kbd><br /> | `tnoremap` | **`Resize floating window by single preset layout`**<br />**tnoremap <silent>` <M-y>` <C-\><C-n>:RnvimrResize 6<CR>** |

### telescope 

| Key                                                          | Mode       | **Action**                                                   |
| ------------------------------------------------------------ | ---------- | ------------------------------------------------------------ |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**ff**</kbd></span> | `nnoremap` | **nnoremap <expr>`<leader>ff` ':Telescope find_files cwd='.FindRootDirectory().'/<cr>'**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fg**</kbd>                       | `nnoremap` | **nnoremap `<leader>fg` <cmd>lua require'telescope.builtin'.live_grep()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**f?**</kbd>                       | `nnoremap` | **nnoremap `<leader>f?` <cmd>lua require'telescope.builtin'.help_tags()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fh**</kbd>                       | `nnoremap` | **nnoremap `<leader>fh `<cmd>lua require'telescope.builtin'.oldfiles()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fb**</kbd>                       | `nnoremap` | **nnoremap `<leader>fb` <cmd>lua require'telescope.builtin'.marks()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fe**</kbd>                       | `nnoremap` | **nnoremap `<leader>fe` <cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fp**</kbd>                       | `nnoremap` | **nnoremap `<leader>fp` <cmd>lua require'telescope'.extensions.project.project{}<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fr**</kbd>                       | `nnoremap` | **nnoremap `<leader>fr` <cmd>lua require'telescope'.extensions.frecency.frecency()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fm**</kbd>                       | `nnoremap` | **nnoremap `<leader>fm` <cmd>lua require'telescope'.extensions.media_files.media_files()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fn**</kbd>                       | `nnoremap` | **nnoremap`<leader>fn` <cmd>lua require'telescope'.extensions.notify.notify()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fde**</kbd>                      | `nnoremap` | **nnoremap `<leader>fde` <cmd>lua require'telescope'.extensions.dap.commands()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdc**</kbd>                      | `nnoremap` | **nnoremap `<leader>fdc `<cmd>lua require'telescope'.extensions.dap.configurations()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdb**</kbd>                      | `nnoremap` | **nnoremap `<leader>fdb`<cmd>lua require'telescope'.extensions.dap.list_breakpoints()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdv**</kbd>                      | `nnoremap` | **nnoremap `<leader>fdv` <cmd>lua require'telescope'.extensions.dap.variables()<CR>>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdf**</kbd>                      | `nnoremap` | **nnoremap `<leader>fdf `<cmd>lua require'telescope'.extensions.dap.frames()<CR>**<br /> |

### simrat39/symbols-outline

| Key                | Mode       | **Action**                               |
| ------------------ | ---------- | ---------------------------------------- |
| <kbd>**C-p**</kbd> | `nnoremap` | **nnoremap `<C-p>` :SymbolsOutline<CR>** |

### auto-session

| Key                                    | Mode       | **Action**                                                   |
| -------------------------------------- | ---------- | ------------------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**ss**</kbd> | `nnoremap` | ~~**nnoremap `<leader>ss` <cmd>SaveSession<CR>**~~           |
| <kbd>**,**</kbd>**+**<kbd>**sd**</kbd> | `nnoremap` | **nnoremap `<leader>sd `<cmd>!rm -f ~/.config/nvim/sessions/*<CR>**<br /> |

### persistence(auto session)

| Key                                    | Mode       | **Action**                                                   |
| -------------------------------------- | ---------- | ------------------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**ss**</kbd> | `nnoremap` | **`restore the session for the current directory`**<br />**nnoremap `<leader>ss` <cmd>lua require("persistence").load()<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**sl**</kbd> | `nnoremap` | **`restore the last session`**<br />**nnoremap` <leader>sl` <cmd>lua require("persistence").load({ last = true })<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**st**</kbd> | `nnoremap` | **`stop Persistence => session won't be saved on exit`**<br />**nnoremap `<leader>st` <cmd>lua require("persistence").stop()<CR>** |

### vim-visual-multi(多行编辑插件)

| Key                | Mode       | **Action**                                                   |
| ------------------ | ---------- | ------------------------------------------------------------ |
| <kbd>**C-m**</kbd> | `vnoremap` | **let g:VM_maps['Find Under']         = `'<C-m>' `          " replace C-n**<br />**let g:VM_maps['Find Subword Under'] = `'<C-m>' `          " replace visual C-n** |

### toggleterm 

| Key                                    | Mode        | **Action**                                                   |
| -------------------------------------- | ----------- | ------------------------------------------------------------ |
| <kbd>**c-t**</kbd>                     | `tnoremap ` | **tnoremap <silent>`<c-t>` <Cmd>exe v:count1 . "ToggleTerm"<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**tt**</kbd> | `tnoremap ` | **nnoremap <silent>`<leader>tt` <Cmd>exe v:count1 . "ToggleTerm"<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**tt**</kbd> | `inoremap`  | **inoremap <silent>`<leader>tt` <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**gg**</kbd> | `nnoremap ` | **nnoremap <silent>`<leader>gg` <Cmd>lua _LAZYGIT_TOGGLE()<CR>**<br /> |

### nvim-tree

| Key                | Mode        | **Action**                                     |
| ------------------ | ----------- | ---------------------------------------------- |
| <kbd>**c-n**</kbd> | `nnoremap ` | **nnoremap `<C-n>` :NvimTreeToggle<CR>**<br /> |

### RenameFile

| Key                                   | Mode   | **Action**                                 |
| ------------------------------------- | ------ | ------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**n**</kbd> | `map ` | **map `<leader>n` :call RenameFile()<cr>** |

### Trouble 

| Key                                    | Mode       | **Action**                                                   |
| -------------------------------------- | ---------- | ------------------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**xx**</kbd> | `nnoremap` | **nnoremap `<leader>xx` <cmd>TroubleToggle<cr>**             |
| <kbd>**,**</kbd>**+**<kbd>**xw**</kbd> | `nnoremap` | **nnoremap `<leader>xw` <cmd>TroubleToggle workspace_diagnostics<cr>** |
| <kbd>**,**</kbd>**+**<kbd>**xd**</kbd> | `nnoremap` | **nnoremap `<leader>xd` <cmd>TroubleToggle document_diagnostics<cr>** |
| <kbd>**,**</kbd>**+**<kbd>**xq**</kbd> | `nnoremap` | **nnoremap `<leader>xq` <cmd>TroubleToggle quickfix<cr>**    |
| <kbd>**,**</kbd>**+**<kbd>**xl**</kbd> | `nnoremap` | **nnoremap `<leader>xl` <cmd>TroubleToggle loclist<cr>**     |
| <kbd>**gR**</kbd>                      | `nnoremap` | **nnoremap `gR` <cmd>TroubleToggle lsp_references<cr>**      |

### 一般设置

| Key                                    | Mode                    | **Action**                                                   |
| -------------------------------------- | ----------------------- | ------------------------------------------------------------ |
| <kbd>**jk**</kbd>                      | `inoremap `             | **inoremap `jk `<ESC>**                                      |
| <kbd>**U**</kbd>                       | `nnoremap`              | **nnoremap  ` U` <C-r>**                                     |
| <kbd>**/**</kbd>                       | `nnoremap`  `vnoremap ` | **nnoremap `/ `/\v<br/>vnoremap `/` /\v**                    |
| <kbd>**//**</kbd>                      | `vnoremap `             | **vnoremap `//` y/<c-r>"<cr>**                               |
| <kbd>**,**</kbd>**+**<kbd>**d**</kbd>  | `nnoremap  `            | **`add quote for current word`**<br />**nnoremap `<leader>d` ::bufdo! bd!<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**q"**</kbd> | `nnoremap  `            | **`add quote for current word`**<br />**nnoremap `<Leader>q"` ciw""<Esc>P** |
| <kbd>**,**</kbd>**+**<kbd>**q'**</kbd> | `nnoremap  `            | **`add quote for current word`**<br />nnoremap `<Leader>q'` ciw''<Esc>P** |
| <kbd>**,**</kbd>**+**<kbd>**q(**</kbd> | `nnoremap  `            | **`add quote for current word`**<br />**nnoremap `<Leader>q(` ciw()<Esc>P** |
| <kbd>**,**</kbd>**+**<kbd>**q{**</kbd> | `nnoremap  `            | **`add quote for current word`**<br />nnoremap `<Leader>q{` ciw{}<Esc>P** |
| <kbd>**,**</kbd>**+**<kbd>**qd**</kbd> | `nnoremap  `            | **`add quote for current word`**<br />**nnoremap `<Leader>qd`  daW"=substitute(@@,"'\\\|\"","","g")<CR>P** |
|                                        |                         |                                                              |
|                                        |                         |                                                              |


