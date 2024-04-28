local Luaplugin = {}
local C = require("luaplugin.config")
local greeting = require('luaplugin.greeting')

Luaplugin.setup = C.setup
Luaplugin.greeting = greeting.greeting

return Luaplugin
