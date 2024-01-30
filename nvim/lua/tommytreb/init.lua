require("tommytreb.set")
require("tommytreb.remap")
require("tommytreb.test")

require("mason").setup()

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local ThePrimeagenGroup = augroup('ThePrimeagen', {})
local yank_group = augroup('HighlightYank', {})

function R(name)
  require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
  group = yank_group,
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 150,
    })
  end,
})

autocmd({ "BufWritePre" }, {
  group = ThePrimeagenGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
--vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

require('lualine').setup({
  options = {
    theme = 'gruvbox',
  }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    vim.lsp.buf.format()
  end,
})
