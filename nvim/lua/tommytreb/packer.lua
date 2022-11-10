-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- All the things
    use('nvim-telescope/telescope.nvim')
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope-fzf-native.nvim')
    use('nvim-treesitter/nvim-treesitter')
    use('ThePrimeagen/harpoon')
    use('ThePrimeagen/git-worktree.nvim')
    use({
        'neoclide/coc.nvim',
        branch = 'release'
    })
    use('jparise/vim-graphql')
    use('neovim/nvim-lspconfig')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/nvim-cmp')
    use('onsails/lspkind-nvim')
    use('nvim-lua/lsp_extensions.nvim')
    use('glepnir/lspsaga.nvim')

    -- Color Schemes
    use('folke/tokyonight.nvim')
    use('EdenEast/nightfox.nvim')
end) 
