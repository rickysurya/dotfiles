return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = "mocha",
    transparent_background = true,
    color_overrides = {
      mocha = {
        rosewater = "#ffc0cb",
        subtext1 = "#bac2de",
        text = "#ffffff",
        blue = "#89b4fa",
        lavender = "#b4befe",
      },
    },
    custom_highlights = function(colors)
      return {
        LineNr = { fg = colors.lavender, style = { "bold" } },
        LineNrAbove = { fg = colors.overlay1 },
        LineNrBelow = { fg = colors.overlay1 },
        SignColumn = { bg = "none" },
      }
    end,
    integrations = {
      astroui = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
    },
  },
}
