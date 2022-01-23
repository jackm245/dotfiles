--local function register_mappings(mappings, default_options)
  --for mode, mode_mappings in pairs(mappings) do
    --for _, mapping in pairs(mode_mappings) do
      --local options = #mapping == 3 and table.remove(mapping) or default_options
      --local prefix, cmd = unpack(mapping)
      --pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
    --end
  --end
--end

vim.cmd('let mapleader=\".\"')
vim.cmd('inoremap <leader>ps :lua require(\'telescope.builtin\').grep_string({ search = vim.fn.input(\"Greo for > \")})<CR>')
vim.cmd('map <leader>h :wincmd h<CR>')
vim.cmd('map <leader>j :wincmd j<CR>')
vim.cmd('map <leader>k :wincmd k<CR>')
vim.cmd('map <leader>l :wincmd l<CR>')

local mappings = {
  i = { -- Insert mode
    -- I hate escape
    { "jk", "<ESC>" },
    { "kj", "<ESC>" },
    { "jj", "<ESC>" },

    -- Move current line / block with Alt-j/k ala vscode.
    { "<A-j>", "<Esc>:m .+1<CR>==gi" },
    { "<A-k>", "<Esc>:m .-2<CR>==gi" },

    -- Terminal window navigation
    { "<C-h>", "<C-\\><C-N><C-w>h" },
    { "<C-j>", "<C-\\><C-N><C-w>j" },
    { "<C-k>", "<C-\\><C-N><C-w>k" },
    { "<C-l>", "<C-\\><C-N><C-w>l" },
  }
}
-- Dashboard
vim.cmd('map <leader>s :Dashboard<CR>')

-- NerdTREE
vim.cmd('map <leader>n :NvimTreeToggle<CR>')

-- Mundo
-- vim.cmd('nnoremap <leader>m :MundoToggle<CR>')

-- ZenMode
vim.cmd('nnoremap <leader>z :ZenMode<CR>')

-- Spell Check
vim.cmd('map <leader>o :setlocal spell! spelllang=en<CR>')

-- NeoTex
vim.cmd('map <leader>ll :NeoTexOn<CR>')


-- Bufferline
-- Move to previous/next
vim.cmd('nnoremap <silent>    <A-,> :BufferLineCyclePrev<CR>')
vim.cmd('nnoremap <silent>    <A-.> :BufferLineCycleNext<CR>')
-- Re-order to previous/next
vim.cmd('nnoremap <silent>    <A-<> :BufferLineMovePrevious<CR>')
vim.cmd('nnoremap <silent>    <A->> :BufferLineMoveNext<CR>')
-- Close buffer
vim.cmd('nnoremap <silent>    <A-c> :BufferLineClose<CR>')
-- Pick Buffer
vim.cmd('nnoremap <silent> gb :BufferLinePick<CR>')

-- ToggleTerm
-- <leader>t
-- Telescope

vim.cmd('nnoremap <leader>ff <cmd>lua require(\'telescope.builtin\').find_files()<cr>')
vim.cmd('nnoremap <leader>fg <cmd>lua require(\'telescope.builtin\').live_grep()<cr>')
vim.cmd('nnoremap <leader>fb <cmd>lua require(\'telescope.builtin\').buffers()<cr>')
vim.cmd('nnoremap <leader>fh <cmd>lua require(\'telescope.builtin\').help_tags()<cr>')

-- allow j and k to go through wrapped lines
vim.cmd('noremap j gj')
vim.cmd('noremap k gk')


-- Essentially aliases for commonly used commands+lazy shift finger:
vim.cmd('command! -bar -nargs=* -complete=file -range=% -bang W         <line1>,<line2>write<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=file -range=% -bang Write     <line1>,<line2>write<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=file -range=% -bang Wq        <line1>,<line2>wq<bang> <args>')
vim.cmd('command! -bar                                  -bang Wqall     wqa<bang>')
vim.cmd('command! -bar -nargs=* -complete=file -range=% -bang We        <line1>,<line2>w<bang> | e <args>')
vim.cmd('command! -bar -nargs=* -complete=file -count   -bang Wnext     <count>wnext<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=file -count   -bang Wprevious <count>wprevious<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=file          -bang E         edit<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=file          -bang Edit      edit<bang> <args>')
vim.cmd('command! -bar                                  -bang Q         quit<bang>')
vim.cmd('command! -bar                                  -bang Quit      quit<bang>')
vim.cmd('command! -bar                                  -bang Qall      qall<bang>')
vim.cmd('command! -bar -nargs=? -complete=option              Set       set <args>')
vim.cmd('command! -bar -nargs=? -complete=help                Help      help <args>')
vim.cmd('command! -bar -nargs=* -complete=file          -bang Make      make<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=buffer        -bang Bdel      bdel<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=buffer        -bang Bwipe     bwipe<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=file          -bang Mksession mksession<bang> <args>')
vim.cmd('command! -bar -nargs=* -complete=dir           -bang Cd        cd<bang> <args>')
vim.cmd('command! -bar                                        Messages  messages')
vim.cmd('command! -bar -nargs=+ -complete=file          -bang Source    source<bang> <args>')
