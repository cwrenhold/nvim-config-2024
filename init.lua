-- Set the leader and local leader first so that other plugins can use them
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Load all lua files from the specified directory
local function load_config_files(directory)
    local config_files = vim.api.nvim_get_runtime_file(directory .. "/*.lua", true)

    -- Sort the files by name
    table.sort(config_files)
    for _, file in ipairs(config_files) do
        dofile(file)
    end
end

load_config_files("lua/core")
