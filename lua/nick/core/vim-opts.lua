local set = vim.opt

-- tab options
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.number = true
set.relativenumber = true
set.expandtab = true
set.smoothscroll = true

-- wrap options
set.scrolloff = 8
set.wrap = true

-- Fold options
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
set.foldminlines = 3
set.foldnestmax = 2
set.foldlevel = 19

-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<Space>", "<Nop>")
