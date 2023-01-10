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
    use({
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    })
    use('ThePrimeagen/harpoon')
    use('ThePrimeagen/git-worktree.nvim')
    --use({
        --'neoclide/coc.nvim',
        --branch = 'release'
    --})
    use('jparise/vim-graphql')
    use('victorhqc/tree-sitter-prisma')

    use('neovim/nvim-lspconfig')
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    --use("williamboman/mason.nvim")
    --use("williamboman/mason-lspconfig.nvim")
    --use("mfussenegger/nvim-dap")
    --use("jose-elias-alvarez/null-ls.nvim")
    use('tjdevries/cyclist.vim')
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup({
                current_line_blame = true,
                current_line_blame_opts = {
                    virt_text = true,
                    virt_text_pos = 'eol',
                    delay = 50,
                    ignore_whitespace = false,
                }
            })
        end
    }

    -- Color Schemes
    use('folke/tokyonight.nvim')
    use('EdenEast/nightfox.nvim')
    use('xiyaowong/nvim-transparent')
    use('nvim-tree/nvim-web-devicons')
    use('feline-nvim/feline.nvim')
    use({ 'catppuccin/nvim', as = 'catppuccin' })

    use({ 'romgrk/barbar.nvim' })
end)
