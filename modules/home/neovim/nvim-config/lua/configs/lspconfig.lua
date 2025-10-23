require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "ruff", "markdown_oxide", "yamlls", "docker_language_server", "djlsp", "html", "jsonls", "ccls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
