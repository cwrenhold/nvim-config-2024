return {
  'haishanh/night-owl.vim',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'night-owl'

    local removeItalics = true

    if removeItalics then
        local tags = {
            'Comment',
            'jsComment',
            'jsImport',
            'jsModuleAs',
            'jsExtendsKeyword',
            'javaScriptLineComment',
            'cssPsuedoClassId',
            'cssIdentifier',
            'shComment',
            'NERDTreeHelp'
        }

        for _, tag in ipairs(tags) do
            vim.cmd('hi ' .. tag .. ' cterm=NONE gui=NONE')
        end
    end
  end,
}
