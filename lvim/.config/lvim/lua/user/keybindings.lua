local M = {}

M.config = function()

    lvim.keys.normal_mode["<esc><esc>"] = "<cmd>nohlsearch<cr>"

    -- WhichKey keybindings
  -- ========================================
  
    if lvim.builtin.fancy_bufferline.active then
    lvim.builtin.which_key.mappings.b = {
      name = "Buffers",
      ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "goto 1" },
      ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "goto 2" },
      ["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "goto 3" },
      ["4"] = { "<Cmd>BufferLineGoToBuffer 4<CR>", "goto 4" },
      ["5"] = { "<Cmd>BufferLineGoToBuffer 5<CR>", "goto 5" },
      ["6"] = { "<Cmd>BufferLineGoToBuffer 6<CR>", "goto 6" },
      ["7"] = { "<Cmd>BufferLineGoToBuffer 7<CR>", "goto 7" },
      ["8"] = { "<Cmd>BufferLineGoToBuffer 8<CR>", "goto 8" },
      ["9"] = { "<Cmd>BufferLineGoToBuffer 9<CR>", "goto 9" },
      c = { "<Cmd>BufferLinePickClose<CR>", "delete buffer" },
      p = { "<Cmd>BufferLinePick<CR>", "pick buffer" },
      t = { "<Cmd>BufferLineGroupToggle docs<CR>", "toggle groups" },
      f = { "<cmd>Telescope buffers<cr>", "Find" },
      b = { "<cmd>b#<cr>", "Previous" },
    }
  end

  local ok, _ = pcall(require, "vim.diagnostic")
  if ok then
    lvim.builtin.which_key.mappings["lj"] = {
      "<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = {border = 'rounded', focusable = false, source = 'always'}})<cr>",
      "Next Diagnostic",
    }
    lvim.builtin.which_key.mappings["lk"] = {
      "<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = {border = 'rounded', focusable = false, source = 'always'}})<cr>",
      "Prev Diagnostic",
    }
  end

  lvim.builtin.which_key.mappings["o"] = { "<cmd>SymbolsOutline<cr>", "Symbol Outline" }
  lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
  lvim.builtin.which_key.mappings["R"] = {
    name = "Replace",
    f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Current Buffer" },
    p = { "<cmd>lua require('spectre').open()<cr>", "Project" },
    w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
  }
  
    lvim.builtin.which_key.mappings["t"] = {
    name = "+Trouble",
    d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
    f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
    l = { "<cmd>Trouble loclist<cr>", "LocationList" },
    q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
    r = { "<cmd>Trouble lsp_references<cr>", "References" },
    t = { "<cmd>TodoLocList <cr>", "Todo" },
    w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
  }
  lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }

end

return M
