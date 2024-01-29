return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        keys = {
            {
                "<leader>ff",
                function() require("telescope.builtin").find_files({
                    layout_strategy = 'vertical',
                }) end,
                desc = "Search for files"
            },
            {
                "<leader>fg",
                function()
                    require("telescope.builtin").live_grep({
                        layout_strategy = 'vertical',
                    })
                end,
                desc = "Live grep on project"
            },
            {
                "<leader>fo",
                function()
                    vim.cmd("Telescope find_files initial_mode=normal")
                end,
                desc = "Open files"
            },
            {
                "<leader>fr",
                function() require("telescope.builtin").oldfiles() end,
                desc = "Recent files"
            }
        },
        opts = {
            defaults = {
                borderchars = { "━", "┃", "━", "┃", "┏", "┓", "┙", "┗" }
            }
        }
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
