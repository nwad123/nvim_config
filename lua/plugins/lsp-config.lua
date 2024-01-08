return {
	{
        "williamboman/mason.nvim",
        config = true
    },
	{
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer", "pyright" },
        },
        config = true
    },
	{
        "neovim/nvim-lspconfig",
        keys = {
            { "<leader>lh", function () vim.lsp.buf.hover() end, desc = "Hover" },
            { "<leader>la", function () vim.lsp.buf.code_action() end, desc = "Show code actions" },
            { "<leader>ld", function () vim.lsp.buf.definition() end, desc = "Go to defition" }
        },
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.pyright.setup({})
            lspconfig.tsserver.setup({})
        end
    }
}
