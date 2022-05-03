require('impatient')
require('core.lsp')
require('core.nvim-lualine')
require('core.nvim-bufferline')
-- 好像没什么卵用啊.
-- require'lspconfig'.bashls.setup{} -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#bashls
require('core.nvim-tree')
require('core.nvim-transparent')
require('core.nvim-cmp')
require('core.nvim-lsp-installer')
require('core.nvim-treesitter')
require('core.nvim-gitsigns')
require('core.nvim-autopairs')
require('core.nvim-lspsaga')
-- require("AGou.nvim-signature")
require('core.nvim-telescope')
require('core.nvim-toggleterm')
require('core.nvim-neoscroll')
-- require('core.nvim-session-manager')
require('core.nvim-whichkey')
require('core.nvim-todo-comments')
require('core.nvim-diffview')
require('core.nvim-zen-mode')
require('core.nvim-indent_blankline')
require('core.nvim-trouble')
require('core.nvim-goto-preview')
require('core.nvim-smart-splits')
require('core.nvim-symbols-outline')
require('nvim-dashboard')
require'hop'.setup{}

-- -------------------------- 其他简单lua插件配置项 --------------------------------------------
-- full hotkeys usage: https://github.com/numToStr/Comment.nvim#-usage
-- gcc: 当前行行注释
-- gcb: 当前行块注释
-- [count]gcc/gcb: 多行块或行注释
-- `gco` - Insert comment to the next line and enters INSERT mode
-- `gcO` - Insert comment to the previous line and enters INSERT mode
-- `gcA` - Insert comment to end of the current line and enters INSERT mode
require('Comment').setup{
        mappings = {
        extended = true,
    },
}
-- --------------------------------------
require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
  '!vim'; -- Exclude vim from highlighting.
  -- Exclusion Only makes sense if '*' is specified!
}
-- --------------------------------------
require("persistence").setup {
    dir = vim.fn.expand(vim.fn.stdpath("config") .. "/sessions/"), -- directory where session files are saved
    options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
}
-- --------------------------------------
local tabnine = require('cmp_tabnine.config')
tabnine:setup({
    max_lines = 1000;
    max_num_results = 20;
    sort = true;
    run_on_every_keystroke = true;
    snippet_placeholder = '..';
    ignored_file_types = { -- default is not to ignore
        -- uncomment to ignore in lua:
        -- lua = true
    };
})

-- --------------------------------------
require("lsp-colors").setup({
    Error = "#db4b4b",
    Warning = "#e0af68",
    Information = "#0db9d7",
    Hint = "#10B981"
})
-- --------------------------------------
-- lua, default settings
-- require("better_escape").setup {
--     mapping = {"jk", "jj"}, -- a table with mappings to use
--     timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
--     clear_empty_lines = false, -- clear line after escaping if there is only whitespace
--     keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
--     -- example
--     -- keys = function()
--     --   return vim.fn.col '.' - 2 >= 1 and '<esc>l' or '<esc>'
--     -- end,
-- }
-- --------------------------------------
require("focus").setup({
    enable = false,
    autoresize = true,
    exclued_filetypes = {"toggleterm", "tagbar", "go"},
    excluded_buftypes = {"help"},
    width = 120,
    minwidth = 80,
    -- height = 40,
    treewidth = 20,
})
-- --------------------------------------
require("nvim-gps").setup({
  icons = {
    ["class-name"] = ' ',      -- Classes and class-like objects
    ["function-name"] = ' ',   -- Functions
    ["method-name"] = ' ',     -- Methods (functions inside class-like objects)
    ["container-name"] = '⛶ ',  -- Containers (example: lua tables)
    ["tag-name"] = '炙',         -- Tags (example: html tags)
    ["object-name"] = ' ',

  }
})
-- --------------------------------------
-- --------------------------------------
-- --------------------------------------
-- --------------------------------------
-- --------------------------------------
-- ----------------------------------------------------------------------
