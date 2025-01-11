vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*",
    callback = function()
        -- Remove trailing whitespaces
        vim.cmd([[%s/\s\+$//e]])
        -- Remove extra blank lines at the end of the file
        vim.cmd([[%s/\n\+\%$//e]])
    end,
})

vim.api.nvim_create_user_command(
    'Chat',
    function(opts)
        vim.cmd('CodeCompanionChat ' .. opts.args .. ' Toggle')
    end,
    { nargs = '*' }
)

vim.api.nvim_create_autocmd('TermOpen', {
    pattern = '*',
    callback = function()
        vim.api.nvim_buf_set_keymap(0, 't', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })
    end
})
