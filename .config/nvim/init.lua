--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
-- vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS
-- require('vars')      -- Variables
-- require('opts')      -- Options
-- require('keys')      -- Keymaps
-- require('plug')      -- Plugins
require("plugins-setup")
require("core.options")
require("core.keymaps")
require("core.colorscheme")
require("plugins.comment")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.nvim-cmp")
require("plugins.autopairs")
require("plugins.treesitter")
require("plugins.gitsigns")

require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")
require("plugins.lsp.null-ls")

-- Plugins
-- require('nvim-tree').setup{}
-- require('nvim-autopairs').setup()
-- require('mason').setup()

-- setup rust tools and LSP
local rt = require("rust-tools")

rt.setup()
--{
    -- server = {
        -- on_attach = function(_, bufnr)
            -- hover atctions
            -- vim.keymap.set("n","<C-space>", rt.hover_actions.hoveractions, {buffer = bufnr})
            -- code action groups
            -- vim.keymap.set("n","<leader>a", rt.code_action_group.code_action_group, {buffer = bufnr})
        -- end,
    -- },
-- })
