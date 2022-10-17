-- Leader
vim.g.mapleader = "<Space>"

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save
vim.keymap.set("i", "<C-s>", "<C-[><cmd>w<cr>")

-- move between wrapped lines
vim.keymap.set("n", "j", "gj", { noremap=true })
vim.keymap.set("n", "k", "gk", { noremap=true })

-- New tab
vim.keymap.set("n", "te", ":tabedit<Return>")
-- Split screen
vim.keymap.set("n", "ss", ":split<Return><C-w>w")
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w")
-- Move window
vim.keymap.set("n", "<Space>", "<C-w>w")
vim.keymap.set("", "s<left>", "<C-w>h")
vim.keymap.set("", "s<down>", "<C-w>j")
vim.keymap.set("", "s<up>", "<C-w>k")
vim.keymap.set("", "s<right>", "<C-w>l")
vim.keymap.set("", "sh", "<C-w>h")
vim.keymap.set("", "sj", "<C-w>j")
vim.keymap.set("", "sk", "<C-w>k")
vim.keymap.set("", "sl", "<C-w>l")

-- Resize window
vim.keymap.set("n", "<C-w><left>", "<C-w><")
vim.keymap.set("n", "<C-w><right>", "<C-w>>")
vim.keymap.set("n", "<C-w><up>", "<C-w>+")
vim.keymap.set("n", "<C-w><down>", "<C-w>-")
