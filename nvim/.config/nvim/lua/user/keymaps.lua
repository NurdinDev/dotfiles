local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Save file
keymap("n", "<C-s>", "<cmd>w<cr>", opts)
keymap("i", "<C-s>", "<esc><cmd>w<cr>", opts)

-- Better window navigation
keymap("n", "<M-h>", "<C-w>h", opts)
keymap("n", "<M-j>", "<C-w>j", opts)
keymap("n", "<M-k>", "<C-w>k", opts)
keymap("n", "<M-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("n", "<leader>tn","<cmd>lua _NODE_TOGGLE()<cr>", opts)
keymap("n", "<leader>tm", "<cmd>lua _MONGO_TOGGLE()<cr>", opts)
keymap("n", "<leader>tt", "<cmd>ToggleTerm direction=float<cr>", opts)
keymap("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", opts)
keymap("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", opts)

-- Copilot
keymap("i", "<C-h>", [[copilot#Accept("\<CR>")]], { expr = true, script = true })

-- Telescope
keymap("n", "<C-p>", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<CR>", opts)
keymap("n", "<leader>p", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap("n", "<leader>P", "<cmd>Telescope projects<cr>", opts)
keymap("n", "<leader>fw", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>fm", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>fM", "<cmd>Telescope man_pages<cr>", opts)
keymap("n", "<leader>f:", "<cmd>Telescope commands<cr>", opts)
keymap("n", "<leader>a", "<cmd>Telescope oldfiles<cr>", opts)

-- lsp
keymap("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", opts)
keymap("n", "<leader>lD", "<cmd>Telescope diagnostics<cr>", opts)
keymap("n", "<leader>A", "<cmd>Telescope builtin<cr>", opts)
keymap('n', '<leader>ca', '<cmd>lua require("telescope.builtin").lsp_code_actions()<cr>', opts)
keymap('v', '<leader>ca', '<cmd>lua require("telescope.builtin").lsp_range_code_actions()<cr>', opts)
keymap('n', "<leader>o", "<cmd>Telescope lsp_document_symbols<cr>", opts)
keymap('n', "<leader>O", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)
keymap('n', "<leader>cf", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)

-- nvim_tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)
keymap('n', '<leader>E', '<cmd>NvimTreeFindFileToggle<cr>', opts)


-- buffer
keymap("n", "<leader>w", "<cmd>Bdelete!<CR>", opts)


-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>gf", "<cmd>Telescope git_files<cr>", opts)
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<leader>gC", "<cmd>Telescope git_bcommits<cr>", opts)
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", opts)


-- Quickfix list
-- keymap("n", "<C-q>", ":copen<CR>", opts)
-- keymap("n", "<C-k>", ":cnext<CR>zz", opts)
-- keymap("n", "<C-j>", ":cprev<CR>zz", opts)
