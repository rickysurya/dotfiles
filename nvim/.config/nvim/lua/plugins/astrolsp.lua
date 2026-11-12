return {
  "AstroNvim/astrolsp",
  opts = {
    servers = { "gopls" },
    config = {
      gopls = {
        cmd = { vim.fn.expand "$HOME/go/bin/gopls" },
        filetypes = { "go", "gomod" },
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              nilness = true,
              useany = true,
            },
            completeUnimported = true,
            staticcheck = true,
            gofumpt = true,
          },
        },
      },
    },
  },
}
