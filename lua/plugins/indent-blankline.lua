return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("ibl").setup {
      scope = {
        highlight = highlight,
        char = "│",
      },
      indent = {
        char = '┊'
      },
    }
  end
}
