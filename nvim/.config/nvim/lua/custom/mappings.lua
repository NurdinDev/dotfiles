local M = {}

--
M.disabled = {
  n = {
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
  }
}

M.truzen = {
   n = {
      ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
      ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
      ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
   },
}

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

M.shade = {
  n = {
    ["<leader>s"] = {
      function()
        require("shade").toggle()
      end,

      "   toggle shade.nvim",
    },

    ["<leader>lz"] = {
      function()
        require("nvterm.terminal").send("lazygit", "vertical")
      end,
      "nvterm lazygit",
    },
  },
}

M.navigator = {

  n = {
    ["<C-h>"] = {'<CMD>NavigatorLeft<CR>'},
    ["<C-l>"] = {'<CMD>NavigatorRight<CR>'},
    ["<C-k>"] = {'<CMD>NavigatorUp<CR>'},
    ["<C-j>"] = {'<CMD>NavigatorDown<CR>'},
    ["<A-p>"] = {'<CMD>NavigatorPrevious<CR>'}
  }
}


M.nvterm = {
  t = {
    ["<C-h>"] = { "<C-\\><C-N><CMD>NavigatorLeft<CR>", "  move out from terminal" },
    ["<C-l>"] = { "<C-\\><C-N><CMD>NavigatorRight<CR>", "  move out from terminal" },
    ["<C-k>"] = { "<C-\\><C-N><CMD>NavigatorUp<CR>", "  move out from terminal" },
    ["<C-j>"] = { "<C-\\><C-N><CMD>NavigatorDown<CR>", "  move out from terminal" }
  }
}

return M
