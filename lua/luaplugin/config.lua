local M = {}

M.options = {
  debug = false,
  name = "roland"
}

local defaults = vim.deepcopy(M.options)

---@private
function M.defaults(options)
  M.options = vim.deepcopy(
    vim.tbl_deep_extend("keep", options or {}, defaults or {})
  )
  return M.options
end

function M.setup(options)
  M.options = M.defaults(options or {})
  return M.options
end

return M
