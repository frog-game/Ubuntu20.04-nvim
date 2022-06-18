set nocompatible              " be iMproved, required

" ============================== Plugin packages ============================== 
" Begin Plug, Depends On https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" ========= colorscheme here. ==========
Plug 'joshdick/onedark.vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'EdenEast/nightfox.nvim'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'EdenEast/nightfox.nvim'

" ========= appearence here. ==========

Plug 'xiyaowong/nvim-transparent'
" Plug 'junegunn/goyo.vim'
Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
" welcome page
" Plug 'mhinz/vim-startify'
" Speed up Neovim.
Plug 'lewis6991/impatient.nvim'

" ========= useful tools here. ==========

" windows size auto resize
Plug 'camspiers/lens.vim'
Plug '907th/vim-auto-save'
Plug 'preservim/tagbar'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }

Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'm-demare/hlargs.nvim'

" Plug 'sheerun/vim-polyglot'

" Plug 'voldikss/vim-floaterm'
Plug 'akinsho/toggleterm.nvim'
" not longer use fzf, just use telescope
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

" All the lua functions.
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope-hop.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-telescope/telescope-dap.nvim'
Plug 'rcarriga/nvim-notify'
Plug 'mfussenegger/nvim-dap'
Plug 'airblade/vim-rooter'

Plug 'simrat39/symbols-outline.nvim'

" Plug 'Yggdroot/indentLine'
Plug 'itchyny/vim-cursorword'

" Vim plugin for automatically highlighting other uses of the current word under the cursor
" Plug 'rrethy/vim-illuminate'
Plug 'ryanoasis/vim-devicons'
Plug 'sebdah/vim-delve'
" scroll bar
Plug 'Xuyuanp/scrollbar.nvim'
" smmoth scroll: :h scroll.txt  for help
" Plug 'psliwka/vim-smoothie'
Plug 'karb94/neoscroll.nvim'
" Easily speed up your neovim startup time!
Plug 'dstein64/vim-startuptime'
Plug 'nathom/filetype.nvim'
Plug 'numToStr/Comment.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" session manager
Plug 'folke/persistence.nvim'

Plug 'folke/which-key.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'folke/zen-mode.nvim'
" works with zen-mode
Plug 'folke/twilight.nvim'
" dashboard
Plug 'goolord/alpha-nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'voldikss/vim-translator'

" conflict with goto-preview plugin, fuckkkkkk.
Plug 'beauwilliams/focus.nvim'
" not working.....
" Plug 'edluffy/specs.nvim'
Plug 'danilamihailov/beacon.nvim'
Plug 'hrsh7th/vim-searchx'

" Plug 'justinmk/vim-sneak'
" Plug 'ggandor/leap.nvim'
Plug 'mrjones2014/smart-splits.nvim'
Plug 'SmiteshP/nvim-gps'
Plug 'kevinhwang91/nvim-hlslens'
Plug 'phaazon/hop.nvim'

" auto indent different type of file.
" Plug 'tpope/vim-sleuth'

" ========= programming tools here. ==========

Plug 'dense-analysis/ale'

" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lewis6991/gitsigns.nvim'

Plug 'folke/trouble.nvim'
Plug 'rmagatti/goto-preview'
Plug 'github/copilot.vim'
"格式化
"Plug 'mhartington/formatter.nvim'

"language
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-calc'
Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'onsails/lspkind-nvim'
Plug 'tami5/lspsaga.nvim'
Plug 'ray-x/lsp_signature.nvim'
"Plug 'folke/lsp-colors.nvim' " lsp-color not support gruvbox_material colorscheme

" Plug 'uga-rosa/cmp-dictionary'
"Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' } "电脑性能太差，换电脑在加这个AI 加的时候搜索关键字tabnine 把相关注释的都打开
Plug 'octaltree/cmp-look'

"rnvimr
Plug 'kevinhwang91/rnvimr'

"批量替换文字
"Plug 'brooth/far.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-spectre'

"文本对齐插件
Plug 'junegunn/vim-easy-align'

"底部栏
"Plug 'nvim-lualine/lualine.nvim'
"Plug 'feline-nvim/feline.nvim'
Plug 'glepnir/spaceline.vim'
Plug 'ryanoasis/vim-devicons'

"自动保存
Plug 'Pocco81/AutoSave.nvim'

"撤销
 "Plug 'mbbill/undotree'
 
 "格式化
 Plug 'sbdchd/neoformat'

"quickfix window better
Plug 'kevinhwang91/nvim-bqf', { 'run': ':TSUpdate' }
    
call plug#end()

" ============================== END Plugin packages ============================== 
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
let b:copilot_enabled = v:false


" ============================== Pre settings ============================== 
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif
" ============================== END Pre settings ============================== 

" ============================== General settings ============================== 
" 为了避免出错,我把通用配置项放在前面,一般来说你不需要更改这个文件.
if filereadable($HOME . "/.config/nvim/general.vim")
    source $HOME/.config/nvim/general.vim
endif
" ============================== END General settings ============================== 

" ============================== Colorscheme settings ============================== 
" colorscheme gruvbox
 colorscheme onedark
" set bg=dark
" let g:onedark_termcolors=256
" ===========================
" Example config in VimScript
" let g:tokyonight_style = "night"
" let g:tokyonight_italic_functions = 1
" let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
" " 
 "  Change the "hint" color to the "orange" color, and make the "error" color bright red
" let g:tokyonight_colors = {
"   \ 'hint': 'orange',
"    \ 'error': '#ff0000'
"  \ }
"  colorscheme tokyonight
" " ============================
"colorscheme Duskfox
" " ============================
" " ========= gruvbox_material settings =======
" " https://github.com/sainnhe/gruvbox-material/blob/master/doc/gruvbox-material.txt
" " Important!!
" if has('termguicolors')
"     set termguicolors
" endif
" " For dark version.
"set background=dark
" For light version.
" set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'hard'
" let g:gruvbox_material_enable_italic = 1
" let g:gruvbox_material_enable_bold = 1
" only support GUI client
" let g:gruvbox_material_cursor = 'auto'
" let g:gruvbox_material_transparent_background = 0
" let g:gruvbox_material_menu_selection_background = 'green'
" let g:gruvbox_material_ui_contrast = 'high'
" let g:gruvbox_material_diagnostic_text_highlight = 1
" let g:gruvbox_material_better_performance = 1

" colorscheme gruvbox-material

" original colorscheme gruvbox configuration: https://github.com/morhetz/gruvbox/wiki/Configuration
"colorscheme gruvbox

" ============================== END colorscheme settings ============================== 
"
" ============================== Plugins settings ============================== 

 "============================neoformat settings ==========
 let g:neoformat_json_jsonpp = {
      \ 'exe': "json_pp",
      \ 'args': ['-json_opt', 'utf8,pretty'],
      \ 'stdin': 1
      \ }

let g:neoformat_enabled_json = ['jsonpp']

let g:neoformat_lua_luafmt = {
      \ 'exe': "luafmt",
      \ 'args': ['--stdin'],
      \ 'stdin': 1
      \ }

let g:neoformat_enabled_lua = ['luafmt']

" ========= nvim-notify settings ==========
nnoremap <leader>fn :Telescope notify<CR> 

" ========= spaceline.vim settings ==========
 let g:spaceline_seperate_style= 'arrow'
 let g:spaceline_git_branch_icon= ''
    
" ========= vim-easy-align settings ==========
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ========= far settings ==========
"let g:far#enable_undo=1

" ========= nvim-spectre settings ==========
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <cmd>lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" run command :Spectre

" ========= rnvimr settings ==========
Plug 'kevinhwang91/rnvimr'

" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Replace `$EDITOR` candidate with this command to open the selected file
let g:rnvimr_edit_cmd = 'drop'

" Disable a border for floating window
let g:rnvimr_draw_border = 0

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 15, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Add a shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 70

" Draw border with both
let g:rnvimr_ranger_cmd = ['ranger', '--cmd=set draw_borders both']

" Link CursorLine into RnvimrNormal highlight in the Floating window
highlight link RnvimrNormal CursorLine

nnoremap <silent> <M-o> :RnvimrToggle<CR>
tnoremap <silent> <M-o> <C-\><C-n>:RnvimrToggle<CR>

" Resize floating window by all preset layouts
tnoremap <silent> <M-i> <C-\><C-n>:RnvimrResize<CR>

" Resize floating window by special preset layouts
tnoremap <silent> <M-l> <C-\><C-n>:RnvimrResize 1,8,9,11,5<CR>

" Resize floating window by single preset layout
tnoremap <silent> <M-y> <C-\><C-n>:RnvimrResize 6<CR>

" Map Rnvimr action
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }

" Add views for Ranger to adapt the size of floating window
let g:rnvimr_ranger_views = [
            \ {'minwidth': 90, 'ratio': []},
            \ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
            \ {'maxwidth': 49, 'ratio': [1]}
            \ ]

" Customize the initial layout
let g:rnvimr_layout = {
            \ 'relative': 'editor',
            \ 'width': float2nr(round(0.7 * &columns)),
            \ 'height': float2nr(round(0.7 * &lines)),
            \ 'col': float2nr(round(0.15 * &columns)),
            \ 'row': float2nr(round(0.15 * &lines)),
            \ 'style': 'minimal'
            \ }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {'width': 0.600, 'height': 0.600},
            \ {},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}
            \ ]

" Fullscreen for initial layout
" let g:rnvimr_layout = {
"            \ 'relative': 'editor',
"            \ 'width': &columns,
"            \ 'height': &lines - 2,
"            \ 'col': 0,
"            \ 'row': 0,
"            \ 'style': 'minimal'
"            \ }
"
" Only use initial preset layout
" let g:rnvimr_presets = [{}]

" ========= telescope settings ==========
let g:rooter_patterns = ['.git', '.svn', 'package.json', '!node_modules']
nnoremap <expr><leader>ff ':Telescope find_files cwd='.FindRootDirectory().'/<cr>'
nnoremap <leader>fg <cmd>lua require'telescope.builtin'.live_grep()<CR>
nnoremap <leader>f? <cmd>lua require'telescope.builtin'.help_tags()<CR>
nnoremap <leader>fh <cmd>lua require'telescope.builtin'.oldfiles()<CR>
nnoremap <leader>fb <cmd>lua require'telescope.builtin'.marks()<CR>
nnoremap <leader>fe <cmd>lua require 'telescope'.extensions.file_browser.file_browser()<CR>
nnoremap <leader>fp <cmd>lua require'telescope'.extensions.project.project{}<CR>
nnoremap <leader>fr <cmd>lua require'telescope'.extensions.frecency.frecency()<CR>
nnoremap <leader>fm <cmd>lua require'telescope'.extensions.media_files.media_files()<CR>
nnoremap <leader>fn <cmd>lua require'telescope'.extensions.notify.notify()<CR>
nnoremap <leader>fde <cmd>lua require'telescope'.extensions.dap.commands()<CR>
nnoremap <leader>fdc <cmd>lua require'telescope'.extensions.dap.configurations()<CR>
nnoremap <leader>fdb <cmd>lua require'telescope'.extensions.dap.list_breakpoints()<CR>
nnoremap <leader>fdv <cmd>lua require'telescope'.extensions.dap.variables()<CR>
nnoremap <leader>fdf <cmd>lua require'telescope'.extensions.dap.frames()<CR>

" ========= indentline settings ==========
" " let g:indentLine_char_list = ['|', '¦', '┆', '┊']
" let g:indentLine_char = '┆'
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
"
" " disable by default
" let g:transparent_enabled = v:false
" " not working on macOS, change color for indentLine
" let g:indentLine_setColors = 0
" more simple method to achieve indentline
" set list lcs=tab:\┆\ 

" ========= autopairs settings ==========
" defalut options

let g:indent_blankline_disable_with_nolist = v:true


" ========= beacon settings ==========
" https://github.com/DanilaMihailov/beacon.nvim
" highight Beacon guibg=white ctermbg=15l
let g:beacon_size = 80
" let g:beacon_show_jumps = 0


" ========= startuptime settings ==========
let g:startuptime_tries = 3

" which-key plugin timeout delay.
set timeoutlen=200

" ========= simrat39/symbols-outline settings ==========
nnoremap <C-p> :SymbolsOutline<CR>

" ========= nvim-cmp settings ==========
set completeopt=menu,menuone,noselect

" ========= goyo settings ==========
" let g:goyo_width = '60%'
" let g:goyo_height = '85%'
" " line number
" let g:goyo_linenr = 0

" ========= firenvim settings ==========
" if exists('g:started_by_firenvim')
"   set guifont=Fira_Code:h30
" end

" ========= gitblame settings ==========
let g:gitblame_enabled = 1
let g:gitblame_message_template = '     ◆ <summary> • <date> • <author>     '
let g:gitblame_date_format = '%r'
" let g:gitblame_highlight_group = "Question"
highlight default link Visual default

" ========= auto-session settings ==========
" let g:auto_session_root_dir = '~/.vim/sessions/'
" nnoremap <leader>ss <cmd>SaveSession<CR>
nnoremap <leader>sd <cmd>!rm -f ~/.config/nvim/sessions/*<CR>

" ========= persistence(auto session) settings ==========
" restore the session for the current directory
nnoremap <leader>ss <cmd>lua require("persistence").load()<CR>
" restore the last session
nnoremap <leader>sl <cmd>lua require("persistence").load({ last = true })<CR>
" stop Persistence => session won't be saved on exit
nnoremap <leader>s <cmd>lua require("persistence").stop()<CR>

" ========= vim-visual-multi settings ==========
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-m>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-m>'           " replace visual C-n
let g:VM_mouse_mappings = 1
" ========= wilder command bar settings ==========
" Default keys

call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('pipeline', [
      \   wilder#branch(
      \     wilder#python_file_finder_pipeline({
      \       'file_command': ['rg', '--files'],
      \       'dir_command': ['find', '.', '-type', 'd', '-printf', '%P\n'],
      \       'filters': ['fuzzy_filter', 'difflib_sorter'],
      \     }),
      \     wilder#cmdline_pipeline(),
      \     wilder#python_search_pipeline(),
      \   ),
      \ ])
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
            \ 'border': 'rounded',
            \ 'highlighter': wilder#basic_highlighter(),
            \ 'highlights': {
                \   'border': 'Normal',
                \   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
                \ },
                \ 'left': [
                    \   ' ', wilder#popupmenu_devicons(),
                    \ ],
                    \ 'right': [
                        \   ' ', wilder#popupmenu_scrollbar(),
                        \ ],
                        \ })))

" ========= scrollbar settings ==========
" more settings --> :h Scrollbar.nvim
augroup ScrollbarInit
    autocmd!
    autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
    autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
    autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

let g:scrollbar_shape = {
            \ 'head': '█',
            \ 'body': '█',
            \ 'tail': '█',
            \ }

" ========= lspsaga.nvim settings ==========
"highlight link LspSagaFinderSelection Search
" or
" highlight link LspSagaFinderSelection guifg='#ff0000' guibg='#00ff00' gui='bold'
"
" ========= coc.nvim witelist CocGroup
" augroup CocGroup
"   autocmd!
"   " disable coc.nvim
"   autocmd BufNew,BufRead,BufReadPost * execute "CocDisable"
"   " witelist below
"   autocmd BufNew,BufEnter,BufRead,BufReadPost *.go execute "CocDisable"
" augroup end
" ========= END coc.nvim witelist settings ==========

" ========= illuminate settings ==========
" Time in milliseconds (default 0)
let g:Illuminate_delay = 3000
hi illuminatedWord cterm=underline gui=underline
" hi illuminatedCurWord cterm=italic gui=italic
" augroup illuminate_augroup
"     autocmd!
"     autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
" augroup END

" ============ echodoc.vim settings =======
" set cmdheight=2

" Or, you could use neovim's floating text feature.
" let g:echodoc#enable_at_startup = 1
" let g:echodoc#type = 'floating'
" " To use a custom highlight for the float window,
" " change Pmenu to your highlight group
" highlight link EchoDocFloat Pmenu

" ============= go.nvim settings ==========
" autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
" require('go').setup()
"

" ============= vim-move settings ==========
let g:move_key_modifier = 'C'

" ========= floaterm settings[NOT USED] ==========
" autocmd User FloatermOpen        " triggered after opening a new/existed floaterm
" hi FloatermNC guibg=gray

" ========= toggleterm settings ==========
autocmd TermEnter term://*toggleterm#*
            \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><leader>tt <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><leader>tt <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
nnoremap <silent><leader>gg <Cmd>lua _LAZYGIT_TOGGLE()<CR>

" ========= current cursor settings ==========
" " Twins of word under cursor:
" let g:vim_current_word#highlight_twins = 1
" The word under cursor:
" let g:vim_current_word#highlight_current_word = 1
" autocmd BufAdd NERD_tree_*,your_buffer_name.rb,*.js :let b:vim_current_word_disabled_in_this_buffer = 1
" " hi CurrentWord ctermbg=53
" " hi CurrentWordTwins ctermbg=237
" " let g:vim_current_word#highlight_only_in_focused_window = 1
" " hi CurrentWordTwins guifg=#XXXXXX guibg=#XXXXXX gui=underline,bold,italic ctermfg=XXX ctermbg=XXX cterm=underline,bold,italic
" hi CurrentWord guifg=0 guibg=163 gui=underline,bold,italic ctermfg=0 ctermbg=163 cterm=underline,bold,italic

" ========== vim-cursor settings ===========
" let g:cursorword_highlight = 0
let g:cursorword_delay = 0
" autocmd Colorscheme * highlight CursorWord0 cterm=underline gui=underline ctermbg=52 guibg=#303030
" autocmd Colorscheme * highlight CursorWord1 cterm=underline gui=underline ctermbg=52 guibg=#303030
" highlight CursorWord0 cterm=underline gui=underline guisp=#ebcb8b
" highlight CursorWord1 cterm=underline gui=underline guisp=#ebcb8b
" augroup cursorword
"   autocmd!
"   autocmd VimEnter,ColorScheme * call MyHighlight()
" augroup END
" 
" function! MyHighlight() abort
"   highlight CursorWord0 cterm=bold,underline gui=bold,underline
" 
"   redir => out
"     silent! highlight CursorLine
"   redir END
"   execute 'highlight CursorWord1 cterm=underline gui=underline'
"     \ matchstr(out, 'ctermbg=#\?\w\+')
"     \ matchstr(out, 'guibg=#\?\w\+')
" endfunction

" ========== vim-cursor settings ===========
" lua require("lsp_config")
" 
" autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
" autocmd BufWritePre *.go lua goimports(1000)


" autocmd vimenter * NERDTree       " NERDTree automatically when vim starts up
" map <C-n> :NERDTreeToggle<CR>
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 
" " auto refresh nerdtree when file changed
" autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

" !! 弃用NerdTree 改为下面的nvim-tree.lua
" ==========
" map <C-n> :call NERDTreeToggleAndRefresh()<CR>
" set splitright        " nerdtree split right instead of left
" 
" function NERDTreeToggleAndRefresh()
"   :NERDTreeToggle
"   if g:NERDTree.IsOpen()
"     :NERDTreeRefreshRoot
"   endif
" endfunction
" =========

" autoload vim-workspace plugin
" let g:workspace_autocreate = 1
" nnoremap <leader>f :ToggleWorkspace<CR>
" let g:workspace_session_name = 'Session.vim'
" let g:workspace_autosave_always = 1
" let g:workspace_session_directory = $HOME . '/.vim/sessions/'
"
" ========== nvim-tree.lua settings ===========
nnoremap <C-n> :NvimTreeToggle<CR>
set termguicolors " this variable must be enabled for colors to be applied properly

set t_Co=256

" --------- nerdcommenter plguin settings
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" ============================== END Plugins settings ============================== 


" ============================== Autocmd/Function settings ============================== 
"autocmd ColorScheme * runtime lua/vim/lsp/diagnostic.lua

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
" auto reload when modified vimrc file (Windows)
" autocmd! bufwritepost _vimrc source %
" auto reload when modified vimrc file (Linux)
autocmd! bufwritepost $HOME/.config/nvim/init.vim source %

" some error occur
" au CursorHold * checktime  
" autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" notification after file change
autocmd FileChangedShellPost *
            \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
" --------------------------------------------------------------------------------------------

" au FocusLost * :set norelativenumber number
" au FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber number    " use absolute line number.
autocmd InsertLeave * :set relativenumber
" function! NumberToggle()
"     if(&relativenumber == 1)
"         set norelativenumber number
"     else
"         set relativenumber
"     endif
" endfunc
" remap <C-n> to switch between relative and absolute line number.
" nnoremap <C-n> :call NumberToggle()<cr>

" ============= Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
elseif filereadable(expand("~/.config/nvim/vimrc.bundles")) " neovim
    source ~/.config/nvim/vimrc.bundles
endif
au BufNewFile,BufRead *.vundle set filetype=vim

" ================ Persistent Undo ==================
"if has("persistent_undo")
  " UndotreeTogglelet target_path = expand('~/.vim/backups')

    " create the directory and any parent directories
    " if the location does not exist.
   " if !isdirectory(target_path)
      "  call mkdir(target_path, "p", 0700)
   " endif

   " let &undodir=target_path
  "  set undofile
"endif

" indent for different filetype
autocmd FileType php,ruby,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

filetype plugin on
filetype indent on
filetype on
filetype plugin indent on


if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

" Automatically set paste mode in Vim when pasting in insert mode
function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" delete Redundant Space when saving Python file
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

autocmd FileType go nmap <Leader>rr :!go run %<CR>
autocmd FileType go nmap <Leader>r :!go run .<CR>
autocmd FileType go nmap <Leader>gt :!go test -v .<CR>

autocmd FileType html nmap <Leader>rh :!npx http-server .<CR>

" ============================== END Autocmd settings ============================== 


" ============================== External Lua settings ============================== 
lua require('core')
" ============================== END External Lua settings ============================== 

" ============================== External settings ============================== 
"
" =========  external keymap settings ==========
if filereadable($HOME . "/.config/nvim/keymaps.vim")
    source $HOME/.config/nvim/keymaps.vim
endif

" 
if filereadable($HOME . "/.config/nvim/shpy-autoheader.vim")
    source $HOME/.config/nvim/shpy-autoheader.vim
endif

" =========== load coc-go plug config ===========
" if filereadable($HOME . ".config/nvim/coc-go.vim")
"     source ~/.config/nvim/coc-go.vim
" endif

" ========= Other custom external setting config(Optional) ==========
if filereadable($HOME . "/.config/nvim/custom.vim")
    source $HOME/.config/nvim/custom.vim
endif

"开启光亮光标行
set cursorline 
hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE  guibg=black guifg=NONE  
highlight Normal guibg=NONE ctermbg=None

" ============================== THE END. ============================== 
" ====================================================================== 
