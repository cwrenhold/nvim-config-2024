# Introduction

This is my new nvim configuration for 2024, this is based off of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) which is a fantastic starting point for a neovim configuration, and I highly recommend it.

I have attempted to keep this configuration relatively standard, as in, most of the core commands from nvim (or vim for that matter) should be unaffected. My changes should be additions over that rather than changes to what is already in place.

## Warnings

While you're more than welcome to give this configuration a go, this is purely designed for my own use, so it's not as polished as it should be for public use, and may not as logical as it could be!

# Requirements

- [Neovim](https://www.neovim.io) (obviously) - I'm using nightly, however, stable (0.9+) should also work just fine as far as I'm aware as it hasn't been long since I've used stable.
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation) - this is required for telescope to work nicely.
- [Node.js](https://nodejs.org/en/download/) - this is required for GitHub Copilot.

# Installation

The installation is relatively straight forward, the steps are as follows:

0. Backup your existing nvim configuration.
1. Clone the repository to `~/.config/nvim` (or wherever your nvim configuration is set to).
2. Start up nvim.
3. Let Lazy install everything for you automatically.
4. Restart nvim to ensure everything is clean and ready to use.

# Configuration setup

The configuration has been split into three sections:

- [init.lua](./init.lua) - This is the starting point for the project which does the following:
    - Sets the leader (both global and local)
    - Starts loading in configuration
- [lua/core](./lua/core) - This is where all setting are stored which are not related to external plugins and have no dependencies, and also includes the bootstrapper for [lazy.nvim](https://github.com/folke/lazy.nvim). Configuration settings are broken down into *logical* groupings.
- [lua/plugins](./lua/plugins) - This is where all plugins are configured. These are mostly set up with a single file per plugin, but this is not always the case when it comes to dependencies and the like. In general, all configuration is in the respective plugin's file, including any keymaps which are specific to that plugin.

# Included plugins

- cmp-nvim-lsp
- cmp_luasnip
- Comment.nvim
- copilot-cmp
- copilot.lua
- fidget.nvim
- friendly-snippets
- gitsigns.nvim
- indent-blankline.nvim
- lazy.nvim
- lualine.nvim
- LuaSnip
- mason-lspconfig.nvim
- mason.nvim
- neodev.nvim
- night-owl.vim
- nvim-cmp
- nvim-dev-container
- nvim-lspconfig
- nvim-remote-containers
- nvim-tree.lua
- nvim-treesitter
- nvim-treesitter-context
- nvim-treesitter-textobjects
- nvim-web-devicons
- plenary.nvim
- rainbow-delimiters.nvim
- telescope-fzf-native.nvim
- telescope.nvim
- vim-fugitive
- vim-rhubarb
- vim-sleuth
- which-key.nvim

