local config = require('luaplugin.config')

local M = {}

function M.greeting()
  return function()
    print('hello ' .. (config.options.name or 'world'))
  end
end

return M
