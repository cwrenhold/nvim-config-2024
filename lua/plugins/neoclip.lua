return {
  "AckslD/nvim-neoclip.lua",
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
  },
  config = function()
    require("neoclip").setup({})

    require("telescope").load_extension("neoclip")
    vim.keymap.set('n', '<leader>sn', '<cmd>Telescope neoclip<cr>', { noremap = true, silent = true, desc = "[S]earch [N]eoclip" })
  end,
}
