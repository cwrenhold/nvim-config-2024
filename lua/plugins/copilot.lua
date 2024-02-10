return {
  "github/copilot.vim",
  config = function()
    local function SuggestOneCharacter()
      -- Load in a suggestion for insertion
      vim.fn['copilot#Accept']("")
      local bar = vim.fn['copilot#TextQueuedForInsertion']()
      return bar:sub(1, 1)
    end

    local function SuggestOneWord()
      -- Load in a suggestion for insertion
      vim.fn['copilot#Accept']("")
      local bar = vim.fn['copilot#TextQueuedForInsertion']()
      return vim.fn.split(bar,  [[[ .]\zs]])[1]
    end

    vim.keymap.set("i", "<C-Right>", SuggestOneCharacter, { expr = true, remap = false })
    vim.keymap.set("i", "<S-Right>", SuggestOneWord, { expr = true, remap = false })
    vim.keymap.set("i", "<M-Right>", 'copilot#Accept("")', { silent = true, expr = true })
    vim.keymap.set("n", "<leader>vco", "<cmd>Copilot<CR>", { silent = true })
  end,
}
