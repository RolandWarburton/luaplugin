# Plugin Boilerplate

Plugin code is written in `lua/packageName`. In this case the name of the package is **nvimplugin**.

```lua
-- ./lua/packageName/init

local greet = require('packagename.module')

return {
  greet = greet
}
```

```lua
-- ./lua/packagename/module

local function greet()
  print('hello world')
end

return greet
```

You can then  call this module name exposed via `init.lua` using

```vim
:lua require('greetings').greet()
```

## Installing

Like all plugins you can install this via packer, as long as it has been put onto git.

For packer.

```lua
  use {
    'rolandwarburton/nvimplugin',
  }
```

## Usage

You have access to everything exposed in `./lua/packagename/init`.

```lua
require('nvimplugin').greet()
```

## Development

From this directory, run `:luafile dev/init.lua` at least once. This will register `<Leader>r`
to reload the plugin.
