if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

local os = vim.loop.os_uname().sysname

if os == "Darwin" then
  require('macos')
elseif os == "Linux" then
  require('linux')
elseif os == "Windows_NT" then
  require('luks.windows')
else
  error("Unknown OS")
end

require("config.lazy")