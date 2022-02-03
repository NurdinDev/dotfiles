local M = {}

local plugin_conf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.options = {
   relativenumber = true,
   noswapfile = true,
   tabstop = 4,
   shiftwidth = 4,
   softtabstop = 4,
   nowrap = true,
   nohlsearch = true,
}

M.plugin = {
  status = {
      dashboard = true,
      colorizer = true,
      snippets = true,
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },
  default_plugin_config_replace = {
    nvim_treesitter = plugin_conf.treesitter,
    nvim_tree = plugin_conf.nvimtree,
  },

  install = userPlugins,
}

M.ui = {
   theme = "gruvchad",
}

return M
