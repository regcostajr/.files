require('trim').setup({
    patterns = {
        [[%s/\(\n\n\)\n\+/\1/]], -- replace multiple blank lines with a single line
    },

    trim_on_write = false,
})
