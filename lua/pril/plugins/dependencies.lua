return {
    -- TODO: reorganize dependencies
    { "nvim-lua/plenary.nvim", lazy = true },

    -- used by: bufferline
    { "nvim-tree/nvim-web-devicons", lazy = true },

    -- used by: noice
    { "MunifTanjim/nui.nvim", version = "*", lazy = true },

    -- used by: noice
    {
        "rcarriga/nvim-notify",
        version = "*",
        opts = function()
            -- use theme colors
            local colors = {}
            colors["NotifyTRACETitle"] = "DiagnosticOk"
            colors["NotifyDEBUGTitle"] = "DiagnosticHint"
            colors["NotifyINFOTitle"] = "DiagnosticInfo"
            colors["NotifyWARNTitle"] = "DiagnosticWarn"
            colors["NotifyERRORTitle"] = "DiagnosticError"
            for group, link in pairs(colors) do
                vim.api.nvim_set_hl(0, group, { link = link })
            end

            return {
                render = "compact",
                stages = "fade",
                timeout = 100,
            }
        end,
        lazy = true,
    },

    -- used by: flit, leap
    { "tpope/vim-repeat", version = "*", lazy = true },
}
