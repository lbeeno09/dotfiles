if vim.fn.has("persistent_undo") then
  vim.opt.undodir = vim.fn.expand("~") .. "/AppData/Local/nvim/undo"
  vim.opt.undofile = true
end
