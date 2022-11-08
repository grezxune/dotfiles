local nnoremap = require("tommytreb.keymap").nnoremap

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
