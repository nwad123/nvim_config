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
        wk.register({
            f = {
                name = "file",
                n = { "<cmd>new<cr>", "New files" }
            },
            l = { name = "lsp" },
            w = {
                name = 'window',
                s = { "<cmd>split<cr>", "split" },
                v = { "<cmd>vsplit<cr>", "vertical split" },
                w = { "<cmd>wq<cr>", "write and close" },
                h = { "<cmd>wincmd h<cr>", "move left" },
                j = { "<cmd>wincmd j<cr>", "move down" },
                k = { "<cmd>wincmd k<cr>", "move up" },
                l = { "<cmd>wincmd l<cr>", "move right" },
            },
        }, { prefix = "<leader>" })
    end
}
