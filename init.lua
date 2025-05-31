-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("custom.keymaps")
require("custom.config")
if not vim.g.vscode then
  require("custom.telescope")
  require("custom.cscope_maps")
  require("custom.format")
  require("custom.utils.utils").set_os_info()
  require("custom.snippets")
  require("custom.neotree")
  require("custom.toggleterm")
  require("custom.codecompanion")
  require("custom.auto-dark-mode")
end
