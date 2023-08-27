-- This file is automatically loaded by plugins.core
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- enable 24bit colors
vim.opt.termguicolors = true
vim.opt.background = "light"

-- editor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.list = true -- show invisible chars like tabs, trailing spaces, ...
vim.opt.showmode = false

-- TODO: use lua functions to read from file; and autoreload?
vim.opt.background = vim.trim(vim.fn.system("cat " .. vim.fn.stdpath("config") .. "/background"))

-- indents and tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.shiftround = true

-- long lines and smart break/join behavior
vim.opt.wrap = false
vim.opt.formatoptions = "tcqjroln"

-- search
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- system
vim.opt.clipboard = "unnamedplus" -- sync with system clipboard

-- which-key
vim.opt.timeoutlen = 300
