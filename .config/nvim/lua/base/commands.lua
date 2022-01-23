-- autocmd InsertEnter * norm zz

-- Remove trailing whitespace on save
vim.api.nvim_command('autocmd BufWritePre * %s/\\s\\+$//e')

-- autocmd VimEnter * if !argc() | Startify | NvimTreeOpen | wincmd w | endif
-- vim.api.nvim_command('autocmd VimEnter * if !argc()| NvimTreeToggle|wincmd l|endif')

-- image.vim autostart when open an image
-- au BufRead *.png,*.jpg,*.jpeg :call DisplayImage()

--vim.api.nvim_command([[
--  aug i3config_ft_detection
--  au!
--  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
--  aug END
--]])

-- tree
vim.api.nvim_command('autocmd BufEnter * if tabpagenr(\'$\') == 1 && winnr(\'$\') == 1 && exists(\'b:NvimTree\') && b:NvimTree.isTabTree() | quit | endif')
