return {
  "nvim-tree/nvim-tree.lua",
  -- Optional dependency
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup({
      hijack_netrw = false
    })

    vim.keymap.set('n', '<leader>ex', ':NvimTreeFindFileToggle<CR>')
  end,
}
