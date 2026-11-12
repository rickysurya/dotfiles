return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "quarto" }, -- Only load when opening markdown files
    opts = {
      -- AstroNvim uses mini.icons by default, this ensures compatibility
      anti_conceal = { enabled = false },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
  },
}
