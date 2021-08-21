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
  everforest = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/everforest"
  },
  ["far.vim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/far.vim"
  },
  ["gitsigns.nvim"] = {
    config = { "require('plugins.git')" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["gundo.vim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/gundo.vim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
  },
  ["lsp-trouble.nvim"] = {
    commands = { "LspTrouble" },
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17auto_preview\1\14auto_fold\2\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/lsp-trouble.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["minsnip.nvim"] = {
    config = { "require('plugins.minsnip')" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/minsnip.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-lsp-compl"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-lsp-compl"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-web-nonicons"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/nvim-web-nonicons"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["package-info.nvim"] = {
    config = { "require('plugins.package-info')" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/package-info.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  ["telescope-arecibo.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/telescope-arecibo.nvim"
  },
  ["telescope-cheat.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/telescope-cheat.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope-hop.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/telescope-hop.nvim"
  },
  ["telescope.nvim"] = {
    config = { "require('plugins.telescope')" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["twilight.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/twilight.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-fugitive"] = {
    commands = { "Git" },
    loaded = false,
    needs_bufread = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/vim-fugitive"
  },
  ["vim-illuminate"] = {
    config = { "require('plugins.illuminate')" },
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-json"] = {
    loaded = false,
    needs_bufread = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/vim-json"
  },
  ["vim-qf"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/vim-qf"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vista.vim"] = {
    commands = { "Vista" },
    loaded = false,
    needs_bufread = false,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/opt/vista.vim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/Users/nureddin/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: minsnip.nvim
time([[Config for minsnip.nvim]], true)
require('plugins.minsnip')
time([[Config for minsnip.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('plugins.telescope')
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require('plugins.git')
time([[Config for gitsigns.nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
require('plugins.illuminate')
time([[Config for vim-illuminate]], false)
-- Config for: package-info.nvim
time([[Config for package-info.nvim]], true)
require('plugins.package-info')
time([[Config for package-info.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file LspTrouble lua require("packer.load")({'lsp-trouble.nvim'}, { cmd = "LspTrouble", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file Vista lua require("packer.load")({'vista.vim'}, { cmd = "Vista", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command! -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-json'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/nureddin/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]], true)
vim.cmd [[source /Users/nureddin/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]]
time([[Sourcing ftdetect script at: /Users/nureddin/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
