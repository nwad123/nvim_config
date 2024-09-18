return {
	{
        "williamboman/mason.nvim",
        config = true
    },
	{
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "ts_ls" },
        },
        config = true
    },
	{
        "neovim/nvim-lspconfig",
        keys = {
            { "<leader>lh", function () vim.lsp.buf.hover() end, desc = "Hover" },
            { "<leader>la", function () vim.lsp.buf.code_action() end, desc = "Show code actions" },
            { "<leader>ld", function () vim.lsp.buf.definition() end, desc = "Go to defition" },
<<<<<<< HEAD
            { "<leader>lr", function () vim.lsp.buf.definition() end, desc = "Rename" },
=======
            { "<leader>lr", function () vim.lsp.buf.rename() end, desc = "Rename" },
>>>>>>> 8eb37f8 (Added rename support)
        },
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.pyright.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.clangd.setup({})
        end
    }
}
