local function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*/)")
end

local __file_path__ = script_path()
local deps_lua_modules = {}
table.insert(deps_lua_modules, __file_path__ .. "?.lua")
table.insert(deps_lua_modules, __file_path__ .. "src/?.lua")
table.insert(deps_lua_modules, __file_path__ .. "src/?/init.lua")
table.insert(deps_lua_modules, __file_path__ .. "deps/argparse-master/src/?.lua")
package.path = string.format("%s;%s", table.concat(deps_lua_modules, ";"),
                             package.path)
print(package.path)

local deps_c_modules = {}
table.insert(deps_c_modules,
             __file_path__ .. "deps/luafilesystem-master/src/?.dll")
package.cpath = string.format("%s;%s", table.concat(deps_c_modules, ";"),
                              package.cpath)
print(package.cpath)

local mylib = package.loadlib("lfs", "luaopen_lfs")
print(mylib)

require("bin.luacheck")
