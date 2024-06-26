return {
  "zbirenbaum/copilot.lua",
  dependencies = {
    "hrsh7th/nvim-cmp"
  },
  cond = function()
    local node_utils = require("utilities.node")
    return node_utils.node_version() >= 18
    -- return false
  end,
  cmd = "Copilot",
  -- build = ":Copilot auth",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = true,
        auto_refresh = true,
      },
      suggestion = {
        enabled = true,
        -- use the built-in keymapping for "accept" (<M-l>)
        auto_trigger = true,
        accept = false, -- disable built-in keymapping
        keymap = {
          accept = "<M-Right>",
          accept_word = "<S-Right>",
          accept_line = "<C-Right>",
        },
      },
      filetypes = {
        markdown = true,
      }
    })

    -- hide copilot suggestions when cmp menu is open
    -- to prevent odd behavior/garbled up suggestions
    local cmp_status_ok, cmp = pcall(require, "cmp")
    if cmp_status_ok then
      cmp.event:on("menu_opened", function()
        vim.b.copilot_suggestion_hidden = true
      end)

      cmp.event:on("menu_closed", function()
        vim.b.copilot_suggestion_hidden = false
      end)
    end
  end,
}
