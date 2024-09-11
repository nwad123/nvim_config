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
        wk.register(
            {
                { "<leader>f",  group = "file" },
                { "<leader>fn", "<cmd>new<cr>",      desc = "New files" },
                { "<leader>fw", "<cmd>w<cr>",        desc = "Write file" },
                { "<leader>l",  group = "lsp" },
                { "<leader>w",  group = "window" },
                { "<leader>wc", "<cmd>wq!<cr>",      desc = "write and close" },
                { "<leader>wh", "<cmd>wincmd h<cr>", desc = "move left" },
                { "<leader>wj", "<cmd>wincmd j<cr>", desc = "move down" },
                { "<leader>wk", "<cmd>wincmd k<cr>", desc = "move up" },
                { "<leader>wl", "<cmd>wincmd l<cr>", desc = "move right" },
                { "<leader>ws", "<cmd>split<cr>",    desc = "split" },
                { "<leader>wv", "<cmd>vsplit<cr>",   desc = "vertical split" },
            })
    end
}
