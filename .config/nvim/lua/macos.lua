if vim.fn.has("persistent_undo") then
  vim.opt.undodir = vim.fn.expand("~") .. "/.config//nvim/undo"
  vim.opt.undofile = true
end
