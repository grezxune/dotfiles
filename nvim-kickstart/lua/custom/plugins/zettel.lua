print 'In zettel file'

vim.keymap.set('n', '<leader>cz', function()
  local filename = os.date '%m%d%Y%H%M%S'
  local filename_with_ext = tostring(filename) .. '.md'

  local file = io.open(filename_with_ext, 'w')

  if file then
    local file_contents = [[
---
id: ]] .. filename .. [[

createdAt: ]] .. tostring(os.date '%x') .. [[

---

# Body
> The piece of knowledge you wish to capture

# References
> Where did this thought come from? If from yourself, leave blank.]]

    file:write(file_contents)
    file:close()

    vim.cmd('e' .. filename_with_ext)
  end
end, { desc = 'Create Zettel' })
