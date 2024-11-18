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
