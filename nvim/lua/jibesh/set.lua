-- vim.opt.guicursor = ""
--
-- vim.opt.nu = true
-- vim.opt.relativenumber = true
--
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
vim.opt.expandtab = true
--
-- vim.opt.smartindent = true
--
-- vim.opt.wrap = fal
--
-- vim.opt.swapfile = false
-- vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true
--
-- vim.opt.hlsearch = true
-- vim.opt.incsearch = true
--
-- vim.opt.termguicolors = true
--
-- vim.opt.scrolloff = 8
-- vim.opt.signcolumn = "yes"
-- vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"
-- vim.g.mapleader = " "
--
-- vim.opt.clipboard = "unnamedplus"
-- vim.opt.cursorline = false
--
-- vim.opt.ignorecase = true                       -- ignore case in search patterns
-- vim.opt.wrap = false
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
--
vim.opt.guicursor = ""
-- vim.opt.cursorline = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"
vim.opt.laststatus = 3

vim.opt.shortmess:append "c"
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "white"})
vim.opt.colorcolumn = "80"
vim.opt.cursorline = false

--vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

-- vim.opt.laststatus = 0 -- removing statusline
