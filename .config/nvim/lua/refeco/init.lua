require("refeco.packer")
require("refeco.remap")
require("refeco.generic-set")

function Run()
    if vim.bo.filetype == 'perl' then
        if vim.fn.expand("%:e") == 't' then
            vim.cmd("!prove -v %")
        else
            vim.cmd("!perl %")
        end
    end
end

vim.keymap.set("n", "<F5>", Run)

