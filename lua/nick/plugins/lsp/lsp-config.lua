return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		opts = {
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"clang-format",
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"pyright",
				"clangd",
				"rust_analyzer",
			},
		},
		config = true,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
		},
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
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
		end,
	},
}
