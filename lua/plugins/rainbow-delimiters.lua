return {
  'https://gitlab.com/HiPhish/rainbow-delimiters.nvim',
  config = function()
    vim.g.rainbow_delimiters = {
      highlight = {
        'RainbowDelimiterViolet',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterRed',
        'RainbowDelimiterCyan',
      }
    }
  end,
}
