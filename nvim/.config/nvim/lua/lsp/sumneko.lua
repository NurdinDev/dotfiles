local lspconfig = require("lspconfig")

local sumneko_binary_path = vim.fn.exepath('lua-language-server')
local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
local settings = {
 Lua = {
        runtime = { version = "LuaJIT", path = runtime_path },
        diagnostics = {
            enable = true,
            globals = {
                "vim",
                "use",
                "describe",
                "it",
                "assert",
                "before_each",
                "after_each",
            },
        },
        workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
        },
         -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
            enable = false,
        },
    },
}

local M = {}
M.setup = function(on_attach)
    lspconfig.sumneko_lua.setup({
        on_attach = on_attach,
        cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"};
        settings = settings,
        flags = {
            debounce_text_changes = 150,
        },
    })
end

return M
