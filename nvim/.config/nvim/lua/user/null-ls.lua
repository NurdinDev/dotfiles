local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
  debounce = 150,
  save_after_format = false,
	sources = {
    formatting.prettierd.with {
      condition = function(utils)
        return not utils.root_has_file { ".eslintrc", ".eslintrc.js" }
      end,
      prefer_local = "node_modules/.bin",
    },
    formatting.eslint_d.with {
      condition = function(utils)
        return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
      end,
      prefer_local = "node_modules/.bin",
    },
		formatting.stylua,
    formatting.sqlformat,
    formatting.goimports,
    diagnostics.eslint_d.with {
        condition = function(utils)
          return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
        end,
        prefer_local = "node_modules/.bin",
    },
    diagnostics.shellcheck,
    diagnostics.luacheck,
    diagnostics.vint,
    diagnostics.chktex,
    diagnostics.markdownlint.with {
      filetypes = { "markdown" },
    },
    diagnostics.vale.with {
      filetypes = { "markdown" },
    },
    diagnostics.revive.with {
      condition = function(utils)
        return utils.root_has_file "revive.toml"
      end,
    },
    diagnostics.golangci_lint.with {
      condition = function(utils)
        return utils.root_has_file ".golangci.yml"
      end,
    },
    code_actions.shellcheck,
    code_actions.eslint_d.with {
      condition = function(utils)
        return utils.root_has_file { ".eslintrc", ".eslintrc.js" }
      end,
      prefer_local = "node_modules/.bin",
    },
    -- diagnostics.flake8
	},
})
