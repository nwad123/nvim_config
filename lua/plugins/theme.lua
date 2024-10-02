-- return {
--	"folke/tokyonight.nvim",
--   	lazy = false, -- make sure we load this during startup if it is your main colorscheme
--	priority = 1000, -- make sure to load this before all the other start plugins
--	config = function()
--	    -- load the colorscheme here
--	    vim.cmd.colorscheme "tokyonight-storm"
--  	end,
--}

-- return {
--     "ellisonleao/gruvbox.nvim",
--     priority = 10,
--     config = function()
--         require("gruvbox").setup({
--             contrast = "hard",
--         })
--
--         vim.cmd.colorscheme "gruvbox"
--     end
-- }

return {
    "rebelot/kanagawa.nvim",
    priority = 10,
    config = function()
        require('kanagawa').setup({
            compile = true,  -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = true,   -- do not set background color
            dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = {             -- add/modify theme and palette colors
                palette = {},
                theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
            },
            overrides = function(colors) -- add/modify highlights
                return {}
            end,
            theme = "wave",    -- Load "wave" theme when 'background' option is not set
        })

        vim.cmd.colorscheme 'kanagawa'
    end
}
