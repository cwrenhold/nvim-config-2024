return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>nd",
      function ()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Dismiss notifications",
    },
    {
      "<leader>nh",
      function ()
        require("notify").history()
      end,
      desc = "Show notification history",
    }
  },
  config = function()
    vim.notify = require("notify")
  end,
}
