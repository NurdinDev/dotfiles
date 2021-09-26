-- Neovim
-- =========================================
lvim.format_on_save = false
lvim.leader = " "
lvim.colorscheme = "pablo"
lvim.debug = false
lvim.log.level = "warn"
require("user.neovim").config()

-- Customization
-- =========================================
lvim.builtin.lastplace = { active = false }
lvim.builtin.tabnine = { active = true }
lvim.builtin.persistence = { active = true }
lvim.builtin.presence = { active = false }
lvim.builtin.orgmode = { active = false }
lvim.builtin.dap.active = false
lvim.builtin.fancy_statusline = { active = true }
lvim.builtin.fancy_bufferline = { active = true }
lvim.builtin.lua_dev = { active = true }
lvim.builtin.test_runner = { active = true }
lvim.lsp.diagnostics.virtual_text = false
lvim.builtin.latex = {
  view_method = "skim", -- change to zathura if you are on linux
  preview_exec = "/Applications/Skim.app/Contents/SharedSupport/displayline", -- change this to zathura as well
  rtl_support = true, -- if you want to use xelatex, it's a bit slower but works very well for RTL langs
}
require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end
 
-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "onedarker"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- Language Specific
-- ========================================

require("user.json_schemas").setup()

--- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
--require("user.autocommands").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
