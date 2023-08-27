return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                globalstatus = true,
            },
            sections = {
                lualine_b = {"branch", "diagnostics"},
                lualine_c = {
                    { "filename", path = 1, symbols = { modified = "[*]", readonly = "", unnamed = "" } }
                }
            },
        },
    },
}
