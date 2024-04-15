-- Highlight search results
vim.o.hlsearch = true
vim.o.incsearch = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Display search and replace matches
vim.o.inccommand = 'split'

-- Set highlight on search, <C-L> clears the highlight by forcing a redraw, or you can use <leader><CR>
vim.keymap.set('n', '<leader><CR>', '<cmd>nohlsearch<CR>', { silent = true, noremap = true, desc = 'Clear search highlight' })
