return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        event = "VeryLazy",
        opts = {
            options = {
                show_buffer_close_icons = false,
                show_duplicate_prefix = true,
                indicator = "none",
                name_formatter = function(opts)
                    local plenary = require("plenary")
                    local dname = plenary.path:new(opts.path):make_relative()
                    return string.format("%s (%s)", opts.name, dname)
                end,
                truncate_names = false,
                custom_filter = function(buf_number, _)
                    return buf_number == vim.api.nvim_get_current_buf()
                end,
            },
        }
    },
}
