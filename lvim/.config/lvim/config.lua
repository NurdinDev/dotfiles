-- Neovim
-- =========================================
lvim.format_on_save = true
lvim.leader = " "
lvim.colorscheme = "onedarker"
lvim.debug = false
lvim.log.level = "warn"
require("user.neovim").config()

-- Customization
-- =========================================
lvim.builtin.lastplace = { active = true }
lvim.builtin.tabnine = { active = true }
lvim.builtin.persistence = { active = true }
lvim.builtin.presence = { active = false }
lvim.builtin.orgmode = { active = false }
-- lvim.builtin.dap.active = false
lvim.builtin.fancy_statusline = { active = true }
lvim.builtin.fancy_bufferline = { active = true }
lvim.lsp.diagnostics.virtual_text = false
-- lvim.builtin.latex = {
--   view_method = "skim", -- change to zathura if you are on linux
--   preview_exec = "/Applications/Skim.app/Contents/SharedSupport/displayline", -- change this to zathura as well
--   rtl_support = true, -- if you want to use xelatex, it's a bit slower but works very well for RTL langs
-- }
require("user.builtin").config()

-- StatusLine
-- =========================================
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end

-- Language Specific
-- ========================================
lvim.lang.markdown = {}
-- lvim.lang.dockerfile.lsp.setup.root_dir = function(fname)
--   return require("lspconfig").util.root_pattern ".git"(fname) or require("lspconfig").util.path.dirname(fname)
-- end
lvim.builtin.lspinstall.on_config_done = function()
  lvim.lang.tailwindcss.lsp.setup.filetypes = { "markdown" }
  lvim.lang.tailwindcss.lsp.active = true
  require("lsp").setup "tailwindcss"
end
lvim.lang.typescript.on_attach = function(client, _)
  require("nvim-lsp-ts-utils").setup_client(client)
end
lvim.lang.typescriptreact.on_attach = lvim.lang.typescript.on_attach
-- lvim.lsp.override = { "rust", "java", "dart" }
require("user.json_schemas").setup()
require("user.yaml_schemas").setup()

--- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
--require("user.autocommands").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
