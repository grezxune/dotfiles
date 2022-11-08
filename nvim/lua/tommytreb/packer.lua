-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-fzf-native.nvim'},
            {'nvim-treesitter/nvim-treesitter'}
        }
    }
    use 'ThePrimeagen/harpoon'
    use 'ThePrimeagen/git-worktree.nvim'
end) 