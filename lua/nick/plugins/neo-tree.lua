return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        close_if_last_window = true,
        window = {
            position = "right",
            width = 35
        },
        use_libuv_file_watcher = true,
        never_show = { ".DS_Store", },
        follow_current_file = { enabled = true, leave_dirs_open = true, },
    },
    keys = {
        { "<leader>ft", "<cmd>Neotree toggle position=left<cr>", desc = "Toggle file tree" },
        { "<leader>fe", "<cmd>Neotree focus<cr>",                desc = "Focus on file tree if open" },
    }
}
