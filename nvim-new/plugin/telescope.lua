require('telescope').setup({
  defaults = {
    layout_strategy = 'vertical',
    layout_config = {
      prompt_position = 'bottom'
    },
    preview = true,
  }
})

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
