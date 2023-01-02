-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]

    -- [[ Theme ]]

  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump

                  -- colorscheme
  -- [[ Dev ]]
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'junegunn/gv.vim' }                          -- commit history
                   -- auto close brackets, etc.
  -- Rusty things
  use {'simrat39/rust-tools.nvim'}

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                                                        
    use 'hrsh7th/vim-vsnip'                             
    
    -- other plugins...
end
-- config = {
    -- package_root = vim.fn.stdpath('config') .. '/site/pack'
-- }
)
