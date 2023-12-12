return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      open_mapping = "<C-\\><C-\\>",
      start_in_insert = false,
      insert_mappings = true,
      terminal_mappings = true,
      direction = "tab",
      shade_terminals = false,
    },
  }
}
