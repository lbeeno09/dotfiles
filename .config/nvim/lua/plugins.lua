vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
  -- Package manager
  use("wbthomason/packer.nvim")
  -- Library
  use("nvim-lua/plenary.nvim") -- neovim functions
  use("kyazdani42/nvim-web-devicons") -- file icons
  -- colorscheme
  use("EdenEast/nightfox.nvim")

  -- statusline
  use("nvim-lualine/lualine.nvim")

  -- vscode-like pictograms
  use("onsails/lspkind.nvim")
  -- completions
  use("L3MON4D3/LuaSnip") -- Snippet
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/nvim-cmp")

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  })
  -- File Explorer
  use("kyazdani42/nvim-tree.lua")

  -- Parentheses
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  -- LSP
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use("neovim/nvim-lspconfig")

  -- lsp ui
  use("glepnir/lspsaga.nvim")

  -- Lint
  use("jose-elias-alvarez/null-ls.nvim")

  -- Fuzzy Finder
  use({ "nvim-telescope/telescope.nvim", tag = "0.1.0" })
  use("nvim-telescope/telescope-file-browser.nvim")

  -- Bufferline
  use({ "akinsho/bufferline.nvim", tag = "v2.*" })

  -- Color highlighter
  use("norcalli/nvim-colorizer.lua")
  -- indent guide
  use("lukas-reineke/indent-blankline.nvim")

  -- Other LSP's
  -- Flutter
  use("akinsho/flutter-tools.nvim")
  -- Markdown preview
  use({
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    run = ":call mkdp#util#install()"
  })
end)
