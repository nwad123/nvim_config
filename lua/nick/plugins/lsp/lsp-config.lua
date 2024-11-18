return {
	{
		"neovim/nvim-lspconfig",
		keys = {
			{
				"<leader>lh",
				function()
					vim.lsp.buf.hover()
				end,
				desc = "Hover",
			},
			{
				"<leader>la",
				function()
					vim.lsp.buf.code_action()
				end,
				desc = "Show code actions",
			},
			{
				"<leader>ld",
				function()
					vim.lsp.buf.definition()
				end,
				desc = "Go to defition",
			},
			{
				"<leader>lD",
				function()
					vim.lsp.buf.declaration()
				end,
				desc = "Go to declaration",
			},
			{
				"<leader>lr",
				function()
					vim.lsp.buf.rename()
				end,
				desc = "Rename",
			},
			{
				"<leader>lm",
				function()
					vim.diagnostic.open_float(nil, {
						focusable = false,
						close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
						border = "rounded",
						source = "always",
						prefix = " ",
						scope = "cursor",
					})
				end,
				desc = "Diagnostic messages",
			},
		},
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.pyright.setup({})
			lspconfig.clangd.setup({})
		end,
	},
}
