-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/nureddin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/nureddin/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/nureddin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/nureddin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/nureddin/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15user.alpha\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.bufferline\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cheatsheet.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cheatsheet.nvim",
    url = "https://github.com/sudormrfbin/cheatsheet.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-fuzzy-buffer"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-fuzzy-buffer/after/plugin/cmp_fuzzy_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-fuzzy-buffer",
    url = "https://github.com/tzachar/cmp-fuzzy-buffer"
  },
  ["cmp-fuzzy-path"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-fuzzy-path/after/plugin/cmp_fuzzy_path.lua" },
    load_after = {
      ["cmp-path"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-fuzzy-path",
    url = "https://github.com/tzachar/cmp-fuzzy-path"
  },
  ["cmp-git"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol/after/plugin/cmp_nvim_lsp_document_symbol.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-path"] = {
    after = { "cmp-fuzzy-path" },
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-tabnine"] = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-tabnine/after/plugin/cmp-tabnine.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    after_files = { "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    config = { "\27LJ\2\nß\1\0\0\2\0\b\0\0176\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0K\0\1\0\1\0\6\tdart\2\24NeogitCommitMessage\1\14gitcommit\1\6*\1\blua\2\15typescript\2\22copilot_filetypes\5\25copilot_tab_fallback\26copilot_assume_mapped\23copilot_no_tab_map\6g\bvim\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["darkplus.nvim"] = {
    config = { "\27LJ\2\nE\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0&      colorscheme darkplus\n      \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/darkplus.nvim",
    url = "https://github.com/lunarvim/darkplus.nvim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewFileHistory" },
    config = { "\27LJ\2\n¿\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\17key_bindings\tview\1\0\1\6q\27<Cmd>DiffviewClose<CR>\15file_panel\1\0\0\1\0\1\6q\27<Cmd>DiffviewClose<CR>\1\0\1\21enhanced_diff_hl\2\nsetup\rdiffview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["fuzzy.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/fuzzy.nvim",
    url = "https://github.com/tzachar/fuzzy.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18user.gitsigns\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    after = { "telescope-harpoon.nvim" },
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.harpoon\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.impatient\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.indentline\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n€\1\0\2\4\0\4\1\19:\2\1\0009\2\0\2)\3\0\0\3\3\2\0X\2\a€:\2\1\0009\2\1\2\21\2\2\0\t\2\0\0X\2\2€+\2\1\0L\2\2\0009\2\2\1\a\2\3\0X\2\2€+\2\2\0L\2\2\0+\2\1\0L\2\2\0\16sumneko_lua\tname\15parameters\20activeParameter\2 \1\1\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\ffix_pos\0\1\0\3\16hint_enable\1\21auto_close_after\3\15\tbind\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.lualine\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0K\0\1\0\20mkdp_auto_close\20mkdp_auto_start\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  neogit = {
    commands = { "Neogit" },
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\16user.neogit\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.null-ls\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    after = { "cmp-git", "cmp_luasnip", "cmp-fuzzy-buffer", "cmp-tabnine", "cmp-nvim-lsp-document-symbol", "cmp-cmdline", "cmp-path", "cmp-spell", "cmp-buffer", "tabout.nvim" },
    config = { "\27LJ\2\n(\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\ruser.cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n]\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\2\bRGB\1\tmode\15background\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "cmp-nvim-lsp" },
    loaded = true,
    only_config = true
  },
  ["nvim-notify"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-pqf"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bpqf\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-pqf",
    url = "https://gitlab.com/yorickpeterse/nvim-pqf"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-rainbow", "nvim-treesitter-textobjects", "nvim-ts-context-commentstring" },
    config = { "\27LJ\2\nÌ\14\0\0\a\0D\0R6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0025\1\a\0005\2\4\0005\3\5\0=\3\6\2=\2\b\1=\1\3\0005\1\f\0005\2\n\0005\3\v\0=\3\6\2=\2\b\1=\1\t\0005\1\16\0005\2\14\0005\3\15\0=\3\6\2=\2\b\1=\1\r\0005\1\20\0005\2\18\0005\3\19\0=\3\6\2=\2\b\1=\1\17\0006\1\0\0'\3\21\0B\1\2\0029\1\22\0015\3\23\0005\4\24\0005\5\25\0=\5\26\0045\5\27\0=\5\28\4=\4\29\0035\4\30\0005\5\31\0=\5 \4=\4!\0035\4\"\0=\4#\0035\4$\0005\5%\0005\6&\0=\6 \5=\5'\0045\5(\0005\6)\0=\6*\0055\6+\0=\6,\5=\5-\0045\5.\0005\6/\0=\0060\0055\0061\0=\0062\5=\0053\0045\0054\0005\0065\0=\0066\5=\0057\4=\0048\0035\0049\0005\5:\0=\5\26\0045\5;\0=\5<\4=\4=\0035\4>\0=\4?\0035\4@\0005\5A\0=\5B\4=\4C\3B\1\2\1K\0\1\0\17query_linter\16lint_events\1\3\0\0\rBufWrite\15CursorHold\1\0\2\21use_virtual_text\2\venable\2\14autopairs\1\0\1\venable\2\frainbow\vcolors\1\6\0\0\15royalblue3\16darkorange3\14seagreen3\14firebrick\16darkorchid3\1\4\0\0\blua\tjson\thtml\1\0\1\venable\2\16textobjects\16lsp_interop\25peek_definition_code\1\0\2\15<leader>dF\17@class.outer\15<leader>df\20@function.outer\1\0\2\vborder\frounded\venable\2\tmove\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\1\0\2\14set_jumps\2\venable\2\tswap\18swap_previous\1\0\1\a]w\21@parameter.inner\14swap_next\1\0\1\a[w\21@parameter.inner\1\0\1\venable\2\vselect\1\0\6\aac\17@class.outer\aic\17@class.inner\aiC\23@conditional.inner\aaf\20@function.outer\aaC\23@conditional.outer\aif\20@function.inner\1\0\1\venable\2\1\0\1\14lookahead\2\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgrc\19init_selection\14<leader>v\21node_decremental\14<leader>V\21node_incremental\14<leader>v\1\0\1\venable\2\14highlight&additional_vim_regex_highlighting\1\2\0\0\borg\fdisable\1\2\0\0\borg\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\1\0\1\rfiletype\borg\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\burl0https://github.com/milisims/tree-sitter-org\rrevision-f110024d539e676f25b72b7c80b0fd43c34264ef\borg\1\0\0\1\2\0\0\17src/parser.c\1\0\2\burl9https://github.com/nvim-neorg/tree-sitter-norg-table\vbranch\tmain\15norg_table\1\0\0\1\2\0\0\17src/parser.c\1\0\2\burl8https://github.com/nvim-neorg/tree-sitter-norg-meta\vbranch\tmain\14norg_meta\17install_info\1\0\0\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\burl/https://github.com/vhyrro/tree-sitter-norg\vbranch\tmain\tnorg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.project\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/spellsitter.nvim",
    url = "https://github.com/lewis6991/spellsitter.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nY\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\15completion\1\21ignore_beginning\1\nsetup\vtabout\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-frecency.nvim"] = {
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-harpoon.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fharpoon\19load_extension\14telescope\frequire\0" },
    load_after = {
      harpoon = true,
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/telescope-harpoon.nvim",
    url = "https://github.com/brandoncc/telescope-harpoon.nvim"
  },
  ["telescope-smart-history.nvim"] = {
    config = { "\27LJ\2\nR\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18smart_history\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/telescope-smart-history.nvim",
    url = "https://github.com/nvim-telescope/telescope-smart-history.nvim"
  },
  ["telescope-tmux.nvim"] = {
    config = { "\27LJ\2\nI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\ttmux\19load_extension\14telescope\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/telescope-tmux.nvim",
    url = "https://github.com/camgraff/telescope-tmux.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-fzf-native.nvim", "telescope-frecency.nvim", "telescope-tmux.nvim", "telescope-smart-history.nvim", "cheatsheet.nvim", "telescope-harpoon.nvim" },
    commands = { "Telescope" },
    config = { "\27LJ\2\n \2\0\1\b\0\r\0\0186\1\0\0009\1\1\1'\3\2\0\f\4\0\0X\4\1€4\4\0\0005\5\v\0005\6\5\0005\a\3\0>\a\1\0065\a\4\0=\a\6\0065\a\a\0=\a\b\0065\a\t\0=\a\n\6=\6\f\5D\1\4\0\16borderchars\1\0\0\fpreview\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ”Œ\bâ”\bâ”˜\bâ””\fresults\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ”œ\bâ”¤\bâ”˜\bâ””\vprompt\1\0\0\1\t\0\0\bâ”€\bâ”‚\6 \bâ”‚\bâ”Œ\bâ”\bâ”‚\bâ”‚\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ”Œ\bâ”\bâ”˜\bâ””\nforce\20tbl_deep_extend\bvim0\0\1\6\2\1\0\6-\1\0\0009\1\0\1-\3\1\0\18\5\0\0B\3\2\0C\1\0\0\2À\3À\17get_dropdown/\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\16stopinsert!\bcmd\bvimT\0\1\5\1\3\0\f6\1\0\0-\3\0\0009\3\1\3\18\4\0\0B\1\3\2\14\0\1\0X\1\4€-\1\0\0009\1\2\1\18\3\0\0B\1\2\1K\0\1\0\5À\15find_files\14git_files\npcall­\1\0\0\6\1\t\0\r-\0\0\0009\0\0\0005\2\1\0006\3\2\0009\3\3\0039\3\4\3'\5\5\0B\3\2\2=\3\6\0025\3\a\0=\3\b\2B\0\2\1K\0\1\0\5À\25file_ignore_patterns\1\3\0\0\f.git/.*\14dotbot/.*\bcwd\vconfig\fstdpath\afn\bvim\1\0\1\17prompt_title\20~ nvim config ~\15find_filesh\0\0\4\1\6\0\t-\0\0\0009\0\0\0005\2\1\0006\3\2\0009\3\3\0039\3\4\3=\3\5\2B\0\2\1K\0\1\0\5À\bcwd\rdotfiles\6g\bvim\1\0\1\17prompt_title\17~ dotfiles ~\15find_filesu\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\1\0006\3\2\0009\3\3\0039\3\4\3'\5\5\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\5À\bcwd\19~/Dropbox/org/\vexpand\afn\bvim\1\0\1\17prompt_title\bOrg\15find_filesx\0\0\6\1\a\0\v-\0\0\0009\0\0\0005\2\1\0006\3\2\0009\3\3\0039\3\4\3'\5\5\0B\3\2\2=\3\6\2B\0\2\1K\0\1\0\5À\bcwd\21~/Dropbox/neorg/\vexpand\afn\bvim\1\0\1\17prompt_title\tNorg\15find_filesr\0\0\5\2\3\0\t-\0\0\0009\0\0\0009\0\1\0009\0\1\0-\2\1\0005\4\2\0B\2\2\0A\0\0\1K\0\1\0\0À\4À\1\0\4\14previewer\1\17shorten_path\1\vborder\2\rwinblend\3\n\rfrecency\15extensions:\0\0\4\2\2\0\b-\0\0\0009\0\0\0009\0\1\0009\0\1\0-\2\1\0B\2\1\0A\0\0\1K\0\1\0\0À\4À\bghn\15extensions•\1\0\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0006\3\3\0009\3\4\0039\3\5\3'\5\6\0B\3\2\2'\4\a\0&\3\4\3=\3\t\2B\0\2\1K\0\1\0\bcwd\1\0\0\22/site/pack/packer\tdata\fstdpath\afn\bvim\15find_files\22telescope.builtin\frequire>\0\0\3\1\3\0\a-\0\0\0009\0\0\0009\0\1\0009\0\2\0004\2\0\0B\0\2\1K\0\1\0\0À\rsessions\ttmux\15extensionsT\0\0\3\1\4\0\a-\0\0\0009\0\0\0009\0\1\0009\0\2\0005\2\3\0B\0\2\1K\0\1\0\0À\1\0\1\17entry_format\v#S: #T\fwindows\ttmux\15extensionsƒ\23\1\0\23\0§\1\0ü\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0023\3\4\0003\4\5\0009\5\6\0005\a4\0005\b\v\0005\t\n\0006\n\a\0009\n\b\n9\n\t\n=\n\t\t=\t\f\b5\t\r\0=\t\14\b5\t\28\0005\n\16\0009\v\15\1=\v\17\n3\v\18\0=\v\19\n9\v\20\1=\v\21\n9\v\22\1=\v\23\n9\v\24\1=\v\25\n9\v\26\1=\v\27\n=\n\29\t5\n\30\0009\v\15\1=\v\17\n=\n\31\t=\t \b5\t!\0=\t\"\b5\t#\0=\t$\b5\t&\0005\n%\0=\n'\t\18\n\3\0005\f+\0005\r)\0005\14(\0=\14*\r=\r,\fB\n\2\2=\n*\t=\t,\b5\t1\0006\n\a\0009\n-\n9\n.\n'\f/\0B\n\2\2'\v0\0&\n\v\n=\n2\t=\t3\b=\b5\a5\b@\0005\t>\0005\n7\0006\v\a\0009\v\b\v9\v6\v=\v8\n6\v\a\0009\v\b\v9\v9\v=\v:\n6\v\a\0009\v;\v9\v<\v=\v=\n=\n?\t=\tA\b5\tB\0=\tC\b=\bD\a5\bI\0\18\t\4\0005\vE\0005\fG\0005\rF\0=\r\29\f5\rH\0=\r\31\f=\f \vB\t\2\2=\tJ\b\18\t\4\0B\t\1\2=\tK\b5\tM\0005\nL\0=\n\"\t=\tN\b\18\t\4\0005\vO\0B\t\2\2=\tP\b5\tQ\0=\tR\b5\tS\0=\tT\b5\tU\0=\tV\b\18\t\4\0B\t\1\2=\tW\b5\tZ\0005\nY\0005\vX\0=\v'\n=\n,\t=\t[\b5\t^\0005\n]\0005\v\\\0=\v'\n=\n,\t=\t_\b\18\t\4\0B\t\1\2=\t`\b=\ba\aB\5\2\0016\5\0\0'\ab\0B\5\2\0023\6c\0003\ad\0003\be\0003\tf\0003\ng\0003\vh\0003\fi\0003\rj\0003\14k\0003\15l\0006\16\0\0'\18m\0B\16\2\0029\16n\0165\18p\0005\19o\0>\6\1\19=\19q\0185\19r\0005\20t\0009\21s\5>\21\1\20=\20u\0195\20v\0009\21P\5>\21\1\20=\20w\0195\20x\0>\b\1\20=\20y\0195\20z\0009\21V\5>\21\1\20=\20{\0195\20|\0>\f\1\20=\20\31\0195\20}\0005\21~\0009\22_\5>\22\1\21=\21\0205\21€\0009\22W\5>\22\1\21=\21w\20=\20;\0195\20‚\0009\21\5>\21\1\20=\20ƒ\0195\20„\0>\v\1\20=\20…\0195\20†\0>\a\1\20=\20\0195\20‡\0009\21J\5>\21\1\20=\20ˆ\0195\20‰\0>\r\1\20=\20Š\0195\20‹\0>\t\1\20=\20Œ\0195\20\0>\n\1\20=\20Ž\0195\20\0009\21`\5>\21\1\20=\20\0195\20’\0009\21‘\5>\21\1\20=\20“\0195\20”\0009\21N\5>\21\1\20=\20•\0195\20–\0005\21—\0>\14\1\21=\21•\0205\21˜\0>\15\1\21=\21™\20=\20š\0195\20œ\0009\21›\5>\21\1\20=\20\19=\19ž\0185\19¡\0005\20 \0009\21Ÿ\5>\21\1\20=\20y\0195\20£\0009\21¢\5>\21\1\20=\20•\0195\20¥\0009\21¤\5>\21\1\20=\20™\19=\19¦\18B\16\2\0012\0\0€K\0\1\0\14<leader>c\1\3\0\0\0!telescope: workspace symbols\"lsp_dynamic_workspace_symbols\1\3\0\0\0 telescope: document symbols\25lsp_document_symbols\1\0\0\1\3\0\0\0%telescope: workspace diagnostics\30lsp_workspace_diagnostics\14<leader>f\6?\1\3\0\0\0\thelp\14help_tags\6t\6w\1\3\0\0\0\fwindows\1\3\0\0\0\rsessions\1\0\1\tname\n+tmux\6s\1\3\0\0\0\16grep string\6r\1\3\0\0\0\23resume last picker\vresume\6R\1\3\0\0\0\20module reloader\6N\1\3\0\0\0\15norg files\6O\1\3\0\0\0\14org files\6p\1\3\0\0\0\fplugins\6o\1\3\0\0\0\fbuffers\1\3\0\0\0\16nvim config\6h\1\3\0\0\0\fhistory\6m\1\3\0\0\0\14man pages\14man_pages\1\3\0\0\0\rbranches\6c\1\3\0\0\0\fcommits\1\0\1\tname\t+git\1\3\0\0\0\18notifications\6f\1\3\0\0\0\15find files\6d\1\3\0\0\0\rdotfiles\6b\1\3\0\0\0\30current buffer fuzzy find\6a\1\3\0\0\0\rbuiltins\fbuiltin\1\0\1\tname\15+telescope\n<c-p>\1\0\0\1\3\0\0\0\26telescope: find files\rregister\14which-key\0\0\0\0\0\0\0\0\0\0\22telescope.builtin\fpickers\rreloader\16git_commits\1\0\0\1\0\0\1\0\1\18preview_width\4š³æÌ\t™³†ÿ\3\17git_bcommits\1\0\0\1\0\0\1\0\1\18preview_width\4š³æÌ\t™³†ÿ\3\17git_branches\15find_files\1\0\1\vhidden\2\16colorscheme\1\0\1\19enable_preview\2\21lsp_code_actions\1\0\1\ntheme\vcursor\30current_buffer_fuzzy_find\1\0\2\14previewer\1\17shorten_path\1\14live_grep\1\0\0\1\2\0\0\n.git/\roldfiles\fbuffers\1\0\0\1\0\1\n<c-x>\18delete_buffer\1\0\0\1\0\1\n<c-x>\18delete_buffer\1\0\6\21show_all_buffers\2\18sort_lastused\2\rsort_mru\2\ntheme\rdropdown\14previewer\1\26ignore_current_buffer\2\15extensions\bfzf\1\0\2\28override_generic_sorter\2\25override_file_sorter\2\rfrecency\1\0\0\15workspaces\1\0\0\twiki\14wiki_path\6g\fproject\17PROJECTS_DIR\tconf\1\0\0\rDOTFILES\rdefaults\1\0\0\fhistory\tpath\1\0\0\31/telescope_history.sqlite3\tdata\fstdpath\afn\18layout_config\1\0\0\vcursor\1\0\0\1\0\1\nwidth\4³æÌ™\3³æÌþ\3\15horizontal\1\0\0\1\0\1\18preview_width\4Í™³æ\fÌ™óþ\3\17path_display\1\4\0\0\nsmart\rabsolute\rtruncate\25file_ignore_patterns\1\6\0\0\n%.jpg\v%.jpeg\n%.png\n%.otf\n%.ttf\rmappings\6n\1\0\0\6i\1\0\0\n<c-k>\23cycle_history_prev\n<c-j>\23cycle_history_next\n<c-s>\22select_horizontal\n<esc>\nclose\n<c-c>\0\n<C-w>\1\0\0\28send_selected_to_qflist\16borderchars\1\t\0\0\bâ”€\bâ”‚\bâ”€\bâ”‚\bâ”Œ\bâ”\bâ”˜\bâ””\fset_env\1\0\4\18prompt_prefix\tï‘« \20selection_caret\bÂ» \rwinblend\3\3\20layout_strategy\tflex\1\0\0\tTERM\benv\bvim\nsetup\0\0\21telescope.themes\22telescope.actions\14telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.toggleterm\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  undotree = {
    commands = { "UndotreeToggle" },
    config = { "\27LJ\2\nh\0\0\2\0\5\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0 undotree_SetFocusWhenToggle\bâ—‰\27undotree_TreeNodeShape\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/undotree",
    url = "https://github.com/mbbill/undotree"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^cmp"] = "nvim-cmp",
  ["^diffview"] = "diffview.nvim",
  ["^luasnip"] = "LuaSnip"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18user.gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.indentline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.null-ls\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n€\1\0\2\4\0\4\1\19:\2\1\0009\2\0\2)\3\0\0\3\3\2\0X\2\a€:\2\1\0009\2\1\2\21\2\2\0\t\2\0\0X\2\2€+\2\1\0L\2\2\0009\2\2\1\a\2\3\0X\2\2€+\2\2\0L\2\2\0+\2\1\0L\2\2\0\16sumneko_lua\tname\15parameters\20activeParameter\2 \1\1\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0003\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\frounded\ffix_pos\0\1\0\3\16hint_enable\1\21auto_close_after\3\15\tbind\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: copilot.vim
time([[Config for copilot.vim]], true)
try_loadstring("\27LJ\2\nß\1\0\0\2\0\b\0\0176\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0K\0\1\0\1\0\6\tdart\2\24NeogitCommitMessage\1\14gitcommit\1\6*\1\blua\2\15typescript\2\22copilot_filetypes\5\25copilot_tab_fallback\26copilot_assume_mapped\23copilot_no_tab_map\6g\bvim\0", "config", "copilot.vim")
time([[Config for copilot.vim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n]\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\2\bRGB\1\tmode\15background\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15user.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19user.nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20user.bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n,\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\17user.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: darkplus.nvim
time([[Config for darkplus.nvim]], true)
try_loadstring("\27LJ\2\nE\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0&      colorscheme darkplus\n      \bcmd\bvim\0", "config", "darkplus.nvim")
time([[Config for darkplus.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd popup.nvim ]]
vim.cmd [[ packadd plenary.nvim ]]
vim.cmd [[ packadd cmp-nvim-lsp ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewFileHistory lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewFileHistory", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file UndotreeToggle lua require("packer.load")({'undotree'}, { cmd = "UndotreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neogit lua require("packer.load")({'neogit'}, { cmd = "Neogit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-pqf', 'nvim-treesitter'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'LuaSnip', 'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'harpoon', 'nvim-notify', 'Comment.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
