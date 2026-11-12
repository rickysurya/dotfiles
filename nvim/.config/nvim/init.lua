-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.lsp.config("pyright", {})
vim.lsp.enable("pyright")

vim.lsp.config("gopls", {})
vim.lsp.enable("gopls")

vim.lsp.config("vtsls", {})
vim.lsp.enable("vtsls")

vim.lsp.config("omnisharp-roslyn", {})
vim.lsp.enable("omnisharp-roslyn")
