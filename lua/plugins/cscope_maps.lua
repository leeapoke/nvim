return{
  "dhananjaylatkar/cscope_maps.nvim",
  event = "BufReadPost",
  -- event = "VeryLazy",
  dependencies = {
    "nvim-telescope/telescope.nvim", -- optional [for picker="telescope"]
    "ibhagwan/fzf-lua", -- optional [for picker="fzf-lua"]
    "nvim-mini/mini.pick", -- optional [for picker="mini-pick"]
    "folke/snacks.nvim", -- optional [for picker="snacks"]
  },
  opts = {
    -- USE EMPTY FOR DEFAULT OPTIONS
    -- DEFAULTS ARE LISTED BELOW
  },
}
