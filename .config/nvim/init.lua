require("base")
require("plugins")
require("maps")

if not vim.fn.has("macunix") then
  require("windows")
end
if not vim.fn.has("win32") then
  require("macos")
end

