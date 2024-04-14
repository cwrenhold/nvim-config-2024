local M = {}

-- Returns the major version of the node executable
function M.node_version()
  local node_exists = vim.fn.executable 'node' == 1

  -- If node doesn't exist, return 0 immediately
  if not node_exists then
    return 0
  end

  -- If node does exist, use node -v to get the version
  local node_version = vim.fn.system('node -v')
  local major_version = tonumber(node_version:match('v(%d+)'))

  return major_version
end

return M
