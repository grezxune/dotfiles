local nnoremap = require("tommytreb.keymap").nnoremap
local inoremap = require("tommytreb.keymap").inoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Telescope
nnoremap("<leader>pf", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")

-- Harpoon
local silent = { silent = true }

nnoremap("<leader>a", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)

nnoremap("<C-h>", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<C-j>", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<C-k>", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<C-l>", function() require("harpoon.ui").nav_file(4) end, silent)

nnoremap('gt', '<cmd>BufferNext<cr>', silent)
nnoremap('<leader>gt', '<cmd>BufferPrevious<cr>', silent)
nnoremap('<leader>ob', '<cmd>BufferOrderByDirectory<cr>', silent)
nnoremap('<leader>Q', '<cmd>BufferClose<cr>', silent)
nnoremap('<leader><leader>Q', '<cmd>BufferCloseAllButCurrent<cr>', silent)

nnoremap('<leader>f', vim.lsp.buf.format)
