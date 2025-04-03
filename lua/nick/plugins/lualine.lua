return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			section_separators = { left = "", right = "" },
			component_separators = { left = "|", right = "|" },
			theme = "iceberg_dark",
		    disabled_filetypes = { "neo-tree" },
		},
		sections = {
			lualine_a = {},
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = {},
			lualine_x = {},
			lualine_y = { "lsp_status" },
			lualine_z = { "mode" },
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = { "filename" },
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
	},
	config = true,
}
