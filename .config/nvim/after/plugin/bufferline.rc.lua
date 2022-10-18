require("bufferline").setup({
  options = {
    hover = {
      enabled = true,
      delay = 200,
      reveal = { "close" }
    },
    separator_style = "slant"
  }
})

vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", {})
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", {})
vim.api.nvim_set_keymap("n", "<space>bb", ":bd<cr>", {})
