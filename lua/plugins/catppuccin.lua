return {
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      -- term_colors = true,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
        latte = {
          rosewater = "#000000",
          flamingo = "#000000",
          pink = "#000000",
          mauve = "#000000",
          red = "#000000",
          maroon = "#000000",
          peach = "#000000",
          yellow = "#000000",
          green = "#000000",
          teal = "#000000",
          sky = "#000000",
          sapphire = "#000000",
          blue = "#000000",
          lavender = "#000000",
          text = "#000000",
          subtext1 = "#000000",
          subtext0 = "#000000",
          overlay2 = "#bbbbbb",
          overlay1 = "#eeeeee",
          overlay0 = "#eeeeee",
          surface2 = "#ffffff",
          surface1 = "#ffffff",
          surface0 = "#ffffff",
          base = "#ffffff",
          mantle = "#ffffff",
          crust = "#ffffff",
        },
      },
      highlight_overrides = {
        latte = function(_)
          return {
            Comment = { fg = "#666666" },
            Delimiter = { fg = "#000000" },
            ["@punctuation.bracket"] = { fg = "#000000"} ,
            Visual = { bg = "#bbbbbb" },
          }
        end,
      },
      --
      -- term_colors = true,
      -- transparent_background = true,
      -- integrations = {
      --   sandwich = false,
      --   noice = true,
      --   mini = true,
      --   leap = true,
      --   markdown = true,
      --   neotest = true,
      --   cmp = true,
      --   overseer = true,
      --   lsp_trouble = true,
      --   rainbow_delimiters = true,
      -- },
    },
  },
}
