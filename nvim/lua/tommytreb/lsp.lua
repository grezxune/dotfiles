local capabilities = require('tommytreb.nvim-cmp').capabilities

require('lspconfig').gopls.setup({
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
        vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>dR', '<cmd>Telescope lsp_references<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
    end,
})

require('lspconfig').sumneko_lua.setup({
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
        vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>dR', '<cmd>Telescope lsp_references<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
    end,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" },
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
})

require('lspconfig').tsserver.setup({
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
        vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>dR', '<cmd>Telescope lsp_references<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
    end,
})

require('lspconfig').rust_analyzer.setup({
    on_attach = function()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
        vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>dR', '<cmd>Telescope lsp_references<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
    end,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})
