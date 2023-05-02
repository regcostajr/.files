local lsp = require('lsp-zero').preset("recommended")
local cmp = require('cmp')

lsp.ensure_installed({
    'perlnavigator',
    'lua_ls'
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })

    vim.keymap.set({ 'n', 'x' }, '<leader>f', function()
        vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
    end)
end)


lsp.setup()
cmp.setup({
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }
})
