return {
  "neovim/nvim-lspconfig",
  event = "BufReadPost",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "<leader>ca", false }
    keys[#keys + 1] = { "<leader>cc", false }
    keys[#keys + 1] = { "<leader>cC", false }
    keys[#keys + 1] = { "<leader>cR", false }
    keys[#keys + 1] = { "<leader>cr", false }
    keys[#keys + 1] = { "<leader>cA", false }
    keys[#keys + 1] = { "<leader>cl", false }
    keys[#keys + 1] = { "<leader>cs", false }
    keys[#keys + 1] = { "<leader>cS", false }
  end,
  opts = {
    servers = {
      clangd = {
        root_dir = function(fname)
          local util = require('lspconfig.util')
          local fs = vim.fs
          local root_pattern = util.root_pattern('compile_commands.json', '.git')
          local root = root_pattern(fname)

          if root and fs.find('compile_commands.json', { path = root, limit = 1, type = 'file' })[1] then
            return root
          else
            return nil
          end
        end,

        keys = {
          { "<leader>cR", false },
        },
      },
      pyright = {},
      gopls = {},
      rust_analyzer = false,
    },
  },
}
