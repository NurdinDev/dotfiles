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
  local success, result = pcall(loadstring(s))
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
  ["Catppuccino.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16catppuccino\15user/theme\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/Catppuccino.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\20user.bufferline\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-tabnine"] = {
    config = { "\27LJ\2\np\0\0\5\0\4\0\b6\0\0\0'\2\1\0B\0\2\2\18\3\0\0009\1\2\0005\4\3\0B\1\3\1K\0\1\0\1\0\3\tsort\2\20max_num_results\3\n\14max_lines\3è\a\nsetup\23cmp_tabnine.config\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["doom-one.nvim"] = {
    config = { "\27LJ\2\np\0\0\3\0\5\0\t6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0&      colorscheme doom-one\n      \bcmd\29doom_one_italic_comments\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/doom-one.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.hop\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\23user/lsp_signature\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.lualine\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.autopairs\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.bqf\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/nvim-bqf"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs" },
    loaded = true,
    only_config = true
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\19user.colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-lsp-ts-utils"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\18user.ts_utils\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\20core.lspinstall\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\17user.spectre\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.nvimtree\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16persistence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.project\frequire\0" },
    loaded = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/start/project.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { "\27LJ\2\nB\0\0\2\0\4\0\0066\0\0\0009\0\1\0009\0\2\0+\1\1\0=\1\3\0K\0\1\0\17auto_preview\20symbols_outline\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-fzf-native.nvim" },
    loaded = true,
    only_config = true
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\ny\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0(      colorscheme tokyonight\n      \bcmd\bvim\15tokyonight\15user/theme\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    commands = { "Trouble" },
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\18user.twilight\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/twilight.nvim"
  },
  ["vim-matchup"] = {
    after_files = { "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    config = { "\27LJ\2\nN\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\1\vmethod\npopup!matchup_matchparen_offscreen\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/vim-matchup"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\ruser.zen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/lunarvim/site/pack/packer/opt/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^persistence"] = "persistence.nvim"
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

-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\26user.indent_blankline\frequire\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcore.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\vconfig\20user.bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: cmp-tabnine
time([[Config for cmp-tabnine]], true)
try_loadstring("\27LJ\2\np\0\0\5\0\4\0\b6\0\0\0'\2\1\0B\0\2\2\18\3\0\0009\1\2\0005\4\3\0B\1\3\1K\0\1\0\1\0\3\tsort\2\20max_num_results\3\n\14max_lines\3è\a\nsetup\23cmp_tabnine.config\frequire\0", "config", "cmp-tabnine")
time([[Config for cmp-tabnine]], false)
-- Conditional loads
time("Condition for { 'doom-one.nvim' }", true)
if
try_loadstring("\27LJ\2\nW\0\0\3\0\4\0\0166\0\0\0009\0\1\0'\2\2\0B\0\2\0029\1\3\0)\2\17\0\3\2\1\0X\1\4€9\1\3\0)\2\21\0\0\1\2\0X\1\2€+\1\1\0X\2\1€+\1\2\0L\1\2\0\thour\a*t\tdate\aos\0", "condition", '{ "doom-one.nvim" }')
then
time("Condition for { 'doom-one.nvim' }", false)
time([[packadd for doom-one.nvim]], true)
		require("packer.load")({"doom-one.nvim"}, {}, _G.packer_plugins)
	time([[packadd for doom-one.nvim]], false)
	-- Config for: doom-one.nvim
	time([[Config for doom-one.nvim]], true)
	try_loadstring("\27LJ\2\np\0\0\3\0\5\0\t6\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\3\0'\2\4\0B\0\2\1K\0\1\0&      colorscheme doom-one\n      \bcmd\29doom_one_italic_comments\6g\bvim\0", "config", "doom-one.nvim")
	time([[Config for doom-one.nvim]], false)
else
time("Condition for { 'doom-one.nvim' }", false)
end
time("Condition for { 'tokyonight.nvim' }", true)
if
try_loadstring("\27LJ\2\nw\0\0\3\0\4\0\0246\0\0\0009\0\1\0'\2\2\0B\0\2\0029\1\3\0)\2\0\0\3\2\1\0X\1\4€9\1\3\0)\2\a\0\0\1\2\0X\1\n€9\1\3\0)\2\v\0\3\2\1\0X\1\4€9\1\3\0)\2\17\0\0\1\2\0X\1\2€+\1\1\0X\2\1€+\1\2\0L\1\2\0\thour\a*t\tdate\aos\0", "condition", '{ "tokyonight.nvim" }')
then
time("Condition for { 'tokyonight.nvim' }", false)
time([[packadd for tokyonight.nvim]], true)
		require("packer.load")({"tokyonight.nvim"}, {}, _G.packer_plugins)
	time([[packadd for tokyonight.nvim]], false)
	-- Config for: tokyonight.nvim
	time([[Config for tokyonight.nvim]], true)
	try_loadstring("\27LJ\2\ny\0\0\3\0\6\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0'\2\5\0B\0\2\1K\0\1\0(      colorscheme tokyonight\n      \bcmd\bvim\15tokyonight\15user/theme\frequire\0", "config", "tokyonight.nvim")
	time([[Config for tokyonight.nvim]], false)
else
time("Condition for { 'tokyonight.nvim' }", false)
end
time("Condition for { 'Catppuccino.nvim' }", true)
if
try_loadstring("\27LJ\2\nW\0\0\3\0\4\0\0166\0\0\0009\0\1\0'\2\2\0B\0\2\0029\1\3\0)\2\a\0\3\2\1\0X\1\4€9\1\3\0)\2\v\0\0\1\2\0X\1\2€+\1\1\0X\2\1€+\1\2\0L\1\2\0\thour\a*t\tdate\aos\0", "condition", '{ "Catppuccino.nvim" }')
then
time("Condition for { 'Catppuccino.nvim' }", false)
time([[packadd for Catppuccino.nvim]], true)
		require("packer.load")({"Catppuccino.nvim"}, {}, _G.packer_plugins)
	time([[packadd for Catppuccino.nvim]], false)
	-- Config for: Catppuccino.nvim
	time([[Config for Catppuccino.nvim]], true)
	try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\16catppuccino\15user/theme\frequire\0", "config", "Catppuccino.nvim")
	time([[Config for Catppuccino.nvim]], false)
else
time("Condition for { 'Catppuccino.nvim' }", false)
end
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd telescope-fzf-native.nvim ]]

-- Config for: telescope-fzf-native.nvim
try_loadstring("\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\bfzf\19load_extension\14telescope\frequire\0", "config", "telescope-fzf-native.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Trouble lua require("packer.load")({'trouble.nvim'}, { cmd = "Trouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-lsp-ts-utils'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript.tsx ++once lua require("packer.load")({'nvim-lsp-ts-utils'}, { ft = "typescript.tsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript.jsx ++once lua require("packer.load")({'nvim-lsp-ts-utils'}, { ft = "javascript.jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-lsp-ts-utils'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'nvim-lsp-ts-utils'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'nvim-lsp-ts-utils'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'vim-matchup'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'lsp_signature.nvim', 'twilight.nvim', 'nvim-bqf', 'zen-mode.nvim', 'nvim-colorizer.lua', 'nvim-comment', 'nvim-spectre', 'gitsigns.nvim', 'todo-comments.nvim', 'hop.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'persistence.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'which-key.nvim', 'toggleterm.nvim', 'dashboard-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
