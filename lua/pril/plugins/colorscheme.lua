return {
  {
    "mgsh/nvim-solarized-lua",
    lazy = true,
    init = function()
      -- TODO: this fixes leap invisible first match highlight. but is this is the right fix?
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function(ev)
          vim.api.nvim_set_hl(0, "Cursor", { reverse = false })
        end,
      })
    end,
  }
}
