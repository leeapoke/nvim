local auto_dark_mode = require('auto-dark-mode')
auto_dark_mode.setup({
    --update_interval = 1000,
    set_dark_mode = function()
        vim.o.background = 'dark'
        vim.cmd('colorscheme onedark_dark')
        vim.cmd('Theme dark')
        vim.cmd("highlight MatchParen cterm=bold ctermbg=red guibg=yellow")
        vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#ffb6c1")
    end,
    set_light_mode = function()
        vim.o.background = 'light'
        vim.cmd('colorscheme onelight')
        vim.cmd('Theme light')
        vim.cmd("highlight MatchParen cterm=bold ctermbg=red guibg=yellow")
        vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#ffb6c1")
    end,
})
require('auto-dark-mode').init()
