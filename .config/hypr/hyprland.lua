local home = os.getenv("HOME")

package.path = package.path .. ";" .. os.getenv("HOME") .. "/.config/hypr/lua/?.lua"

require("autostart")
require("rules")
require("input")
require("appearance")
require("keybinds")
