return {
   ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
        require("custom.plugins.smolconfigs").autotag()
      end,
   },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },

   ["Pocco81/TrueZen.nvim"] = {
      cmd = {
         "TZAtaraxis",
         "TZMinimalist",
         "TZFocus",
      },
      config = function()
         require "custom.plugins.truezen"
      end,
   },

   -- dim inactive windows
   ["andreadev-it/shade.nvim"] = {
     module = "shade",
     config = function()
       require("custom.plugins.smolconfigs").shade()
     end,
   },

   ["Pocco81/AutoSave.nvim"] = {
    module = "autosave",
    config = function()
      require("custom.plugins.smolconfigs").autosave()
    end,
  },

   ["nvim-neorg/neorg"] = {
      ft = "norg",
      after = "nvim-treesitter",
      config = function()
         require "custom.plugins.neorg"
      end,
   },

   ["nvim-treesitter/playground"] = {
      cmd = "TSCaptureUnderCursor",
      config = function()
         require("nvim-treesitter.configs").setup()
      end,
   },

  ["goolord/alpha-nvim"] = {
    after = "base46",
    disable = false,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- ["aserowy/tmux.nvim"] = {
  --   config = function()
  --       require("tmux").setup({
  --           -- overwrite default configuration
  --           -- here, e.g. to enable default bindings
  --           copy_sync = {
  --               -- enables copy sync and overwrites all register actions to
  --               -- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
  --               enable = true,
  --           },
  --           navigation = {
  --               -- enables default keybindings (C-hjkl) for normal mode
  --               enable_default_keybindings = true,
  --           },
  --           resize = {
  --               -- enables default keybindings (A-hjkl) for normal mode
  --               enable_default_keybindings = true,
  --           }
  --       })
  --   end,
  -- },
  ["numToStr/Navigator.nvim"] = {
    config = function()
      require('Navigator').setup()
    end,
  }
}
