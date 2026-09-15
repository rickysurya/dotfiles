return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = {
          tabstop = 4, -- Number of spaces a <Tab> counts for
          shiftwidth = 4, -- Size of an indent
          softtabstop = 4, -- Number of spaces a <Tab> counts for while editing
          expandtab = true, -- Convert tabs to spaces
        },
      },
    },
  },

  -- 2. Completely disable indent-o-matic so it stops overriding your settings
  {
    "Darazaki/indent-o-matic",
    enabled = false,
  },
}
