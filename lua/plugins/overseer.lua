return {
  'stevearc/overseer.nvim',
  opts = {},
  keys = {
    { "<leader>tr", "<cmd>OverseerRun<CR>", desc = "Open Overseer tasks" },
    { "<leader>tt", "<cmd>OverseerToggle<CR>", desc = "Toggle Overseer tasks" },
  },
  config = function()
    require('overseer').setup()
  end
}

