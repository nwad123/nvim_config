return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        icons_enabled = false,
        theme = "everforest",
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff", "diagnostics" },
            lualine_c = { "filename" },
        },
        disabled_filetypes = { "neo-tree" },
    },
    config = true,
}
