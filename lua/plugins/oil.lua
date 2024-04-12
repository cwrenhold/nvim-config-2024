return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = false,
    view_options = {
      show_hidden = true,
    },
    preview = {
      width = { 60, 0.5 },
      height = { 30, 0.8 },
    }
  },
  lazy = true,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>-", "<cmd>Oil<CR>", desc = "Open parent directory" },
  },
  cmd = {
    "Oil",
  },
  config = {
    function()
      require("oil").setup()
    end
  }
}

