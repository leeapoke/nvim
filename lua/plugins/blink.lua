return {
  event = "BufReadPost",
  -- event = "VeryLazy",
  "saghen/blink.cmp",
  opts = {
    enabled = function()
      return not vim.tbl_contains({ "markdown" }, vim.bo.filetype)
        and vim.bo.buftype ~= "prompt"
        and vim.b.completion ~= false
    end,
  },
  sources = {
    per_filetype = {
      codecompanion = { "codecompanion" },
    }
  },
}
