return {
  "zbirenbaum/copilot-cmp",
  dependencies = {
    "zbirenbaum/copilot.lua",
  },
  cond = function ()
    local node_utils = require("utilities.node")
    return node_utils.node_version() >= 18
  end,
  config = function ()
    require("copilot_cmp").setup()
  end
}
