return {
	"rebelot/kanagawa.nvim",
	priority = 10,
	lazy = false,
	config = function()
		require("kanagawa").setup({
			compile = true, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = { italic = true },
			keywordStyle = { italic = true },
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = {
					wave = {
						ui = {
							fg = "#c5c9c5", -- palette.dragonWhite
							fg_dim = "#C8C093", -- palette.oldWhite
							fg_reverse = "#223249", -- palette.waveBlue1

							bg_dim = "#12120f", -- palette.dragonBlack1
							bg_gutter = "#282727", -- palette.dragonBlack4

							bg_m3 = "#0d0c0c", -- palette.dragonBlack0
							bg_m2 = "#12120f", -- palette.dragonBlack1
							bg_m1 = "#1D1C19", -- palette.dragonBlack2
							bg = "#181616", -- palette.dragonBlack3
							bg_p1 = "#282727", -- palette.dragonBlack4
							bg_p2 = "#393836", -- palette.dragonBlack5
						},
					},
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
					LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
					MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

					-- Modern Telescope UI form documenation
					TelescopeTitle = { fg = theme.ui.special, bold = true },
					TelescopePromptNormal = { bg = theme.ui.bg_p1 },
					TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
					TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
					TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
					TelescopePreviewNormal = { bg = theme.ui.bg_dim },
					TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },

					-- Add better popup menus
					Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
					PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
					PmenuSbar = { bg = theme.ui.bg_m1 },
					PmenuThumb = { bg = theme.ui.bg_p2 },
				}
			end,
			theme = "wave",
			background = {
				dark = "wave",
				light = "lotus",
			},
		})

		vim.cmd.colorscheme("kanagawa")
	end,
}
