## 安装教程
```sh
bash <(curl -fsSL https://raw.githubusercontent.com/frog-game/Ubuntu20.04-nvim/master/install.sh)
```

## 安装完成后执行如下命令就能进入zsh界面

```sh
zsh
```

## 演示

https://www.bilibili.com/video/BV1se4y1x7op/?vd_source=eda9685c1fd919172e56a90b8eb7b69e

![snapshot1](/snapshot/nvim2.gif)

https://www.bilibili.com/video/BV1vv4y1U7gT/?vd_source=eda9685c1fd919172e56a90b8eb7b69e

![snapshot2](/snapshot/nvim1.gif)

**tmux**

![snapshot4](/snapshot/tmux.gif)

**gdb**

![snapshot3](/snapshot/gdb.png)


## nvim - 快捷键

- **Leader** key set as<kbd>**,**</kbd>

### nvim-notify

| Key                                    | Mode        | Action                                          |
| -------------------------------------- | ----------- | ----------------------------------------------- |
| <kbd>**,**</kbd>**+**<kbd>**fn**</kbd> | `nnoremap ` | **nnoremap `<leader>fn` :Telescope notify<CR>** |

### vim-easy-align 

| Key               | Mode        | Action                                                       |
| ----------------- | ----------- | ------------------------------------------------------------ |
| <kbd>**ga**</kbd> | `xmap,nmap` | **`Start interactive EasyAlign in visual mode (e.g. vipga)`**<br />**xmap `ga `<Plug>(EasyAlign)**<br />**`Start interactive EasyAlign for a motion/text object (e.g. gaip)`**<br />**nmap` ga `<Plug>(EasyAlign)** |

### nvim-spectre(neovim 搜索替换面板)

| Key                                                          | Mode                                                         | Action                                                       |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**S**</kbd>                        | <span style="display:inline-block;width: 90px">`nnoremap`</span> | **nnoremap `<leader>S `<cmd>lua require('spectre').open()<CR>** |
| <span style="display:inline-block;width: 80px"> <kbd>**,**</kbd>**+**<kbd>**sw**</kbd> </span> | `vnoremap`                                                   | **`search current word`**<br />**nnoremap` <leader>sw` <cmd>lua require('spectre').open_visual({select_word=true})<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**s**</kbd>                        | `vnoremap`                                                   | **`search current word`**<br />**vnoremap `<leader>s `<cmd>lua require('spectre').open_visual()<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**sp**</kbd>                       | `nnoremap `                                                  | **`search in current file`<br />nnoremap `<leader>sp` viw:lua require('spectre').open_file_search()<cr>** |

### rnvimr 

| Key                      | Mode       | **Action**                                                   |
| ------------------------ | ---------- | ------------------------------------------------------------ |
| <kbd>**M-o**</kbd><br /> | `nnoremap` | **nnoremap <silent> `<M-o>` :RnvimrToggle<CR>**<br />**tnoremap <silent> `<M-o> `<C-\><C-n>:RnvimrToggle<CR>** |
| <kbd>**M-i**</kbd><br /> | `tnoremap` | **`Resize floating window by all preset layouts`**<br />**tnoremap <silent> `<M-i> `<C-\><C-n>:RnvimrResize<CR>** |
| <kbd>**M-l**</kbd><br /> | `tnoremap` | **`Resize floating window by special preset layouts`**<br />**tnoremap <silent> `<M-l>` <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>** |
| <kbd>**M-y**</kbd><br /> | `tnoremap` | **`Resize floating window by single preset layout`**<br />**tnoremap <silent>` <M-y>` <C-\><C-n>:RnvimrResize 6<CR>** |

### telescope 

| Key                                                          | Mode                                                         | **Action**                                                   |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**ff**</kbd></span> | <span style="display:inline-block;width: 90px">`nnoremap`</span> | **nnoremap <expr>`<leader>ff` ':Telescope find_files cwd='.FindRootDirectory().'/<cr>'**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fg**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>fg` <cmd>lua require'telescope.builtin'.live_grep()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**f?**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>f?` <cmd>lua require'telescope.builtin'.help_tags()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fh**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>fh `<cmd>lua require'telescope.builtin'.oldfiles()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fb**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>fb` <cmd>lua require'telescope.builtin'.marks()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fe**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>fe` <cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fp**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>fp` <cmd>lua require'telescope'.extensions.project.project{}<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fr**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>fr` <cmd>lua require'telescope'.extensions.frecency.frecency()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fm**</kbd>                       | `nnoremap`                                                   | **nnoremap `<leader>fm` <cmd>lua require'telescope'.extensions.media_files.media_files()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fn**</kbd>                       | `nnoremap`                                                   | **nnoremap`<leader>fn` <cmd>lua require'telescope'.extensions.notify.notify()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fde**</kbd>                      | `nnoremap`                                                   | **nnoremap `<leader>fde` <cmd>lua require'telescope'.extensions.dap.commands()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdc**</kbd>                      | `nnoremap`                                                   | **nnoremap `<leader>fdc `<cmd>lua require'telescope'.extensions.dap.configurations()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdb**</kbd>                      | `nnoremap`                                                   | **nnoremap `<leader>fdb`<cmd>lua require'telescope'.extensions.dap.list_breakpoints()<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdv**</kbd>                      | `nnoremap`                                                   | **nnoremap `<leader>fdv` <cmd>lua require'telescope'.extensions.dap.variables()<CR>>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**fdf**</kbd>                      | `nnoremap`                                                   | **nnoremap `<leader>fdf `<cmd>lua require'telescope'.extensions.dap.frames()<CR>**<br /> |

### nvim-telescope

| Key                     | Mode        | **Action**                                                   |
| ----------------------- | ----------- | ------------------------------------------------------------ |
| <kbd>**C-n**</kbd>      | `nmap,imap` | **["<C-n>"] = actions.cycle_history_next,**                  |
| <kbd>**C-p**</kbd>      | `nmap,imap` | **["<C-p>"] = actions.cycle_history_prev,**                  |
| <kbd>**C-j**</kbd>      | `nmap,imap` | **["<C-j>"] = actions.move_selection_next,**                 |
| <kbd>**C-k**</kbd>      | `nmap,imap` | **["<C-k>"] = actions.move_selection_previous,**             |
| <kbd>**C-d**</kbd>      | `nmap,imap` | **["<C-d>"] = actions.close,**                               |
| <kbd>**Down**</kbd>     | `nmap,imap` | **["<Down>"] = actions.move_selection_next,**                |
| <kbd>**Up**</kbd>       | `nmap,imap` | **["<Up>"] = actions.move_selection_previous,**              |
| <kbd>**CR**</kbd>       | `nmap,imap` | **["<CR>"] = actions.select_default,**                       |
| <kbd>**Up**</kbd>       | `nmap,imap` | **["<Up>"] = actions.move_selection_previous,**              |
| <kbd>**C-s**</kbd>      | `nmap,imap` | **["<C-s>"] = actions.select_horizontal,**                   |
| <kbd>**C-t**</kbd>      | `nmap,imap` | **["<C-t>"] = actions.select_tab,**                          |
| <kbd>**PageUp**</kbd>   | `nmap,imap` | **["<PageUp>"] = actions.results_scrolling_up,**             |
| <kbd>**PageDown**</kbd> | `nmap,imap` | **["<PageDown>"] = actions.results_scrolling_down,**         |
| <kbd>**Tab**</kbd>      | `nmap,imap` | **["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,** |
| <kbd>**S-Tab**</kbd>    | `nmap,imap` | **["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,** |
| <kbd>**C-q**</kbd>      | `nmap,imap` | **["<C-q>"] = actions.send_to_qflist + actions.open_qflist,** |
| <kbd>**M-q**</kbd>      | `nmap,imap` | **["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,** |
| <kbd>**C-l**</kbd>      | `nmap,imap` | **["<C-l>"] = actions.complete_tag,**                        |
| <kbd>**C-_**</kbd>      | `nmap,imap` | **["<C-_>"] = actions.which_key, -- keys from pressing <C-/>** |
| <kbd>**m-t**</kbd>      | `nmap,imap` | **["<m-t>"] = trouble.open_with_trouble,**                   |


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

1. 使用`ctrl-n`选择单词
2. 使用`ctrl-down`/`ctrl-up`垂直创建光标
3. 使用`shift`箭头一次选择一个字符
4. 按`n/N`以获取下一个/上一个事件
5. 按`[/]`选择下一个/上一个光标
6. 按`q`键跳过当前事件并获取下一个事件
7. 按`Q`键删除当前光标/所选内容
8. 用`i,a,I,A`启动插入模式

### toggleterm 

| Key                                    | Mode        | **Action**                                                   |
| -------------------------------------- | ----------- | ------------------------------------------------------------ |
| <kbd>**c-t**</kbd>                     | `tnoremap ` | **tnoremap <silent>`<c-t>` <Cmd>exe v:count1 . "ToggleTerm"<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**tt**</kbd> | `tnoremap ` | **nnoremap <silent>`<leader>tt` <Cmd>exe v:count1 . "ToggleTerm"<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**tt**</kbd> | `inoremap`  | **inoremap <silent>`<leader>tt` <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>**<br /> |
| <kbd>**,**</kbd>**+**<kbd>**gg**</kbd> | `nnoremap ` | **nnoremap <silent>`<leader>gg` <Cmd>lua _LAZYGIT_TOGGLE()<CR>**<br /> |

### nvim-tree

| Key                                    | Mode        | **Action**                                          |
| -------------------------------------- | ----------- | --------------------------------------------------- |
| <kbd>**,**</kbd>**+**<kbd>**nt**</kbd> | `nnoremap ` | **nnoremap `<leader>nt` :NvimTreeToggle<CR>**<br /> |

`nvim-tree` 可以执行常见的 创建 、删除、拷贝、剪切 文件等操作

- `o` 打开关闭文件夹
- `a` 创建文件
- `r` 重命名
- `x` 剪切
- `c` 拷贝
- `p` 粘贴
- `d` 删除

### smart-splits

| Key                    | Mode   | **Action**                                                   |
| ---------------------- | ------ | ------------------------------------------------------------ |
| <kbd>**A-Left**</kbd>  | `nmap` | **nmap `<A-Left>` :lua require('smart-splits').resize_left()<CR>**<br /> |
| <kbd>**A-Down**</kbd>  | `nmap` | **nmap `<A-Down>` :lua require('smart-splits').resize_down()<CR>**<br /> |
| <kbd>**A-Up**</kbd>    | `nmap` | **nmap `<A-Up>` :lua require('smart-splits').resize_up()<CR>**<br /> |
| <kbd>**A-Right**</kbd> | `nmap` | **nmap `<A-Right>` :lua require('smart-splits').resize_right()<CR>**<br /> |

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

### hop.nvim

| Key              | Mode                                                         | **Action**                        |
| ---------------- | ------------------------------------------------------------ | --------------------------------- |
| <kbd>**f**</kbd> | <span style="display:inline-block;width: 90px">`nnoremap`</span> | **nnoremap `f `<cmd>HopWord<cr>** |
| <kbd>**F**</kbd> | `nnoremap`                                                   | **nnoremap `F `<cmd>HopWord<cr>** |

### vim-translate

| Key                                    | Mode    | **Action**                                       |
| -------------------------------------- | ------- | ------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**ts**</kbd> | `nmap ` | **nmap <silent> `<Leader>ts `<Plug>TranslateW**  |
| <kbd>**,**</kbd>**+**<kbd>**ts**</kbd> | `vmap ` | **vmap <silent> `<Leader>ts` <Plug>TranslateWV** |

### vim-bufferLine 

| Key                                   | Mode          | **Action**                                                   |
| ------------------------------------- | ------------- | ------------------------------------------------------------ |
| <kbd>**Tab**</kbd>                    | `nmap  `      | **nmap `<Tab>` :BufferLineCycleNext<CR>**                    |
| <kbd>**S-Tab**</kbd>                  | `nmap  `      | **nmap `<S-Tab>` :BufferLineCyclePrev<CR>**                  |
| <kbd>**,**</kbd>**+**<kbd>**1**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>1` <Cmd>BufferLineGoToBuffer 1<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**2**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>2` <Cmd>BufferLineGoToBuffer 2<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**3**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>3` <Cmd>BufferLineGoToBuffer 3<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**4**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>4` <Cmd>BufferLineGoToBuffer 4<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**5**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>5` <Cmd>BufferLineGoToBuffer 5<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**6**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>6` <Cmd>BufferLineGoToBuffer 6<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**7**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>7` <Cmd>BufferLineGoToBuffer 7<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**8**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>8` <Cmd>BufferLineGoToBuffer 8<CR>** |
| <kbd>**,**</kbd>**+**<kbd>**9**</kbd> | `nnoremap   ` | **nnoremap <silent>`<leader>9` <Cmd>BufferLineGoToBuffer 9<CR>** |

### vim-sneak 

| Key              | Mode   | **Action**                     |
| ---------------- | ------ | ------------------------------ |
| <kbd>**f**</kbd> | `map ` | ~~**map ` f` <Plug>Sneak_f**~~ |
| <kbd>**F**</kbd> | `map ` | ~~**map `F` <Plug>Sneak_F**~~  |
| <kbd>**t**</kbd> | `map ` | ~~**map `t` <Plug>Sneak_t**~~  |
| <kbd>**T**</kbd> | `map ` | ~~**map `T` <Plug>Sneak_T**~~  |

### lsp

| Key                                                          | Mode                                                         | **Action**                                                   |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <kbd>**gD**</kbd>                                            | <span style="display:inline-block;width: 50px">`nmap`</span> | **buf_set_keymap("n", `"gD"`, "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)** |
| <kbd>**gd**</kbd>                                            | `nmap  `                                                     | **buf_set_keymap("n", `"gd"`, "<cmd>lua vim.lsp.buf.definition()<CR>", opts)** |
| <kbd>**gi**</kbd>                                            | `nmap  `                                                     | **buf_set_keymap("n",` "gi"`, "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)** |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**wa**</kbd></span> | `nmap  `                                                     | **buf_set_keymap("n", `"<leader>wa"`, "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)** |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**wr**</kbd></span> | `nmap  `                                                     | **buf_set_keymap("n", `"<leader>wr"`, "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)** |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**wl**</kbd></span> | `nmap  `                                                     | **buf_set_keymap("n", `"<leader>wl"`, "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)** |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**ca**</kbd></span> | `nmap  `                                                     | **buf_set_keymap("n",` "<leader>ca"`, "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)** |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**e**</kbd></span> | `nmap  `                                                     | **buf_set_keymap("n", `"<leader>e"`, "<cmd>lua vim.diagnostic.open_float()<CR>", opts)** |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**q**</kbd></span> | `nmap  `                                                     | **buf_set_keymap("n",` "<leader>q"`, "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)** |
| <span style="display:inline-block;width: 90px"> <kbd>**,**</kbd>**+**<kbd>**so**</kbd></span> | `nmap  `                                                     | **buf_set_keymap("n", `"<leader>so"`, [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)** |
| <kbd>**gr**</kbd>                                            | `nmap  `                                                     | **buf_set_keymap('n', `'gr'`, '<cmd>lua vim.lsp.buf.references()<CR>', opts)** |
| <kbd>**[d**</kbd>                                            | `nmap  `                                                     | **buf_set_keymap("n", `"[d"`, "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)** |
| <kbd>**]d**</kbd>                                            | `nmap  `                                                     | **buf_set_keymap("n", `"]d"`, "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)** |

### lspsaga 

| Key               | Mode     | **Action**                                                   |
| ----------------- | -------- | ------------------------------------------------------------ |
| <kbd>**rn**</kbd> | `nmap  ` | **buf_set_keymap("n", `"rn"`, "<cmd>Lspsaga rename<cr>", opts)** |
| <kbd>**gx**</kbd> | `nmap  ` | **buf_set_keymap("n", `"gx"`, "<cmd>Lspsaga code_action<cr>", opts)** |
| <kbd>**gx**</kbd> | `xmap  ` | **buf_set_keymap("x", `"gx"`, ":<c-u>Lspsaga range_code_action<cr>", opts)** |
| <kbd>**K**</kbd>  | `nmap  ` | **buf_set_keymap("n", `"K"`, "<cmd>Lspsaga hover_doc<cr>", opts)** |
| <kbd>**go**</kbd> | `nmap  ` | **buf_set_keymap("n", `"go"`, "<cmd>Lspsaga show_line_diagnostics<cr>", opts)** |
| <kbd>**gf**</kbd> | `nmap  ` | **buf_set_keymap("n", `"gf"`, "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)** |

### goto preview 

| Key                | Mode                                                         | **Action**                                                   |
| ------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <kbd>**gpd**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **buf_set_keymap("n", `"gpd"`, "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", opts)** |
| <kbd>**gpi**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **buf_set_keymap("n", `"gpi"`, "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", opts)** |
| <kbd>**gP**</kbd>  | <span style="display:inline-block;width: 50px">`nmap`</span> | **buf_set_keymap("n",`"gP"`,  "<cmd>lua require('goto-preview').close_all_win()<CR>", opts)** |
| <kbd>**gF**</kbd>  | <span style="display:inline-block;width: 50px">`nmap`</span> | **buf_set_keymap("n", `"gF"`, "<cmd>lua require('goto-preview').goto_preview_references()<CR>", opts)** |

### nvim-bqf 

| Key                   | Mode                                                         | **Action**                    |
| --------------------- | ------------------------------------------------------------ | ----------------------------- |
| <kbd>**ctrl-s**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **[`'ctrl-s'`] = 'split'**    |
| <kbd>**ctrl-t**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **[`'ctrl-t'`] = 'tab drop'** |

### nvim-gitsigns

| Key                                    | Mode    | **Action**                                                   |
| -------------------------------------- | ------- | ------------------------------------------------------------ |
| <kbd>**,**</kbd>**+**<kbd>**hs**</kbd> | `nmap ` | **['n `<leader>hs`'] = '<cmd>Gitsigns stage_hunk<CR>**'      |
| <kbd>**,**</kbd>**+**<kbd>**hs**</kbd> | `vmap ` | **['v `<leader>hs`'] = '<cmd>Gitsigns stage_hunk<CR>',**     |
| <kbd>**,**</kbd>**+**<kbd>**hu**</kbd> | `nmap ` | **['n `<leader>hu`'] = '<cmd>Gitsigns undo_stage_hunk<CR>',** |
| <kbd>**,**</kbd>**+**<kbd>**hr**</kbd> | `nmap ` | **['n `<leader>hr`'] = '<cmd>Gitsigns reset_hunk<CR>',**     |
| <kbd>**,**</kbd>**+**<kbd>**hr**</kbd> | `vmap ` | **['v `<leader>hr`'] = '<cmd>Gitsigns reset_hunk<CR>',**     |
| <kbd>**,**</kbd>**+**<kbd>**hR**</kbd> | `nmap ` | **['n `<leader>hR`'] = '<cmd>Gitsigns reset_buffer<CR>',**   |
| <kbd>**,**</kbd>**+**<kbd>**hb**</kbd> | `nmap ` | **['n `<leader>hb`'] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',** |
| <kbd>**,**</kbd>**+**<kbd>**hS**</kbd> | `nmap ` | **['n `<leader>hS`'] = '<cmd>Gitsigns stage_buffer<CR>',**   |
| <kbd>**,**</kbd>**+**<kbd>**hU**</kbd> | `nmap ` | **['n `<leader>hU`'] = '<cmd>Gitsigns reset_buffer_index<CR>',** |
| <kbd>**,**</kbd>**+**<kbd>**gd**</kbd> | `nmap ` | **['n `<leader>gd`'] = '<cmd>Gitsigns diffthis<cr>',**       |
| <kbd>**,**</kbd>**+**<kbd>**gw**</kbd> | `nmap ` | **['n `<leader>gw`'] = '<cmd>Gitsigns toggle_word_diff<cr>',** |
| <kbd>**,**</kbd>**+**<kbd>**gp**</kbd> | `nmap ` | **['n `<leader>gp`'] = '<cmd>Gitsigns preview_hunk<CR>',**   |
| <kbd>**C-U**</kbd>                     | `nmap ` | **['o ih'] = ':`<C-U>`Gitsigns select_hunk<CR>',**           |
| <kbd>**C-U**</kbd>                     | `nmap ` | **['x ih'] = ':`<C-U>`Gitsigns select_hunk<CR>'**            |

### nvim-neoscroll

| Key                   | Mode                                                         | **Action**                                                   |
| --------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| <kbd>**ctrl-u**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', {'-vim.wo.scroll', 'true', '250'}}**            |
| <kbd>**ctrl-d**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', { 'vim.wo.scroll', 'true', '250'}}**            |
| <kbd>**ctrl-b**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '450'}}** |
| <kbd>**ctrl-f**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '450'}}** |
| <kbd>**ctrl-y**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', {'-0.10', 'false', '100'}}**                    |
| <kbd>**ctrl-e**</kbd> | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', { '0.10', 'false', '100'}}**                    |
| <kbd>**zt**</kbd>     | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'zt', {'250'}}**                                          |
| <kbd>**zz**</kbd>     | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'zz', {'250'}}**                                          |
| <kbd>**zb**</kbd>     | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'zb', {'250'}}**                                          |
| <kbd>**gg**</kbd>     | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', {'-2*vim.api.nvim_buf_line_count(0)', 'true', '1', '5', e}}** |
| <kbd>**G**</kbd>      | <span style="display:inline-block;width: 50px">`nmap`</span> | **{'scroll', {'2*vim.api.nvim_buf_line_count(0)', 'true', '1', '5', e}}** |

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
| <kbd>**C-h**</kbd>                     | `nnoremap`              | **nnoremap `<C-h>` <C-w>h**                                  |
| <kbd>**C-j**</kbd>                     | `nnoremap`              | **nnoremap `<C-j>` <C-w>j**                                  |
| <kbd>**C-k**</kbd>                     | `nnoremap`              | **nnoremap `<C-k>` <C-w>k**                                  |
| <kbd>**C-l**</kbd>                     | `nnoremap`              | **nnoremap `<C-l>` <C-w>l**                                  |
| <kbd>**C-q**</kbd>                     | `nnoremap`              | **nnoremap `<C-q>` <C-w>q**                                  |
| <kbd>**(**</kbd>                       | `nnoremap`              | **nnoremap `( `%**                                           |
| <kbd>**)**</kbd>                       | `nnoremap`              | **nnoremap `)` %**                                           |
| <kbd>**TAB**</kbd>                     | `inoremap`              | **`use tab/shift tab to switch coc or native lsp cmp`**<br />**inoremap <silent><expr> `<TAB>` pumvisible() ? "\<C-n>" : "\<TAB>"** |
| <kbd>**S-TAB**</kbd>                   | `inoremap`              | **`use tab/shift tab to switch coc or native lsp cmp`**<br />**inoremap <expr>`<S-TAB>` pumvisible() ? "\<C-p>" : "\<C-h>"** |
| <kbd>**C-a**</kbd>                     | `cnoremap `             | **`cmdline quickly go to head or tail`**<br />**cnoremap `<C-a>` <Home>** |
| <kbd>**C-e**</kbd>                     | `cnoremap `             | **`cmdline quickly go to head or tail`**<br />**cnoremap `<C-e>` <End>** |
| <kbd>**esc**</kbd>                     | `cnoremap `             | **`清除上次搜索高亮显示`**<br />**nnoremap `<esc>` :noh<return><esc>** |

## tmux - 快捷键

###  terminal 常用命令

| tmux [new -s 会话名 -n 窗口名] | 启动新session      |
| ------------------------------ | ------------------ |
| tmux at [-t 会话名]            | 恢复session        |
| tmux ls                        | 列出所有sessions   |
| tmux kill-server               | 关闭整个tmux服务器 |
| tmux kill-session -t 会话名    | 关闭session        |

**prefix ** key set as <kbd>**C-a**</kbd>

### 系统指令

| 前缀               | 指令 | 描述                                   |
| ------------------ | ---- | -------------------------------------- |
| <kbd>**C-a**</kbd> | ?    | 显示快捷键帮助文档                     |
| <kbd>**C-a**</kbd> | d    | 退出 tmux 工作模式，返回 terminal 模式 |
| <kbd>**C-a**</kbd> | D    | 选择要断开的会话                       |
| <kbd>**C-a**</kbd> | z    | 挂起当前会话                           |
| <kbd>**C-a**</kbd> | r    | 强制重载当前会话                       |
| <kbd>**C-a**</kbd> | s    | 显示会话列表用于选择并切换             |
| <kbd>**C-a**</kbd> | :    | 进入命令行模式，此时可直接输入ls等命令 |
| <kbd>**C-a**</kbd> | [    | 进入复制模式，按q退出                  |
| <kbd>**C-a**</kbd> | ]    | 粘贴复制模式中复制的文本               |
| <kbd>**C-a**</kbd> | ~    | 列出提示信息缓存                       |

### 窗口（window）指令

| 前缀               | 指令 | 描述                                     |
| ------------------ | ---- | ---------------------------------------- |
| <kbd>**C-a**</kbd> | c    | 新建窗口                                 |
| <kbd>**C-a**</kbd> | &    | 关闭当前窗口                             |
| <kbd>**C-a**</kbd> | 0~9  | 切换到指定窗口                           |
| <kbd>**C-a**</kbd> | n    | 切换到下一窗口                           |
| <kbd>**C-a**</kbd> | w    | 打开窗口列表，用于且切换窗口             |
| <kbd>**C-a**</kbd> | ,    | 重命名当前窗口                           |
| <kbd>**C-a**</kbd> | .    | 修改当前窗口编号（适用于窗口重新排序）   |
| <kbd>**C-a**</kbd> | f    | 快速定位到窗口（输入关键字匹配窗口名称） |

### 面板（pane）指令：

| 前缀                 | 指令        | 描述                                                         |
| -------------------- | ----------- | ------------------------------------------------------------ |
| <kbd>**C-a**</kbd>   | h           | 当前面板上下一分为二，下侧新建面板                           |
| <kbd>**C-a**</kbd>   | v           | 当前面板左右一分为二，右侧新建面板                           |
| <kbd>**C-a**</kbd>   | x           | 关闭当前面板（关闭前需输入y or n确认）                       |
| <kbd>**C-a**</kbd>   | z           | 最大化当前面板，再重复一次按键后恢复正常（v1.8版本新增）     |
| <kbd>**C-a**</kbd>   | !           | 将当前面板移动到新的窗口打开（原窗口中存在两个及以上面板有效） |
| <kbd>**C-a**</kbd>   | ;           | 切换到最后一次使用的面板                                     |
| <kbd>**C-a**</kbd>   | q           | 显示面板编号，在编号消失前输入对应的数字可切换到相应的面板   |
| <kbd>**Shift**</kbd> | ←           | 向前置换当前面板                                             |
| <kbd>**Shift**</kbd> | →           | 向后置换当前面板                                             |
| <kbd>**C-a**</kbd>   | Ctrl+o      | 顺时针旋转当前窗口中的所有面板                               |
| <kbd>**C-a**</kbd>   | ↑           | 向上切换面板                                                 |
| <kbd>**C-a**</kbd>   | ↓           | 向下切换面板                                                 |
| <kbd>**C-a**</kbd>   | ←           | 向左切换面板                                                 |
| <kbd>**C-a**</kbd>   | →           | 向右切换面板                                                 |
| <kbd>**C-a**</kbd>   | o           | 选择下一面板                                                 |
| <kbd>**C-a**</kbd>   | 空格键      | 在自带的面板布局中循环切换                                   |
| <kbd>**C-a**</kbd>   | Alt+方向键  | 以5个单元格为单位调整当前面板边缘                            |
| <kbd>**C-a**</kbd>   | Ctrl+方向键 | 以1个单元格为单位调整当前面板边缘（Mac下                     |
| <kbd>**C-a**</kbd>   | t           | 显示时钟                                                     |
| <kbd>**C-a**</kbd>   | m           | 关闭开启鼠标控制                                             |



