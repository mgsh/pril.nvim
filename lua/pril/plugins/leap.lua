return {
  -- TODO: try out leap-spooky
  {
    "ggandor/leap.nvim",
    version = false,
    event = "BufReadPost",
    keys = {
      { "<leader>/", "<Plug>(leap-forward-to)",    mode = "n",          desc = "Leap forward to" },
      { "<leader>?", "<Plug>(leap-backward-to)",   mode = "n",          desc = "Leap backward to" },
      { "<leader>/", "<Plug>(leap-forward-till)",  mode = { "x", "o" }, desc = "Leap forward till" },
      { "<leader>?", "<Plug>(leap-backward-till)", mode = { "x", "o" }, desc = "Leap backward till" },
      { "gs",        "<Plug>(leap-from-window)",   mode = "n",          desc = "Leap from window" },
    },
  }
}
