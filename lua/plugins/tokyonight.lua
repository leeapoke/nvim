return {
  "folke/tokyonight.nvim",
  enabled = false,
  lazy = false,
  opts = function()
    local is_transparent = true
    return {
     transparent = is_transparent,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
        functions = { italic = false },
        variables = { italic = false },
      },
    }
  end,
}
