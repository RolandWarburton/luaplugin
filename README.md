# Lua Plugin

Hello world plugin.

## Installation

For lazy (developing).

```lua
require("lazy").setup({
  { dir = "/home/roland/projects/luaplugin" }
})
```

## Usage

In your neovim lua configuration.

```lua
local luaplugin = require('luaplugin')

luaplugin.setup({
  debug = true,
  name = "roland"
})

-- map helper
Map = function(mode, l, r, opts)
  opts = opts or {}
  opts.buffer = bufnr
  vim.keymap.set(mode, l, r, opts)
end

-- example binding
Map('n', '<space>t', luaplugin.greeting())
```
