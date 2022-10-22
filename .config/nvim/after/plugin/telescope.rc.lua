local ok, telescope = pcall(require, "telescope")
if (not ok) then
  print("telescope not installed")
  return
end
local actions = require("telescope.actions")
local fb_actions = telescope.extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      }
    }
  },
  pickers = {
    buffers = {
    }
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["n"] = {
          ["N"] = fb_actions.create,
          ["X"] = fb_actions.remove,
          ["R"] = fb_actions.rename
        }
      }
    }
  }
}
telescope.load_extension("file_browser")

local opts = { noremap = true, silent = true }
vim.keymap.set("n", ";ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
vim.keymap.set("n", ";fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
vim.keymap.set("n", ";fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
vim.keymap.set("n", ";fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
vim.keymap.set("n", "<space>ff", ":Telescope file_browser initial_mode=normal hidden=true<cr>", opts)
