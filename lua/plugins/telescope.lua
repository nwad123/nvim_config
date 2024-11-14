return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<leader>fb",
                function()
                    require("telescope.builtin").current_buffer_fuzzy_find()
                end,
                desc = "Find in current buffer",
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep()
                end,
                desc = "Live grep across project",
            },
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
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
            {
                "<leader>ls",
                function()
                    require("telescope.builtin").lsp_document_symbols({ initial_mode = "normal" })
                end,
                desc = "Search document symbols",
            }
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
