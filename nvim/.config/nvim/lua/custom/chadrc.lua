local M = {}

local override = require "custom.override"

-- M.opt = {
--    relativenumber = true
-- }

M.plugins = {

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },

      statusline = {
         separator_style = "round",
      },
   },

   override = {
     ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
     ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
     ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
     ["goolord/alpha-nvim"] = override.alpha,
     ["williamboman/mason.nvim"] = override.mason,
     ["NvChad/nvterm"] = override.nvterm
   },

   user = require "custom.plugins",

   remove = {
      "folke/which-key.nvim"
   },
}

M.ui = {
  theme = "gruvchad",
  hl_add = require("custom.highlights").new_hlgroups,
  theme_toggle = { "gruvchad", "gruvbox_light" },
  hl_override = require("custom.highlights").overriden_hlgroups
}

M.mappings = require "custom.mappings"

return M
