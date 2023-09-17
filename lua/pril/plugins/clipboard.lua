return {
    {
        "ojroques/nvim-osc52",
        event = "VeryLazy",
        opts = {
            silent = true,
        },
        config = function()
            if not( vim.g.vscode ) then
                vim.api.nvim_create_autocmd("TextYankPost", {
                    callback = function()
                        require("osc52").copy_register("+")
                    end,
                })
            end
        end,
    },
}

