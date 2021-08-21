local u = require("utils")

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.completeopt = { "menuone", "noinsert" }
vim.opt.hidden = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.mouse = "a"
vim.opt.pumheight = 10
vim.opt.shiftwidth = 4
vim.opt.showcmd = false
vim.opt.smartcase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.statusline = [[%f %y %m %= %p%% %l:%c]]
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.directory = "/tmp"
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 2
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.timeoutlen = 300
vim.opt.shortmess:append("cA")
vim.opt.clipboard:append("unnamedplus")

-- the only way I've found to make this persistent
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

_G.global = {}

--cmd [[colorscheme onedark]]

----Set statusbar
--vim.g.lightline = {
--  colorscheme = 'onedark',
--  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
--  component_function = { gitbranch = 'fugitive#head' },
--}


-- maps
-- \ to go to previous match
u.map("n", "\\", ",")

-- moving lines
u.map('v', 'J', ":m '>+1<CR>gv=gv")
u.map('v', 'K', ":m '<-2<CR>gv=gv")

-- edit file from current file's path
u.map("n", "<Leader>ee", ":edit <C-r>=expand('%:p')<CR>", { silent = false })
u.map("n", "<Leader>ev", ":Vsplit <C-r>=expand('%:p')<CR>", { silent = false })

-- source init.lua leader + enter
u.map('n', '<Leader><CR>', ":so ~/.config/nvim/init.lua<CR>")

-- remap vsplit and split
u.map('n', 'sv',':vsplit<cr>')
u.map('n', 'sh',':split<cr>')

-- terminal
u.map("n", "<Leader>T", ":term<CR>")
u.map("t", "<C-o>", "<C-\\><C-n>")

-- move between split
u.map('n', '<C-J>',' <C-W><C-J>')
u.map('n', '<C-K>',' <C-W><C-K>')
u.map('n', '<C-L>',' <C-W><C-L>')
u.map('n', '<C-H>',' <C-W><C-H>')

-- make useless keys useful
u.map("n", "<BS>", "<C-^>")

u.map("n", "<Esc>", ":nohl<CR>")

u.map("n", "<Tab>", "%", { noremap = false })
u.map("x", "<Tab>", "%", { noremap = false })
u.map("o", "<Tab>", "%", { noremap = false })

u.map("n", "H", "^")
u.map("o", "H", "^")
u.map("x", "H", "^")
u.map("n", "L", "$")
u.map("o", "L", "$")
u.map("x", "L", "$")

u.map("n", ",", ":", { silent = false })
u.map("v", ",", ":", { silent = false })

u.map("i", "<M-h>", "<Left>")
u.map("i", "<M-j>", "<Down>")
u.map("i", "<M-k>", "<Up>")
u.map("i", "<M-l>", "<Right>")

-- misc
u.map("v", ">", ">gv")
u.map("v", "<", "<gv")

u.map("n", "n", "nzz")
u.map("n", "N", "Nzz")

-- automatically add jumps > 1 to jump list
u.map("n", "k", [[(v:count > 1 ? "m'" . v:count : '') . 'k'"]], { expr = true })
u.map("n", "j", [[(v:count > 1 ? "m'" . v:count : '') . 'j'"]], { expr = true })

-- remap cnext cprev for quick list
-- map("n", "<Leader>qn", ":cnext<CR>:call search(_search_term)<CR>", { noremap = true })
-- map("n", "<Leader>qp", ":cprev<CR>:call search(_search_term)<CR>", { noremap = true })

-- map blankline
-- vim.g.indent_blankline_char = '┊'
-- vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
-- vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
-- vim.g.indent_blankline_char_highlight = 'Liner'
-- vim.g.indent_blankline_show_trailing_blankline_indent = false

-- Gitsigns
-- require('gitsigns').setup {
--   signs = {
--     add = { hl = 'GitGutterAdd', text = '+' },
--     change = { hl = 'GitGutterChange', text = '~' },
--     delete = { hl = 'GitGutterDelete', text = '_' },
--     topdelete = { hl = 'GitGutterDelete', text = '‾' },
--     changedelete = { hl = 'GitGutterChange', text = '~' },
--   },
-- }

-- -- Telescope
-- map('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
-- map('n', '<C-p>', [[<cmd>lua require('telescope.builtin').git_files()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>gc', [[<cmd>lua require('telescope.builtin').git_branches()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>gs', [[<cmd>lua require('telescope.builtin').git_status()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>gm', [[<cmd>lua require('telescope.builtin').git_commits()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>gb', [[<cmd>lua require('telescope.builtin').git_bcommits()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>sm', [[<cmd>lua require('telescope.builtin.lsp').document_symbols()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>ss', [[<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>]], { noremap = true, silent = true })
-- map('n', '<leader>.', [[<cmd>lua require('telescope').search_dotfiles()<CR>]], { noremap = true, silent = true })



-- LSP settings
-- local nvim_lsp = require 'lspconfig'
-- local on_attach = function(_, bufnr)
--   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

--   local opts = { noremap = true, silent = true }
--   -- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'v', '<leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--   vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)
--   cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
-- end

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Enable the following language servers
-- local servers = { 'tsserver' }
-- for _, lsp in ipairs(servers) do
--   nvim_lsp[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end


-- Make runtime files discoverable to the server

-- Treesitter configuration
-- Parsers must be installed manually via :TSInstall
-- require('nvim-treesitter.configs').setup {
--   highlight = {
--     enable = true, -- false will disable the whole extension
--   },
--   incremental_selection = {
--     enable = true,
--     keymaps = {
--       init_selection = 'gnn',
--       node_incremental = 'grn',
--       scope_incremental = 'grc',
--       node_decremental = 'grm',
--     },
--   },
--   indent = {
--     enable = true,
--   },
--   textobjects = {
--     select = {
--       enable = true,
--       lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
--       keymaps = {
--         -- You can use the capture groups defined in textobjects.scm
--         ['af'] = '@function.outer',
--         ['if'] = '@function.inner',
--         ['ac'] = '@class.outer',
--         ['ic'] = '@class.inner',
--       },
--     },
--     move = {
--       enable = true,
--       set_jumps = true, -- whether to set jumps in the jumplist
--       goto_next_start = {
--         [']m'] = '@function.outer',
--         [']]'] = '@class.outer',
--       },
--       goto_next_end = {
--         [']M'] = '@function.outer',
--         [']['] = '@class.outer',
--       },
--       goto_previous_start = {
--         ['[m'] = '@function.outer',
--         ['[['] = '@class.outer',
--       },
--       goto_previous_end = {
--         ['[M'] = '@function.outer',
--         ['[]'] = '@class.outer',
--       },
--     },
--   },
-- }

-- Set completeopt to have a better completion experience
-- vim.o.completeopt = 'menuone,noselect'

-- Compe setup
-- require('compe').setup {
--   source = {
--     path = true,
--     nvim_lsp = true,
--     luasnip = true,
--     buffer = false,
--     calc = false,
--     nvim_lua = false,
--     vsnip = false,
--     ultisnips = false,
--   },
-- }

-- Utility functions for compe and luasnip
-- local t = function(str)
--   return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- local check_back_space = function()
--   local col = vim.fn.col '.' - 1
--   if col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' then
--     return true
--   else
--     return false
--   end
-- end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
-- local luasnip = require 'luasnip'

-- _G.tab_complete = function()
--   if vim.fn.pumvisible() == 1 then
--     return t '<C-n>'
--   elseif luasnip.expand_or_jumpable() then
--     return t '<Plug>luasnip-expand-or-jump'
--   elseif check_back_space() then
--     return t '<Tab>'
--   else
--     return vim.fn['compe#complete']()
--   end
-- end

-- _G.s_tab_complete = function()
--   if vim.fn.pumvisible() == 1 then
--     return t '<C-p>'
--   elseif luasnip.jumpable(-1) then
--     return t '<Plug>luasnip-jump-prev'
--   else
--     return t '<S-Tab>'
--   end
-- end

-- Map tab to the above tab complete functiones
-- map('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
-- map('s', '<Tab>', 'v:lua.tab_complete()', { expr = true })
-- map('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
-- map('s', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })

-- Map compe confirm and complete functions
-- map('i', '<cr>', 'compe#confirm("<cr>")', { expr = true })
-- map('i', '<c-space>', 'compe#complete()', { expr = true })


require("commands")
require("plugins")
require("theme")
require("lsp")
