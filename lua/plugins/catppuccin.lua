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
          rosewater = "#650201",
          flamingo = "#772323",
          pink = "#742155",
          mauve = "#551155",
          red = "#990000",
          maroon = "#610006",
          peach = "#762706",
          yellow = "#503000",
          green = "#106006",
          teal = "#035055",
          sky = "#004080",
          sapphire = "#004950",
          blue = "#0000aa",
          lavender = "#1122aa",
          text = "#000000",
          subtext1 = "#010101",
          subtext0 = "#111111",
          overlay2 = "#121212",
          overlay1 = "#222222",
          overlay0 = "#232323",
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
            Comment = { fg = "#555555" },
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
