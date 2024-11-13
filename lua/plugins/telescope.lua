return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "Find files by name",
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep()
                end,
                desc = "Live grep in cwd",
            },
            {
                "<leader>fo",
                function()
                    require("telescope.builtin").find_files({ initial_mode = "normal" })
                end,
                desc = "Find files in cwd",
            },
            {
                "<leader>fr",
                function()
                    require("telescope.builtin").oldfiles({ initial_mode = "normal" })
                end,
                desc = "Find recent files",
            },
            {
                "<leader>fs",
                function()
                    require("telescope.builtin").grep_string({ initial_mode = "normal" })
                end,
                desc = "Find string under cursor",
            },
        },
        opts = {
            defaults = {
                borderchars = { "━", "┃", "━", "┃", "┏", "┓", "┙", "┗" },
                layout_strategy = "vertical",
                layout_config = { height = 0.95, },
            },
        },
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
