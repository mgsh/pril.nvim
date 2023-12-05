return {
    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        opts = {
            server_opts = {
                pyright = {},
                ruff_lsp = {},
                jedi_language_server = {},
            },
            presetup = {
                ruff_lsp = function(client, _)
                    if client.name == "ruff_lsp" then
                        -- disable hover in favor of pyright
                        client.server_capabilities.hoverProvider = false
                    end
                end,
            },
        },
        ---@params opts PluginLspOpts
        config = function(_, opts)
            -- set up keymaps and autoformat
            vim.api.nvim_create_autocmd("LspAttach", {
                group = vim.api.nvim_create_augroup("LspConfig", {}),
                callback = function(event)
                    -- autoformat
                    local client = vim.lsp.get_client_by_id(event.data.client_id)
                    if client.supports_method("textDocument/formatting") then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            group = vim.api.nvim_create_augroup("LspFormat", {}),
                            callback = function(_)
                                vim.lsp.buf.format({ bufnr = event.buf })
                            end,
                        })
                    end

                    -- keymaps
                    local opts = { buffer = event.buf }
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                end,
            })
            local server_opts = opts.server_opts

            -- mason-lspconfig default handler
            local function default_handler(server)
                -- presetup
                sopts = server_opts[server] or {}
                if opts.presetup[server] then
                    if opts.presetup[server](server, sopts) then
                        return
                    end
                elseif opts.presetup["*"] then
                    if opts.presetup["*"](server, sopts) then
                        return
                    end
                end

                -- lspconfig setup
                require("lspconfig")[server].setup(sopts)
            end

            -- mason-lspconfig setup
            ensure_installed = {} ---@type string[]
            for server in pairs(server_opts) do
                ensure_installed[#ensure_installed + 1] = server
            end
            require("mason-lspconfig").setup({
                ensure_installed = ensure_installed,
                handlers = { default_handler },
            })
        end,
    },
    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        build = ":MasonUpdate",
        ---@param opts MasonSettings
        config = function(_, opts)
            require("mason").setup(opts)
        end,
    },
}
