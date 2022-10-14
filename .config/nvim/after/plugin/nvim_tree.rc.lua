vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  view = {
    mappings = {
      list = {
        { key = "<C-t>", action = "close" }
      }
    }
  }
}

vim.keymap.set("n", "<C-t>", ":NvimTreeFocus<cr>")
vim.keymap.set("n", "<C-w>", ":NvimTreeClose<cr>")
