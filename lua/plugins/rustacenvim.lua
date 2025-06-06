return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- 使用稳定版本
    ft = { "rust" },
    config = function()
      vim.g.rustaceanvim = {
        tools = {
          -- 启用自动格式化
          autoSetHints = true,
        },
        server = {
          on_attach = function(_, bufnr)
            local nmap = function(keys, func, desc)
              vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
            end

            -- 快捷键绑定
            nmap("<leader>rr", function()
              vim.cmd("RustLsp runnables")
            end, "Rust: Run Code")

            nmap("<leader>rd", function()
              vim.cmd("RustLsp debuggables")
            end, "Rust: Debug Code")

            nmap("<leader>rf", function()
              vim.lsp.buf.format({ async = true })
            end, "Rust: Format Code")
          end,
          settings = {
            ["rust-analyzer"] = {
              cargo = {
                allFeatures = true,
              },
              checkOnSave = {
                command = "clippy",
              },
              inlayHints = {
                typeHints = true,
                parameterHints = true,
              },
            },
          },
        },
      }
    end,
  },
}
