return{
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  ft = { "markdown" },
  cmd = { "MarkdownPreview", "MarkdownPreviewStop", "MarkdownPreviewToggle" },
  init = function()
    vim.g.mkdp_auto_start = 1      -- 自动打开预览
    vim.g.mkdp_auto_close = 1      -- 关闭 Markdown 文件时自动关闭浏览器
    vim.g.mkdp_theme = "auto"      -- 主题 auto / dark / light
    vim.g.mkdp_browser = ""        -- 使用系统默认浏览器
  end,
  config = function()
    vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Markdown Preview", silent = true })
  end,
}
