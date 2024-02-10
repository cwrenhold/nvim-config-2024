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
