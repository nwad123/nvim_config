return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        open_mapping = [[<c-\>]],
        insert_mappings = true,   -- enable open_mapping in insert mode
        terminal_mappings = true, -- enable open_mapping in terminal mode
        hide_numbers = true,
        shade_filetypes = {},
        shade_terminals = {},
        shading_factor = 2,
        direction = "float",
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
            border = "curved"
        },
    },
    config = true,
    keys = {
        { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Open floating terminal" },
    },
}
