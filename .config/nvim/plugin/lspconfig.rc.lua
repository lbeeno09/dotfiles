-- Mainly from official documentation

-- Mappings
local opts = { noremap=true, silent=true }
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  -- Enable completion w/ <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Mappings
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set("n", "<space>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "<space>f", vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 150,
}

local wincmd
if vim.fn.has("macunix") then
  wincmd = ""
end
if vim.fn.has("win32") then
  wincmd = ".cmd"
end

-- C/C++
require("lspconfig").clangd.setup {
  on_attach = on_attach,
  flags = lsp_flags,

  cmd = { "clangd" },
  filetypes = { "c", "cpp", "cuda" }
}

-- Go
require("lspconfig").gopls.setup {
  on_attach = on_attach,
  flags = lsp_flags,

  cmd = { "gopls"},
  filetypes = { "go", "gomod", "gowork", "gotmlp" }
}

-- Lua
require("lspconfig").sumneko_lua.setup {
  on_attach = on_attach,
  flags = lsp_flags,

  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { "vim" },
      },
      runtime = {
        -- Tell the language server which version of Lua you're using
        version = "LuaJIT",
      },
      telemetry = {
        enable = false,
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}

-- Python
require("lspconfig").pyright.setup {
  on_attach = on_attach,
  flags = lsp_flags,

  cmd = { "pyright-langserver" .. wincmd, "--stdio" }
}

-- Typescript
require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  flags = lsp_flags,

  cmd = { "typescript-language-server" .. wincmd, "--stdio" },
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" }
}
