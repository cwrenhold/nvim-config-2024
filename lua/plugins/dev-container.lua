return {
  "https://codeberg.org/esensar/nvim-dev-container",
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    -- Run with the default configuration
    require("devcontainer").setup {
      attach_mounts = {
        always = true,
        neovim_config = {
          enabled = true,
          options = {},
        },
        neovim_data = {
          enabled = false,
          options = {},
        },
        neovim_state = {
          enabled = false,
          options = {},
        },
      },
    }
  end
}
