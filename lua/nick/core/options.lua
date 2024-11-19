local set = vim.opt

-- tab options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true

-- line numbering
set.number = true
set.relativenumber = true

-- wrap options
set.scrolloff = 8
set.wrap = true

-- search options
set.ignorecase = true
set.smartcase = true

-- split options
set.splitright = true
set.splitbelow = true

-- fold options
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
set.foldminlines = 3
set.foldnestmax = 2
set.foldlevel = 19

-- diagnostic symbols
vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

local border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = false,
	float = { header = "", border = border },
})
