if vim.g.vscode then
  return {}
end

return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    version = "*",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            kind = "search_count",
          },
          opts = { skip = true },
        },
        {
          filter = {
            event = "msg_show",
            kind = "",
            find = "written",
          },
          opts = { skip = true },
        },
      },
    },
  },
}
