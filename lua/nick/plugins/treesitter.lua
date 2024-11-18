return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter_config = require("nvim-treesitter.configs")
		treesitter_config.setup({
			ensure_installed = { "c", "cpp", "lua", "rust" },
			ignore_install = {},
			sync_install = false,
			highlight = { enable = true, disable = { "vimdoc" }, additional_vim_regex_highlighting = false },
			indent = { enable = true },
			auto_install = true,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "n",
					scope_incremental = "s",
					node_decremental = "m",
				},
			},
		})
	end,
}
