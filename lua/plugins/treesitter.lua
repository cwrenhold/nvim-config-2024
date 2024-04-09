return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'nvim-treesitter/nvim-treesitter-context',
  },
  build = ':TSUpdate',
  config = function ()
    require('nvim-treesitter.configs').setup {
      -- Add languages to be installed here that you want installed for treesitter
      ensure_installed = {
        'c',
        'cpp',
        'go',
        'jsonc',
        'lua',
        'python',
        'rust',
        'tsx',
        'javascript',
        'typescript',
        'vimdoc',
        'vim',
        'bash',
        'markdown'
      },

      -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
      auto_install = false,
      sync_install = false,
      ignore_install = {},
      modules = {},
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<c-space>',
          node_incremental = '<c-space>',
          scope_incremental = '<c-s>',
          node_decremental = '<M-space>',
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ['aa'] = '@parameter.outer',
            ['ia'] = '@parameter.inner',
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            [']m'] = '@function.outer',
            [']]'] = '@class.outer',
          },
          goto_next_end = {
            [']M'] = '@function.outer',
            [']['] = '@class.outer',
          },
          goto_previous_start = {
            ['[m'] = '@function.outer',
            ['[['] = '@class.outer',
          },
          goto_previous_end = {
            ['[M'] = '@function.outer',
            ['[]'] = '@class.outer',
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ['<leader>a'] = '@parameter.inner',
          },
          swap_previous = {
            ['<leader>A'] = '@parameter.inner',
          },
        },
      },
      rainbow = {
        enable = true
      }
    }

    require('treesitter-context').setup{
      max_lines = 10,
      multiline_threshold = 10,
    }

    local go_to_parent_node = function(exclude_column)
      local get_node_at_cursor = function()
        local r, c = unpack(vim.api.nvim_win_get_cursor(0))
        vim.treesitter.get_parser(0):parse({ r - 1, c, r - 1, c })
        return vim.treesitter.get_node()
      end

      local node = get_node_at_cursor()

      if node == nil then
        return
      end

      local node_start_row, node_start_col, _, _ = node:range()
      local parent = node
      local parent_start_row, parent_start_col = node_start_row, node_start_col

      -- Just to prevent infinite loops...
      local max_attempts = 10
      local current_attempt = 0

      while (current_attempt < max_attempts
        and parent_start_row == node_start_row
        and(exclude_column or parent_start_col == node_start_col)) do
        ---@diagnostic disable-next-line: cast-local-type
        parent = parent:parent()

        if parent == nil then
          return
        end

        parent_start_row, parent_start_col, _, _ = parent:range()
        current_attempt = current_attempt + 1
      end

      if parent == nil then
        return
      end

      vim.api.nvim_win_set_cursor(0, { parent_start_row + 1, parent_start_col })
    end

    vim.keymap.set('n', '<leader>(', function() go_to_parent_node(false) end, { silent = true, desc = "Go to parent node" })
    vim.keymap.set('n', '<leader>{', function() go_to_parent_node(true) end, { silent = true, desc = "Go to parent node (excluding line)" })
  end
}
