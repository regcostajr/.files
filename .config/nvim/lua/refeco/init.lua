require("refeco.lazy")
require("refeco.remap")
require("refeco.set")

function Run()
    if vim.bo.filetype == 'perl' then
        if vim.fn.expand("%:e") == 't' then
            vim.cmd("term prove -v %")
        else
            vim.cmd("term perl %")
        end
    end
end

function Debug()
    if vim.bo.filetype == 'perl' then
        vim.cmd("term perl -d %")
    end
end

vim.keymap.set("n", "<F5>", Run)
vim.keymap.set("n", "<F6>", Debug)

vim.api.nvim_create_user_command(
    'Chat',
    function(opts)
        vim.cmd('CodeCompanionChat ' .. opts.args)
    end,
    { nargs = '*' }
)
