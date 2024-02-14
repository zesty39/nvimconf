-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- best jk for wrap
    ["j"] = "gj",
    ["k"] = "gk",
    ["gj"] = "j",
    ["gk"] = "k",

    -- disable keybindings
    ["<F7"] = false,
    ["<C-'>"] = false,
    ["<C-q>"] = false,

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- toggle terminal
    ["<a-=>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  t = {
    -- toggle terminal
    ["<a-=>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },

    -- enter normal mode in terminal
    ["<m-q>"] = { [[<c-\><c-n>]] },
  },
}
