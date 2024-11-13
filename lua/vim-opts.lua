local set = vim.opt

-- tab options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.number = true
set.relativenumber = true
set.expandtab = true

-- wrap options
set.scrolloff = 8
set.wrap = true

-- leader
vim.g.mapleader = " "

-- Fold options
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
set.foldminlines = 3
set.foldnestmax = 2
set.foldlevel = 20
