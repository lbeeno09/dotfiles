require("lspsaga").init_lsp_saga {

}

local opts = { silent=true, noremap=true }
vim.keymap.set("n", "gr", "<cmd>Lspsaga rename<cr>", opts)
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<cr>", opts)
vim.keymap.set("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
vim.keymap.set("n", "<C-k>", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opts)
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<cr>", opts)
vim.keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<cr>", opts)
