return function()
  -- Set up custom filetypes
  vim.filetype.add {
    extension = {
      norg = "norg",
    },
  --   filename = {
  --     ["Foofile"] = "fooscript",
  --   },
  --   pattern = {
  --     ["~/%.config/foo/.*"] = "fooscript",
  --   },
  }

  -- Fixed cursor
  vim.cmd [[
    autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q]")
  ]]
end
