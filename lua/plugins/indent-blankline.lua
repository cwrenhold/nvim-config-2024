return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    local default_char = '┊'
    -- local scope_char = '│'

    require("ibl").setup {
      -- scope = {
      --   char = scope_char,
      -- },
      indent = {
        char = default_char,
        tab_char = default_char,
      }
    }
  end
}
