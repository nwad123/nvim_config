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

-- return {
-- 	"rebelot/kanagawa.nvim",
-- 	priority = 10,
-- 	config = function()
-- 		require("kanagawa").setup({
-- 			compile = true, -- enable compiling the colorscheme
-- 			undercurl = true, -- enable undercurls
-- 			commentStyle = { italic = true },
-- 			functionStyle = {},
-- 			keywordStyle = { italic = true },
-- 			statementStyle = { bold = true },
-- 			typeStyle = {},
-- 			transparent = false, -- do not set background color
-- 			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
-- 			terminalColors = true, -- define vim.g.terminal_color_{0,17}
-- 			colors = { -- add/modify theme and palette colors
-- 				palette = {},
-- 				theme = {
-- 					wave = {},
-- 					lotus = {},
-- 					dragon = {},
-- 					all = {
-- 						ui = {
-- 							float = {
-- 								bg = "none",
-- 							},
-- 						},
-- 					},
-- 				},
-- 			},
-- 			overrides = function(colors) -- add/modify highlights
-- 				local theme = colors.theme
-- 				return {
-- 					NormalFloat = { bg = "none" },
-- 					FloatBorder = { bg = "none" },
-- 					FloatTitle = { bg = "none" },
--
-- 					-- Save an hlgroup with dark background and dimmed foreground
-- 					-- so that you can use it where your still want darker windows.
-- 					-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
-- 					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
--
-- 					-- Popular plugins that open floats will link to NormalFloat by default;
-- 					-- set their background accordingly if you wish to keep them dark and borderless
-- 					-- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
-- 					-- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
-- 				}
-- 			end,
-- 		})
--
-- 		vim.cmd.colorscheme("kanagawa")
-- 	end,
-- }

return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("cyberdream").setup({
			-- Set light or dark variant
			variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`

			-- Enable transparent background
			transparent = true,

			-- Reduce the overall saturation of colours for a more muted look
			saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)

			-- Enable italics comments
			italic_comments = true,

			-- Replace all fillchars with ' ' for the ultimate clean look
			hide_fillchars = false,

			-- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
			borderless_pickers = false,

			-- Set terminal colors used in `:terminal`
			terminal_colors = true,

			-- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
			cache = true,

			-- Disable or enable colorscheme extensions
			extensions = {
				telescope = true,
			},
		})

 		vim.cmd.colorscheme("cyberdream")
	end,
}
