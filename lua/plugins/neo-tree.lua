return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    opts = {
        close_if_last_window = true,
        window = {
            position = "left",
            width = 26
        },

    },
    keys = {
        { "<leader>ft", "<cmd>Neotree toggle position=left<cr>", desc = "Toggle file tree" },
        { "<leader>fe", "<cmd>Neotree focus<cr>",                desc = "Focus on file tree if open" },
    }
}
