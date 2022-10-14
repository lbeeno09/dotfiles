if vim.fn.has("persistent_undo") then
  vim.opt.undodir = "~/.config/nvim/undo"
  vim.opt.undofile = true
end
