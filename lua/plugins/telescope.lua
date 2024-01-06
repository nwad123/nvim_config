return {
    {
	    "nvim-telescope/telescope.nvim",
	    branch = "0.1.x",
	    dependencies = { "nvim-lua/plenary.nvim"},
        keys = {
            {
                "<leader>ff",
                function() require("telescope.builtin").find_files() end,
                desc = "Search for files"
            },
            {
                "<leader>fg",
                function() require("telescope.builtin").live_grep() end,
                desc = "Live grep on project"
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
