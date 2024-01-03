local nnoremap = require("tommytreb.keymap").nnoremap
local inoremap = require("tommytreb.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

local silent = { silent = true }

nnoremap('gt', '<cmd>BufferNext<cr>', silent)
nnoremap('<leader>gt', '<cmd>BufferPrevious<cr>', silent)
nnoremap('<leader>ob', '<cmd>BufferOrderByDirectory<cr>', silent)
nnoremap('<leader>Q', '<cmd>BufferClose<cr>', silent)
nnoremap('<leader><leader>Q', '<cmd>BufferCloseAllButCurrent<cr>', silent)

nnoremap('<leader>f', vim.lsp.buf.format)
nnoremap('<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<cr>')
