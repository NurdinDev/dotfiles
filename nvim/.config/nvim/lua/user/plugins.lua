local fn = vim.fn
local colors = require("user.colorscheme")

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Install your plugins here
packer.startup({
	function(use)
		-- Telescope
		use({
			"nvim-telescope/telescope.nvim",
			cmd = "Telescope",
			config = require("user.telescope"),
			requires = {
				{
					"nvim-telescope/telescope-fzf-native.nvim",
					run = "make",
					after = "telescope.nvim",
					config = function()
						require("telescope").load_extension("fzf")
					end,
				},
				{
					"nvim-telescope/telescope-frecency.nvim",
					after = "telescope.nvim",
					requires = "tami5/sqlite.lua",
				},
				{
					"camgraff/telescope-tmux.nvim",
					after = "telescope.nvim",
					config = function()
						require("telescope").load_extension("tmux")
					end,
				},
				{
					"nvim-telescope/telescope-smart-history.nvim",
					after = "telescope.nvim",
					config = function()
						require("telescope").load_extension("smart_history")
					end,
				},
			},
		})

		use("wbthomason/packer.nvim") -- Have packer manage itself
		use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
		use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
		use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
		use({
			"numToStr/Comment.nvim",
			event = "VimEnter",
			config = function()
				require("user.comment")
			end,
		}) -- Easily comment stuff
		use({ "JoosepAlviste/nvim-ts-context-commentstring", after = { "nvim-treesitter" } })
		use("kyazdani42/nvim-web-devicons")
		use({
			"kyazdani42/nvim-tree.lua",
			config = function()
				require("user.nvim-tree")
			end,
		})
		use({
			"akinsho/bufferline.nvim",
			config = function()
				require("user.bufferline")
			end,
		})
		use({
			"nvim-lualine/lualine.nvim",
			config = function()
				require("user.lualine")
			end,
		})
		use({
			"akinsho/toggleterm.nvim",
			config = function()
				require("user.toggleterm")
			end,
		})
		use({
			"ahmedkhalf/project.nvim",
			config = function()
				require("user.project")
			end,
		})
		use({
			"lewis6991/impatient.nvim",
			config = function()
				require("user.impatient")
			end,
		})
		use({
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("user.indentline")
			end,
		})
		use({
			"goolord/alpha-nvim",
			config = function()
				require("user.alpha")
			end,
		})
		use("antoinemadec/FixCursorHold.nvim") -- This is needed to fix lsp doc highlight
		use({
			"mbbill/undotree",
			cmd = "UndotreeToggle",
			config = function()
				vim.g.undotree_TreeNodeShape = "◉" -- Alternative: '◦'
				vim.g.undotree_SetFocusWhenToggle = 1
			end,
		})
		use({
			"iamcco/markdown-preview.nvim",
			run = "cd app && yarn install",
			ft = { "markdown" },
			config = function()
				vim.g.mkdp_auto_start = 0
				vim.g.mkdp_auto_close = 1
			end,
		})
		use({
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup({ "*" }, {
					RGB = false,
					mode = "background",
				})
			end,
		})
		use({
			"github/copilot.vim",
			config = function()
				vim.g.copilot_no_tab_map = true
				vim.g.copilot_assume_mapped = true
				vim.g.copilot_tab_fallback = ""
				vim.g.copilot_filetypes = {
					["*"] = false,
					gitcommit = false,
					NeogitCommitMessage = false,
					dart = true,
					lua = true,
					typescript = true,
				}
			end,
		})

		-- cmp plugins
		use({
			"hrsh7th/nvim-cmp",
			module = "cmp",
			event = "InsertEnter",
			config = function()
				require("user.cmp")
			end,
			requires = {
				{ "hrsh7th/cmp-nvim-lsp", after = "nvim-lspconfig" },
				{ "hrsh7th/cmp-nvim-lsp-document-symbol", after = "nvim-cmp" },
				{ "hrsh7th/cmp-cmdline", after = "nvim-cmp" },
				{ "f3fora/cmp-spell", after = "nvim-cmp" },
				{ "hrsh7th/cmp-path", after = "nvim-cmp" },
				{ "hrsh7th/cmp-buffer", after = "nvim-cmp" },
				{ "petertriho/cmp-git", after = "nvim-cmp" },
				{ "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
				{ "tzachar/cmp-tabnine", run = "./install.sh", after = "nvim-cmp" },
				{
					"tzachar/cmp-fuzzy-path",
					after = "cmp-path",
					requires = { "hrsh7th/cmp-path", "tzachar/fuzzy.nvim" },
				},
				{
					"tzachar/cmp-fuzzy-buffer",
					after = "nvim-cmp",
					requires = { "tzachar/fuzzy.nvim" },
				},
			},
		})
		-- use "hrsh7th/cmp-buffer" -- buffer completions
		-- use "hrsh7th/cmp-path" -- path completions
		-- use "hrsh7th/cmp-cmdline" -- cmdline completions
		-- use "saadparwaiz1/cmp_luasnip" -- snippet completions
		-- use "hrsh7th/cmp-nvim-lsp"

		-- snippets
		use({
			"L3MON4D3/LuaSnip",
			event = "InsertEnter",
			module = "luasnip",
			requires = "rafamadriz/friendly-snippets",
		}) --snippet engine

		-- LSP
		use({
			"neovim/nvim-lspconfig",
			config = function()
				require("user.lspconfig")
			end,
		}) -- enable LSP
		use({
			"williamboman/nvim-lsp-installer",
			requires = "nvim-lspconfig",
		})
		use("b0o/schemastore.nvim")
		use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
		use({
			"jose-elias-alvarez/null-ls.nvim",
			requires = { "nvim-lua/plenary.nvim" },
			config = function()
				require("user.null-ls")
			end,
		}) -- for formatters and linters
		use({
			"ray-x/lsp_signature.nvim",
			config = function()
				require("lsp_signature").setup({
					bind = true,
					fix_pos = function(signatures, client)
						if signatures[1].activeParameter >= 0 and #signatures[1].parameters == 1 then
							return false
						end
						if client.name == "sumneko_lua" then
							return true
						end
						return false
					end,
					auto_close_after = 15, -- close after 15 seconds
					hint_enable = false,
					handler_opts = { border = "rounded" },
				})
			end,
		})

		-- Treesitter
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
			event = "BufReadPre",
			config = require("user.treesitter"),
			requires = {
				{ "p00f/nvim-ts-rainbow", after = "nvim-treesitter" },
				{ "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" },
			},
		})

		use({
			"abecodes/tabout.nvim",
			wants = { "nvim-treesitter" },
			after = { "nvim-cmp" },
			config = function()
				require("tabout").setup({
					completion = false,
					ignore_beginning = false,
				})
			end,
		})

		use({
			"lewis6991/spellsitter.nvim",
			config = function()
				require("spellsitter").setup({})
			end,
		})

		-- Quickfix list
		use({
			"https://gitlab.com/yorickpeterse/nvim-pqf",
			event = "BufReadPre",
			config = function()
				require("pqf").setup({})
			end,
		})
		use({ "kevinhwang91/nvim-bqf" })

		-- Git
		use({
			"lewis6991/gitsigns.nvim",
			config = function()
				require("user.gitsigns")
			end,
		})
		use({
			"TimUntersberger/neogit",
			cmd = "Neogit",
			requires = "plenary.nvim",
			config = function()
				require("user.neogit").config()
			end,
		})

		use({
			"sindrets/diffview.nvim",
			cmd = { "DiffviewOpen", "DiffviewFileHistory" },
			module = "diffview",
			config = function()
				require("diffview").setup({
					enhanced_diff_hl = true,
					key_bindings = {
						file_panel = { q = "<Cmd>DiffviewClose<CR>" },
						view = { q = "<Cmd>DiffviewClose<CR>" },
					},
				})
			end,
		})

		use({
			"ThePrimeagen/harpoon",
			event = "VimEnter",
			requires = { { "nvim-lua/plenary.nvim", opt = true }, { "nvim-lua/popup.nvim", opt = true } },
			after = { "plenary.nvim", "popup.nvim" },
			config = function()
				require("user.harpoon")
			end,
		})
		use({
			"brandoncc/telescope-harpoon.nvim",
			after = { "harpoon", "telescope.nvim" },
			config = function()
				require("telescope").load_extension("harpoon")
			end,
		})
		use({
			"sudormrfbin/cheatsheet.nvim",
			requires = { { "nvim-telescope/telescope.nvim", opt = true } },
			after = { "telescope.nvim" },
		})

		use({ "rcarriga/nvim-notify", event = "VimEnter" })

		colors.init(use, { theme = colors.supported_themes[10] })
	end,
	log = { level = "info" },
	config = {
		display = {
			prompt_border = "rounded",
			open_cmd = "silent topleft 65vnew",
		},
	},
})
