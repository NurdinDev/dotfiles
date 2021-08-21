vim.cmd("packadd packer.nvim")
return require("packer").startup(function()
       use({ "wbthomason/packer.nvim", opt = true })

    local config = function(name)
        return string.format("require('plugins.%s')", name)
    end

    local use_with_config = function(path, name)
        use({ path, config = config(name) })
    end
  use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
  use({ "JoosepAlviste/nvim-ts-context-commentstring", ft = { "typescript", "typescriptreact" } }) -- makes jsx comments actually work
  -- use 'ludovicchabant/vim-gutentags' -- Automatic tags management
  use { 'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
      config = config("telescope")
  }
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use { "nvim-telescope/telescope-hop.nvim" }
  use { "nvim-telescope/telescope-arecibo.nvim", rocks = { "openssl", "lua-http-parser" } }
  use "nvim-telescope/telescope-frecency.nvim"
  use "nvim-telescope/telescope-cheat.nvim" -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'  -- Add git related info in the signs columns and popups

  -- git
  use({
     { "lewis6991/gitsigns.nvim", config = config("git") },
     { "tpope/vim-fugitive", requires = "tpope/vim-rhubarb", cmd = "Git" },
  })


  use_with_config("vuki656/package-info.nvim", "package-info") -- show versions in package.json

  -- TREE SITTER
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- LSP
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  -- use 'hrsh7th/nvim-compe' -- Autocompletion plugin
  use 'mfussenegger/nvim-lsp-compl'
  use "wbthomason/lsp-status.nvim"
  use "onsails/lspkind-nvim"
  use {
      "folke/lsp-trouble.nvim",
      cmd = "LspTrouble",
      config = function()
        -- Can use P to toggle auto movement
        require("trouble").setup {
          auto_preview = false,
          auto_fold = true,
        }
      end,
   }
   use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
   use("jose-elias-alvarez/nvim-lsp-ts-utils") -- improve typescript experience
   use_with_config("RRethy/vim-illuminate", "illuminate") -- highlights and allows moving between variable references

  -- use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use_with_config("jose-elias-alvarez/minsnip.nvim", "minsnip") -- tiny snippet plugin
  -- use 'itchyny/lightline.vim' -- Fancier statusline

   -- visual
    use({ -- themes
        "sainnhe/sonokai",
        "sainnhe/everforest",
        "folke/tokyonight.nvim",
        "joshdick/onedark.vim",
    })

  use "norcalli/nvim-colorizer.lua"

  -- Quickfix enhancements. See :help vim-qf
  use "romainl/vim-qf"

  use "kyazdani42/nvim-web-devicons"

  use "kyazdani42/nvim-tree.lua"

  -- Undo helper
  use "sjl/gundo.vim"

  local use_folke = true
  if use_folke then
     use "folke/zen-mode.nvim"
     use "folke/twilight.nvim"
  end

  use {
      "junegunn/goyo.vim",
      cmd = "Goyo",
      disable = use_folke,
    }

    use {
      "junegunn/limelight.vim",
      after = "goyo.vim",
      disable = use_folke,
    }

   -- LANGUAGES
   use { "elzr/vim-json", ft = "json" }
   use { "iamcco/markdown-preview.nvim", ft = "markdown", run = "cd app && yarn install" }

   -- use {
	-- "prettier/vim-prettier",
	-- ft = { "html", "javascript", "typescript" },
	-- run = "yarn install",
   -- }

   use { "liuchengxu/vista.vim", cmd = "Vista" }

   -- Find and replace
   use "brooth/far.vim"

end)
