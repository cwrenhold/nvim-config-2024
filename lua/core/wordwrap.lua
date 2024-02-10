-- Enable break indent
vim.o.breakindent = true

-- Linebreaking
vim.o.showbreak = '↪ '
vim.o.linebreak = true

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
