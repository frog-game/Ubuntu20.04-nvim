local nvim_lsp = require("lspconfig")

-- 在语言服务器附加到当前缓冲区之后
-- 使用 on_attach 函数仅映射以下键
Itkey_on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end
  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings.
  local opts = {noremap = true, silent = true}

 buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
 buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
 buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  -- map(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
 buf_set_keymap("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
 buf_set_keymap("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
 buf_set_keymap("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
 buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
 buf_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
 buf_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
 buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
 buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
 buf_set_keymap("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
 buf_set_keymap("n", "<leader>so", [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)

  -- lspsaga keymappings
  buf_set_keymap("n", "rn", "<cmd>Lspsaga rename<cr>", opts)
  buf_set_keymap("n", "gx", "<cmd>Lspsaga code_action<cr>", opts)
  buf_set_keymap("x", "gx", ":<c-u>Lspsaga range_code_action<cr>", opts)
  buf_set_keymap("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
  buf_set_keymap("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", opts)
  buf_set_keymap("n", "gf", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>", opts)

  -- goto preview keymappigs
   buf_set_keymap("n", "gpd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", opts)
   buf_set_keymap("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", opts)
   buf_set_keymap("n", "gP",  "<cmd>lua require('goto-preview').close_all_win()<CR>", opts)
   buf_set_keymap("n", "gF", "<cmd>lua require('goto-preview').goto_preview_references()<CR>", opts)
end

 -- 代码保存自动格式化formatting
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> EslintFixAll]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = {"markdown", "plaintext"}
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = {valueSet = {1}}
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits"
  }
}
Itkey_capabilities = capabilities
---------------分割线-------------

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
--local sumneko_root_path = vim.fn.stdpath('config')..'/lsp/lua-language-server'
local sumneko_root_path = vim.fn.stdpath("data") .. "/lsp/lua-language-server"
--local sumneko_root_path = vim.fn.stdpath('cache')..'/lsp/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"
local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require "lspconfig".sumneko_lua.setup {
  on_attach = Itkey_on_attach,
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua", "--locale=zh-cn"},
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "Lua 5.4",
        -- Setup your lua path
        path = runtime_path
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {"vim"}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true)
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false
      }
    }
  },
  capabilities = Itkey_capabilities
}
