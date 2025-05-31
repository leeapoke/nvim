-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = false -- 覆盖默认的 true
  end,
})
if not vim.g.vscode then
  -- vim.api.nvim_create_autocmd("FileType", {
  --   group = augroup("associate_filetype"),
  --   pattern = { "htmldjango" },
  --   callback = function()
  --     vim.api.nvim_command("set filetype=html")
  --   end,
  -- })

  vim.api.nvim_create_autocmd("FileType", {
    group = augroup("associate_filetype"),
    pattern = { "python" },
    callback = function()
      vim.opt.shiftwidth = 4
      vim.opt.formatoptions:remove({ "o" }) -- 防止使用 o 切换到下一行的时候自动加上注释符号(在上一行是注释的情况下)
    end,
  })

  vim.api.nvim_create_autocmd("FileType", {
    group = augroup("associate_filetype"),
    pattern = { "c", "cpp" },
    callback = function()
      vim.opt.shiftwidth = 2
      vim.opt.formatoptions:remove({ "o" }) -- 防止使用 o 切换到下一行的时候自动加上注释符号(在上一行是注释的情况下)
    end,
  })

  vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
      if
        require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
        and not require("luasnip").session.jump_active
      then
        require("luasnip").unlink_current()
      end
    end,
  })

  -- make telescope preview show line numbers
  vim.api.nvim_create_autocmd("User", {
    pattern = "TelescopePreviewerLoaded",
    callback = function()
      vim.opt_local.number = true
    end,
  })
end

-- CscopeBuild
local group = vim.api.nvim_create_augroup("CscopeBuild", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.c", "*.h","*.cc","*.cpp"},
  callback = function ()
    vim.cmd("Cscope db build")
  end,
  group = group,
})

vim.api.nvim_create_user_command('Format', function()
  vim.cmd('silent %!clang-format')
end, {})

-- nvim theme change
vim.api.nvim_create_user_command('Theme', function(opts)
  local args = opts.fargs -- 获取用户输入的所有参数

  if #args == 0 then
    print("Usage: :Theme [dark|light]")
    return
  end

  local theme_mode = args[1] -- 取第一个参数作为模式

  if theme_mode ~= "dark" and theme_mode ~= "light" then
    print("Invalid theme mode: " .. theme_mode)
    print("Usage: :Theme [dark|light]")
    return
  end

  local cmd = 'nvim-theme ' .. theme_mode
  local handle = io.popen(cmd, 'r')
  local result = handle:read("*a")
  handle:close()

  -- 输出命令执行结果
  print(result)

  -- 可选：检查命令执行状态
  if string.match(result, "error") then
    print("Failed to change theme to " .. theme_mode)
  else
    print("Theme changed to " .. theme_mode)
  end
end, {
  nargs = 1, -- 表示需要提供一个参数
  complete = function(arglead)
    -- 提供自动补全选项
    local themes = {"dark", "light"}
    local matches = {}
    for _, theme in ipairs(themes) do
      if vim.startswith(theme, arglead) then
        table.insert(matches, theme)
      end
    end
    return matches
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "onelight",
  callback = function()
    vim.cmd("highlight MatchParen cterm=bold ctermbg=red guibg=yellow")
    vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#ffb6c1")
    vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#D3D3D3" })
    vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#D3D3D3" })
    vim.api.nvim_set_hl(0, "ColorColumn",  { bg = "#D3D3D3" })
    vim.api.nvim_set_hl(0, "Visual",       { bg = "#D3D3D3" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#D3D3D3", bold = true })
  end,
})
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "onedark_dark",
  callback = function()
    vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#333842" })
    vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#333842" })
    vim.api.nvim_set_hl(0, "ColorColumn",  { bg = "#333842" })
    vim.api.nvim_set_hl(0, "Visual",       { bg = "#333842" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#333842", bold = true })
  end,
})
