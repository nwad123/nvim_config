return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
    },
    config = function()
        local wk = require("which-key")
        wk.add({
            {
                -- Base keybinds
                mode = { "n", "v" },
                { "<leader>q", "<cmd>q<cr>", desc = "quit" },
                {
                    "<leader>b",
                    group = "buffers",
                    expand = function()
                        return require("which-key.extras").expand.buf()
                    end
                },
            },
            {
                -- File keybindings
                mode = { "n", "v" },
                { "<leader>f",  group = "file" },
                { "<leader>fn", "<cmd>new<cr>", desc = "new file" },
                { "<leader>fw", "<cmd>w<cr>", desc = "write" },
            },
            {
                -- LSP keybindings
                mode = { "n", "v" },
                { "<leader>l", group = "lsp" },
            },
            {
                -- Window keybindings
                mode = { "n", "v" },
                { "<leader>w",  group = "window" },
                { "<leader>ws", "<cmd>split<cr>",    desc = "split" },
                { "<leader>wv", "<cmd>vsplit<cr>",   desc = "vertical split" },
                { "<leader>wh", "<cmd>wincmd h<cr>", desc = "move left" },
                { "<leader>wj", "<cmd>wincmd j<cr>", desc = "move down" },
                { "<leader>wk", "<cmd>wincmd k<cr>", desc = "move up" },
                { "<leader>wl", "<cmd>wincmd l<cr>", desc = "move right" },
            },
        })
    end
}
