-- [[ vars.lua ]]

local g = vim.g
g.to_co = 256
g.background = "dark"

-- update packer path
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
