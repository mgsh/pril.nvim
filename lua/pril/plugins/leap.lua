return {
  {
    "https://codeberg.org/andyg/leap.nvim",
    version = false,
    event = "BufReadPost",

    config = function()
      local leap = require("leap")
      local modes = { "n", "x", "o" }

      ------------------------------------------------------------------------
      -- 1. Default 2-char searches ("s" and "S")
      ------------------------------------------------------------------------
      -- Forward search (buffer only)
      vim.keymap.set(modes, "s", "<Plug>(leap-forward)", { desc = "Leap forward (2-char)" })
      -- Backward search (buffer only)
      vim.keymap.set(modes, "S", "<Plug>(leap-backward)", { desc = "Leap backward (2-char)" })

      ------------------------------------------------------------------------
      -- 2. Simplified custom f/t motions (1-char search)
      ------------------------------------------------------------------------
      do
        -- Helper function to generate the one-character motion function
        local function ft_motion(backward, offset)
          return function()
            local args = {
              backward = backward,
              offset = offset,
              inputlen = 1, -- Restrict to one character
              inclusive = true,
              opts = {
                labels = "", -- Force autojump
              },
            }
            leap.leap(args)
          end
        end

        -- Set the mappings for f, F, t, T (in all relevant modes)
        vim.keymap.set({ "n", "x", "o" }, "f", ft_motion(false, nil), { desc = "Leap forward 'f' (1-char)" })
        vim.keymap.set({ "n", "x", "o" }, "F", ft_motion(true, nil), { desc = "Leap backward 'F' (1-char)" })
        vim.keymap.set({ "n", "x", "o" }, "t", ft_motion(false, -1), { desc = "Leap forward 't' (1-char till)" })
        vim.keymap.set({ "n", "x", "o" }, "T", ft_motion(true, 1), { desc = "Leap backward 'T' (1-char till)" })
      end
    end,
  }
}
