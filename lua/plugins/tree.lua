return {
  "nvim-tree/nvim-tree.lua",
  -- Optional dependency
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = true,
  keys = {
    { "<leader>ex", "<cmd>NvimTreeToggle<CR>", desc = "Toggle [Ex]plorer" },
  },
  cmd = {
    "NvimTreeFindFile",
    "NvimTreeFindFileToggle",
    "NvimTreeOpen",
    "NvimTreeRefresh",
    "NvimTreeToggle",
  },
  config = function()
    require('nvim-tree').setup({
      hijack_netrw = false
    })
  end,
}
