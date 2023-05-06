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
