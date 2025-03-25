return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			python = { "pylint" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		-- Set pylint to work in virtualenv
        if vim.fn.finddir('.venv') then
		    lint.linters.pylint.cmd = "python"
	    	lint.linters.pylint.args = { "-m", "pylint", "-f", "json" }
        end
	end,
	keys = {
		{
			"<leader>ll",
			function()
				require("lint").try_lint()
			end,
			mode = "n",
			desc = "Lint current buffer",
		},
	},
}
