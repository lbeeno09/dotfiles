require("nightfox").setup({
  options = {
    dim_inactive = true,
    inverse = {
      match_paren = true
    },
    terminal_colors = true,
    transparent = true
  }
})

vim.cmd("colorscheme nightfox")
