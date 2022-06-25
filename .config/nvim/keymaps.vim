" ================ Hotkey ReMap =====================

" w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" Quicker window movement
nnoremap U <C-r>
" =====================
nmap <A-Left> :lua require('smart-splits').resize_left()<CR>
nmap <A-Down> :lua require('smart-splits').resize_down()<CR>
nmap <A-Up> :lua require('smart-splits').resize_up()<CR>
nmap <A-Right> :lua require('smart-splits').resize_right()<CR>
" delete something without yank

"noremap H ^
"noremap L $
nnoremap / /\v
vnoremap / /\v
vnoremap // y/<c-r>"<cr>
" noremap <C-h> :Goyo<CR>

inoremap jk <ESC>
" inoremap kj <ESC>

" ================
nnoremap <leader>d ::bufdo! bd!<CR>
" add quote for current word
nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>q( ciw()<Esc>P
nnoremap <Leader>q{ ciw{}<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" ========= Trouble plugin settings ========
nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
nnoremap gR <cmd>TroubleToggle lsp_references<cr>

" ========= hop.nvim plugin settings ========
" nnoremap f <cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>
" nnoremap F <cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>
nnoremap f <cmd>HopWord<cr>
nnoremap F <cmd>HopWord<cr>

" ========= vim-translate settings ========
" more settings: https://github.com/voldikss/vim-translator
" Display translation in a window
nmap <silent> <Leader>ts <Plug>TranslateW
vmap <silent> <Leader>ts <Plug>TranslateWV

" ========= vim-bufferLine settings ========
nmap <Tab> :BufferLineCycleNext<CR>
nmap <S-Tab> :BufferLineCyclePrev<CR>
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>

" ========= dap debug settings ========
nnoremap <leader>db <cmd>lua require'dap'.toggle_breakpoint(); require'user.dap.dap-util'.store_breakpoints(true)<cr>
nnoremap<leader>dB" <cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>
" nnoremap <leader>dr <cmd>lua require'dap'.repl.open()<cr>
nnoremap <F9> <cmd>lua require'dap'.run_last()<cr>"
nnoremap <F10> <cmd>lua require"user.dap.dap-util".reload_continue()<CR>
nnoremap <F4> <cmd>lua require'dap'.terminate()<cr>
nnoremap <F5> <cmd>lua require'dap'.continue()<cr>
nnoremap <F6> <cmd>lua require'dap'.step_over()<cr>
nnoremap <F7> <cmd>lua require'dap'.step_into()<cr>
nnoremap <F8> <cmd>lua require'dap'.step_out()<cr>
nnoremap K <cmd>lua require'dapui'.eval()<cr>
" nnoremap <leader>dt <cmd>lua require'dapui'.toggle()<cr>
" nnoremap <leader>dx <cmd>lua require'dap'.terminate()<cr>

" ========= vim-sneak settings ========
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T

" =========================================
" Auto indent pasted text
"nnoremap p p=`]<C-o>
"nnoremap P P=`]<C-o>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-q> <C-w>q
"nnoremap p ]p
"nnoremap P [p
nnoremap ( %
nnoremap ) %

" unset highlight
" nnoremap <silent>no <cmd>noh<CR>

" use tab/shift tab to switch coc or native lsp cmp
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" cmdline quickly go to head or tail
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" nnoremap - :Explore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
autocmd FileType netrw setl bufhidden=delete

"-- netrw END

" turn off direction keyboard, force yourself use `hjkl` !!!
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" 清除上次搜索高亮显示
nnoremap <esc> :noh<return><esc>

" custom command
" 避免手残输错
command W w
command WQ wq
command Wq wq
command QA qa
