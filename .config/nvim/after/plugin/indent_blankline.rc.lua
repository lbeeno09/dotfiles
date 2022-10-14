vim.cmd [[highlight IndentBlanklineIndent1 guifg=#e06c75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#e5c07b gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98c379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56b6c2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61afef gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#c678dd gui=nocombine]]

vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6"
  },
  show_current_context = true,
  show_current_context_start = true,
  space_char_blankline = " "
}
