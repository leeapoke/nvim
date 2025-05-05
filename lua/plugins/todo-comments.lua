return {
  "folke/todo-comments.nvim",
  --event = "VeryLazy",
  event = "BufReadPost",
  keys = {
    { "]t", false },
    { "[t", false },
  },
}
