return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
    config = function()
        local treesitter_config = require("nvim-treesitter.configs")
        treesitter_config.setup({
        	ensure_installed = { "c", "cpp", "lua", "rust" },
	        sync_install = false,
        	highlight = { enable = true, disable = { "vimdoc" }, },
	        indent = { enable = true },
	        additional_vim_regex_highlighting = false,
            auto_install = true,
        })
    end
}
