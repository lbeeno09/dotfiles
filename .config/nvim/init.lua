require("base")
require("plugins")
require("maps")

if vim.fn.has("macunix") then
  require("macos")
end
if vim.fn.has("win32") then
  require("windows")
end
