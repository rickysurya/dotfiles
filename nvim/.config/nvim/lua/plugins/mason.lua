-- Customize Mason

---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = function(_, opts)
      local skip = {
        ["gopls"] = true,
        ["gofumpt"] = true,
        ["goimports"] = true,
        ["golangci-lint"] = true,
        ["gomodifytags"] = true,
        ["delve"] = true,
        ["gotests"] = true,
        ["impl"] = true,
        ["iferr"] = true,
        ["markdown-toc"] = true,
        ["markdownlint-cli2"] = true,
      }
      opts.ensure_installed = vim.tbl_filter(function(pkg) return not skip[pkg] end, opts.ensure_installed or {})
    end,
  },
}
