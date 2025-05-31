vim.cmd("highlight MatchParen cterm=bold ctermbg=red guibg=yellow")
-- 设置光标的颜色默认为拉姆的发(fà)色
vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#ffb6c1")

-- hop
-- 设置单字符高亮的颜色为 notion 中的暗色模式下的砖红色
vim.api.nvim_command("highlight HopNextKey guifg=#FF7369 guibg=none gui=none ctermfg=none cterm=bold")

-- 解决 python 在定义函数参数时按下 : 会自动缩进的问题
vim.api.nvim_command('set indentkeys-=<:>')
-- 启用 termguicolors
vim.o.termguicolors = true

vim.o.wrap = true
vim.o.relativenumber = true
-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- vim 拷贝同时到剪切板
vim.o.clipboard = "unnamed"
-- 高亮所在行和列
vim.wo.cursorline = true
--vim.api.nvim_set_hl(0, "CursorLine", { bg = "#333842" })
--vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#333842" })
--vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#333842" })
--vim.api.nvim_set_hl(0, "Visual", { bg = "#4A4A4A", fg = "#D3D3D3" })
vim.wo.cursorcolumn = true
--除非包含大写 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
-- 缩进2个空格等于一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 不可见字符的显示，这里只把空格显示为一个点
--vim.o.list = false
--vim.o.listchars = "space:·"

vim.o.tags = "./tags;/"

vim.g.python3_host_prog = "/opt/homebrew/bin/python3.13"

