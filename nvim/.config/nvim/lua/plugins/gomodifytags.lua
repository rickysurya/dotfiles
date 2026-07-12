-- lua/plugins/gomodifytags.lua
return {
  {
    "AstroNvim/astrocore",
    ---@param opts AstroCoreOpts
    opts = function(_, opts)
      if not opts.mappings then opts.mappings = {} end
      if not opts.mappings.n then opts.mappings.n = {} end

      opts.mappings.n["<leader>tj"] = {
        function()
          if vim.bo.filetype ~= "go" then
            print "Not a Go file!"
            return
          end

          local struct = vim.fn.expand "<cword>"
          if struct == "" then
            print "Cursor is not on a struct name!"
            return
          end

          vim.cmd "write"

          local file = vim.fn.expand "%:p"
          local cmd = string.format(
            "gomodifytags -file %s -struct %s -add-tags json -w",
            vim.fn.shellescape(file),
            vim.fn.shellescape(struct)
          )
          vim.fn.system(cmd)

          vim.cmd "edit!"
          print("JSON tags injected into " .. struct)
        end,
        desc = "Go: Add JSON tags to struct",
      }
    end,
  },
}
