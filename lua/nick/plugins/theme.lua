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
		require("kanagawa").setup({
			compile = true, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = {
					wave = {},
					lotus = {},
					dragon = {},
					all = {
						ui = {
							float = {
								bg = "none",
							},
						},
					},
				},
			},
			overrides = function(colors) -- add/modify highlights
				local theme = colors.theme
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },

					-- Save an hlgroup with dark background and dimmed foreground
					-- so that you can use it where your still want darker windows.
					-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
					NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

					-- Popular plugins that open floats will link to NormalFloat by default;
					-- set their background accordingly if you wish to keep them dark and borderless
					-- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					-- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
				}
			end,
		})

		vim.cmd.colorscheme("kanagawa")
	end,
}
