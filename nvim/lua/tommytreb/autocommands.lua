local bufReadGroup = vim.api.nvim_create_augroup('BufferReadGroup', { clear = true })
vim.api.nvim_create_autocmd('BufEnter', {
    command = 'BufferOrderByDirectory',
    group = bufReadGroup
})
