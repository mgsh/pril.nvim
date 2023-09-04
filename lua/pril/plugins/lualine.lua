return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = {
            options = {
                globalstatus = true,
                section_separators = "",
                component_separators = "",
            },
            sections = {
                lualine_b = {"branch", "diagnostics"},
                lualine_c = {},
            },
        },
    },
}
