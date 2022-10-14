require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "c",
    "comment",
    "cpp",
    "css",
    "dart",
    "json",
    "go",
    "gomod",
    "html",
    "json",
    "lua",
    "python",
    "rust",
    "scss",
    "tsx",
    "typescript",
    "yaml"
  },
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true
  }
}
