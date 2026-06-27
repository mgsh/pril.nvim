if vim.g.vscode then
  return {}
end

return {
  {
    "romgrk/barbar.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      animation = false,
      clickable = false,
      exclude_ft = {},
      exclude_name = {},
      highlight_alternate = true,
      icons = {
        button = false,
        buffer_index = "subscript",
        separator = { left = "█", right = "" },
        separator_at_end = false,
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = false },
          [vim.diagnostic.severity.WARN] = { enabled = false },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
          added = { enabled = false },
          deleted = { enabled = false },
          changed = { enabled = false },
        },
        alternate = {
          separator = { left = "▒", right = "" },
          filetype = { custom_colors = true },
        },
        inactive = {
          separator = { left = "▒", right = "" },
        }
      },
    },
    keys = {
      -- controls
      { "<leader>w", "<cmd>bdelete<cr>",                          desc = "Close buffer (lose layout)" },
      { "<leader>W", "<cmd>bdelete!<cr>",                         desc = "Close buffer (lose layout, nowrite)" },
      { "<leader>c", "<cmd>BufferClose<cr>",                      desc = "Close buffer (keep layout)" },
      { "<leader>C", "<cmd>BufferClose!<cr>",                     desc = "Close buffer (keep layout, nowrite)" },
      { "<leader>A", "<cmd>BufferCloseAllButCurrentOrPinned<cr>", desc = "Close all buffers (except cur/pin)" },
      { "<leader>>", "<cmd>BufferPin<cr>",                        desc = "Pin buffer" },

      -- navigation
      { "<leader>p", "<cmd>BufferPrevious<cr>",                   desc = "Switch to previous buffer" },
      { "<leader>n", "<cmd>BufferNext<cr>",                       desc = "Switch to next buffer" },

      -- selection
      { "<leader>P", "<cmd>BufferPick<cr>",                       desc = "Select buffer" },
      { "<leader>1", "<cmd>BufferGoto 1<cr>",                     desc = "Switch to buffer 1" },
      { "<leader>2", "<cmd>BufferGoto 2<cr>",                     desc = "Switch to buffer 2" },
      { "<leader>3", "<cmd>BufferGoto 3<cr>",                     desc = "Switch to buffer 3" },
      { "<leader>4", "<cmd>BufferGoto 4<cr>",                     desc = "Switch to buffer 4" },
      { "<leader>5", "<cmd>BufferGoto 5<cr>",                     desc = "Switch to buffer 5" },
      { "<leader>6", "<cmd>BufferGoto 6<cr>",                     desc = "Switch to buffer 6" },
      { "<leader>7", "<cmd>BufferGoto 7<cr>",                     desc = "Switch to buffer 7" },
      { "<leader>8", "<cmd>BufferGoto 8<cr>",                     desc = "Switch to buffer 8" },
      { "<leader>9", "<cmd>BufferGoto 9<cr>",                     desc = "Switch to buffer 9" },
      { "<leader>0", "<cmd>BufferLast<cr>",                       desc = "Switch to last buffer (rightmost)" },
    },
  },
}
