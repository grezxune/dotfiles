return {
  'grezxune/zettel.nvim',
  -- dir = '~/Documents/code/zettel.nvim/',
  config = function()
    local Zettel = require 'zettel'

    local myZettel = Zettel.setup {
      template_file = '/Users/tommy/Documents/obsidian/zettelkasten/template.md',
      destination_location = '/Users/tommy/Documents/obsidian/zettelkasten',
      note_file_format = '.md',
    }

    vim.keymap.set('n', '<leader>cz', function()
      myZettel:new()
    end, { desc = 'Create Zettel' })
  end,
}
