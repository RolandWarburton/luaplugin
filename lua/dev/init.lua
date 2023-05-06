-- https://github.com/s1n7ax/neovim-lua-plugin-boilerplate/blob/main/doc/presentation.md#few-tips-when-developing-plugins

-- force lua to import the modules again
package.loaded['dev'] = nil
package.loaded['nvimplugin'] = nil
package.loaded['nvimplugin.module'] = nil

-- [ , + r ] keymap to reload the lua file
-- NOTE: someone need to source this file to apply these configurations. So, the
-- very first time you open the project, you have to source this file using
-- ":luafile dev/init.lua". From that point onward, you can hit the keybind to
-- reload
vim.api.nvim_set_keymap('n', '<Leader>r', '<cmd>luafile dev/init.lua<cr>', {})
