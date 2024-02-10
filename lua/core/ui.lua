-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Highlight the current line
vim.o.cursorline = true

-- Keep signcolumn on by default
vim.o.signcolumn = "yes"
vim.wo.signcolumn = 'yes'

-- Increase the time to wait for a key code sequence to complete
vim.o.timeoutlen = 300

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Scroll off settings
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5

-- Colour columns at 80 and 160 characters
vim.o.colorcolumn = "80,160"
