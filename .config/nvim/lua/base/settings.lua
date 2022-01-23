-- global
vim.o.encoding = 'utf-8'
vim.o.guicursor = ''
vim.o.hlsearch = false
vim.o.hidden = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.errorbells = false
vim.o.backup = false
vim.cmd('set undodir=~/.vim/undo-dir')
vim.o.incsearch = true
vim.o.termguicolors = true
vim.o.scrolloff = 8
vim.o.showmode = false
--vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.completeopt = "menuone,noselect"
vim.o.colorcolumn = '80'
vim.o.cmdheight = 1
vim.o.updatetime = 0
vim.o.background = 'dark'
vim.o.wildmode = 'longest,list,full'
vim.o.splitbelow = true
vim.o.splitright = true  -- splitting settings
vim.o.clipboard = 'unnamedplus' -- Use system clipboard
vim.o.laststatus = 2
vim.o.timeoutlen = 300
-- buffer
vim.o.syntax = 'on'
vim.bo.syntax = 'on'
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.bo.softtabstop = 4
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.smartindent = true
vim.bo.smartindent = true
vim.o.swapfile = false
vim.bo.swapfile = false
vim.o.undofile = true
vim.bo.undofile = true

-- window
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = true
vim.wo.signcolumn= 'yes'

-- vim cmds
-- vim.cmd('colorscheme nord')
vim.cmd('highlight Normal guibg=none')
vim.cmd('set nocompatible')
vim.cmd('filetype plugin on')
vim.cmd('highlight! link NERDTreeFlags NERDTreeDir')

-- vim.cmd('let g:onedark_style = \'deep\'')
-- vim.cmd('colorscheme onedark')
require('onedark').setup {
    style = 'deep',
    ending_tildes=true
}
require('onedark').load()



-- misc
vim.opt.termguicolors = true
-- set shortmess+=c

-- colorscheme
-- require('xresources')
