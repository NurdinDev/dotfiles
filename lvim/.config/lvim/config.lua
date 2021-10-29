-- Neovim
-- =========================================
lvim.format_on_save = false
lvim.leader = " "
lvim.colorscheme = "pablo"
lvim.debug = false
lvim.log.level = "warn"

require("user.neovim").config()


lvim.keys.normal_mode["Y"] = "yg$"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"
lvim.keys.normal_mode["J"] = "mzJ`z"
lvim.keys.normal_mode["gv"] = "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>"
lvim.keys.visual_mode["p"] = [["_dP]]


-- lvim.keys.normal_mode["<leader>a"]= "<cmd>lua require('harpoon.mark').add_file() <CR>"
-- lvim.keys.normal_mode["<C-e>"]= "<cmd>lua require('harpoon.ui').toggle_quick_menu() <CR>"
-- lvim.keys.normal_mode["<C-y>"]= "<cmd>lua require('harpoon.cmd-ui').toggle_quick_menu() <CR>"

-- lvim.keys.normal_mode["<C-f>"] = "<cmd>lua require('harpoon.ui').nav_file(1) <CR>"
-- lvim.keys.normal_mode["<C-d>"] = "<cmd>lua require('harpoon.ui').nav_file(2) <CR>"
-- lvim.keys.normal_mode["<C-s>"] = "<cmd>lua require('harpoon.ui').nav_file(3) <CR>"
 
-- Customization
-- =========================================
lvim.builtin.copilot = {active = true}
lvim.builtin.lastplace = { active = true }
lvim.builtin.tabnine = { active = true }
lvim.builtin.persistence = { active = true }
lvim.builtin.orgmode = { active = true }
lvim.builtin.dap.active = false 
lvim.builtin.fancy_statusline = { active = true }
lvim.builtin.fancy_bufferline = { active = true }
lvim.builtin.fancy_dashboard = { active = true }
lvim.builtin.fancy_wild_menu = { active = true } 
lvim.builtin.lua_dev = { active = true } 
lvim.builtin.test_runner = { active = true } 
lvim.builtin.cheat = { active = true } -- enable cheat.sh integration
lvim.builtin.sql_integration = { active = true } -- use sql integration
lvim.builtin.neoscroll = { active = true } -- smooth scrolling
lvim.lsp.diagnostics.virtual_text = false -- remove this line if you want to see inline errors
lvim.builtin.notify.active = true
lvim.lsp.automatic_servers_installation = true
lvim.lsp.document_highlight = true
lvim.lsp.code_lens_refresh = true

require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end

-- Language Specific
-- =========================================
lvim.lsp.override = { "dockerls", "sumneko_lua", "texlab", "tsserver", "jsonls", "gopls" }
require("user.null_ls").config()
require("user.lsp_install").install()


-- Additional Plugins
-- =========================================
require("user.plugins").config()


-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
