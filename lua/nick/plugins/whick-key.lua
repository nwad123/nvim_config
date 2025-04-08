return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.add({
			{
				-- Base keybinds
				mode = { "n" },
				{ "<leader>q", "<cmd>q<cr>", desc = "quit" },
                -- Buffer keybinds
				{
					"<leader>bl",
					group = "buffers",
					expand = function()
						return require("which-key.extras").expand.buf()
					end,
				},
                {
                    "<leader>bn",
                    "<cmd>bn<cr>",
                    desc = "next buffer",
                },
                {
                    "<leader>bp",
                    "<cmd>bp<cr>",
                    desc = "past buffer",
                },
				{ "B", "<cmd>b#<cr>", desc = "Switch to most recent buffer" },
			},
			{
				-- File keybindings
				mode = { "n", "v" },
				{ "<leader>f", group = "file" },
				{ "<leader>fn", "<cmd>new<cr>", desc = "new file" },
				{ "<leader>fw", "<cmd>w<cr>", desc = "write" },
			},
			{
				-- LSP keybindings
				mode = { "n", "v" },
				{ "<leader>l", group = "lsp" },
			},
			{
				-- Window keybindings
				mode = { "n" },
				{ "<leader>w", group = "window" },
				{ "<leader>ws", "<cmd>split<cr>", desc = "split" },
				{ "<leader>wv", "<cmd>vsplit<cr>", desc = "vertical split" },
				{ "<leader>wh", "<cmd>wincmd h<cr>", desc = "move left" },
				{ "<leader>wj", "<cmd>wincmd j<cr>", desc = "move down" },
				{ "<leader>wk", "<cmd>wincmd k<cr>", desc = "move up" },
				{ "<leader>wl", "<cmd>wincmd l<cr>", desc = "move right" },
			},
			{
				-- Movement keybindings
				mode = { "n", "v" },
				{ "J", "10gj", desc = "move down by 10" },
				{ "K", "10gk", desc = "move up by 10" },
				{ "j", "gj", desc = "move down by visual line" },
				{ "k", "gk", desc = "move up by visual line" },
			},
		})
	end,
}
