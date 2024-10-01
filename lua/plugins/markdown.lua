return {
  "OXY2DEV/markview.nvim",
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    -- You will not need this if you installed the
    -- parsers manually
    -- Or if the parsers are in your $RUNTIMEPATH
    "nvim-treesitter/nvim-treesitter",

    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("markview").setup({
      modes = { "n", "i", "no", "c" },
      hybrid_modes = { "i" },

      -- This is nice to have
      callbacks = {
        on_enable = function(_, win)
          vim.wo[win].conceallevel = 2
          vim.wo[win].concealcursor = "nc"
        end,
      },
      headings = {
        enable = true,

        textoff = 0,
        shift_width = 1,

        heading_1 = {
          icon = "󰎤 ",
        },
        heading_2 = {
          icon = "󰎧 ",
        },
        heading_3 = {
          icon = "󰎪 ",
        },
        heading_4 = {
          icon = "󰎭 ",
        },
        heading_5 = {
          icon = "󰎱 ",
        },
        heading_6 = {
          icon = "󰎳 ",
        },
      },
    })
  end,
}
