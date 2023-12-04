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
            servers = {
                pyright = {},
                ruff_lsp = {},
                jedi_language_server = {},
            },
            setup = {
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
            local servers = opts.servers
            local function setup(server)
                server_opts = servers[server] or {}
                if opts.setup[server] then
                    if opts.setup[server](server, server_opts) then
                        return
                    end
                elseif opts.setup["*"] then
                    if opts.setup["*"](server, server_opts) then
                        return
                    end
                end
                require("lspconfig")[server].setup(server_opts)
            end

            ensure_installed = {} ---@type string[]
            for server in pairs(servers) do
                ensure_installed[#ensure_installed + 1] = server
            end

            require("mason-lspconfig").setup({
                ensure_installed = ensure_installed,
                handlers = { setup },
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
