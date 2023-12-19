-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy.nvim plugins
require("lazy").setup({
	-- the colorscheme should be available when starting Neovim
	{
    	"folke/tokyonight.nvim",
    	lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
      		-- load the colorscheme here
      		vim.cmd([[colorscheme tokyonight]])
    	end,
	},
	{"LazyVim/LazyVim", version=false},
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"neovim/nvim-lspconfig"},
	{"nvim-treesitter/nvim-treesitter"},
	{'akinsho/toggleterm.nvim', version = "*", config = true},
})

-- Run mason
require("mason").setup()

-- Set vim options
local set = vim.opt
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.number = true
set.relativenumber = true

