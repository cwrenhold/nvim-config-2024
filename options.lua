vim.o.hlsearch = true
vim.o.incsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Linebreaking
vim.o.showbreak = '↪ '
vim.o.linebreak = true

-- indentation
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Visible white space
vim.opt.listchars = {
    eol = '⤶',
    space = '·',
    trail = '␣',
    nbsp = '␣',
    extends = '❯',
    precedes = '❮',
    tab = ' ▸ ',
}
vim.o.list = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Scroll off settings
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
vim.o.signcolumn = "yes"

-- Colour columns at 80 and 160 characters
vim.o.colorcolumn = "80,160"

-- Highlight the current line
vim.o.cursorline = true

-- Set wildmenu to use fuzzy as well
vim.o.wildoptions = 'fuzzy,pum,tagfile'

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
