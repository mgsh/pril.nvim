return {
    -- TODO: enables inline hints for search - not cool
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            {
                "rcarriga/nvim-notify",
                opts = function(_, _)
                    -- use theme colors
                    local colors = {}
                    colors["NotifyTRACETitle"] = "DiagnosticOk"
                    colors["NotifyDEBUGTitle"] = "DiagnosticHint"
                    colors["NotifyINFOTitle"] = "DiagnosticInfo"
                    colors["NotifyWARNTitle"] = "DiagnosticWarn"
                    colors["NotifyERRORTitle"] = "DiagnosticError"
                    for group, link in pairs(colors) do
                       vim.api.nvim_set_hl(0, group, {link = link})
                    end

                    return {
                        render = "compact",
                        stages = "fade",
                    }
                end,
            },
        },
    },
}
