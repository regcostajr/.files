vim.g.mapleader = " "
-- move selected lines into text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor at the beginning of the line while crop last character
vim.keymap.set("n", "J", "mzJ`z")

-- center the line after c-d/u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center the linex after search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- past without copy
vim.keymap.set("x", "<leader>P", [["_dP]])

-- replace cursor text by
vim.keymap.set("n", "<C-s>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- select word
vim.keymap.set("n", "<C-l>", "<esc>viw")

-- select all
vim.keymap.set("n", "<C-a>", "<esc>ggVG<CR>")

-- buffers
vim.keymap.set("n", "<Tab>", "<cmd>:bnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>:bprev<CR>")

--telescope
vim.keymap.set('n', '<C-p>', "<cmd>Telescope find_files<CR>")
vim.keymap.set('n', '<C-p>f', "<cmd>Telescope git_files<CR>")
vim.keymap.set('n', '<C-b>', "<cmd>Telescope buffers<CR>")

--gitsigss
vim.keymap.set('n', '<C-h>', '<cmd>Gitsigns preview_hunk<CR>')
vim.keymap.set('n', '<C-h>r', '<cmd>Gitsigns reset_hunk<CR>')

--easymotion
vim.keymap.set('n', 's', '<Plug>(easymotion-s)')
