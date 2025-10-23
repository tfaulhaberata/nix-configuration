require "nvchad.options"

-- list options

vim.o.list = true
vim.o.listchars = 'tab:» ,lead:•,trail:•'
vim.api.nvim_set_hl(0, 'TrailingWhitespace', { bg='LightRed' })
vim.api.nvim_create_autocmd('BufEnter', {
        pattern = '*',
        command = [[
                syntax clear TrailingWhitespace |
                syntax match TrailingWhitespace "\_s\+$"
        ]]}
)
