# 安装教程
```sh
bash <(curl -s https://raw.githubusercontent.com/505384662/nvim/master/install.sh)
```


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

| Key              | Mode       | **Action**                        |
| ---------------- | ---------- | --------------------------------- |
| <kbd>**f**</kbd> | `nnoremap` | **nnoremap `f `<cmd>HopWord<cr>** |
| <kbd>**F**</kbd> | `nnoremap` | **nnoremap `F `<cmd>HopWord<cr>** |

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
