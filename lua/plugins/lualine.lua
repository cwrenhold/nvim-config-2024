return {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    opts = {
        options = {
            icons_enabled = false,
            theme = 'onedark',
            component_separators = '|',
            section_separators = '',
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {
                'hostname',
                'branch',
                'diff',
                'diagnostics'
            },
            lualine_c = {
                {
                    'filename',
                    path = 1
                },
            },
            lualine_x = {'encoding', 'fileformat', 'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'},
        },
    },
}
