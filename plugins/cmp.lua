return {
  { -- override nvim-cmp plugin
    "hrsh7th/nvim-cmp",
    -- override the options table that is used in the `require("cmp").setup()` call
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      table.insert(opts.sources, { name = "neorg", priority = 800 })

      -- return the new table to be used
      return opts
    end,
  },
}
