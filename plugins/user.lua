return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  "LunarVim/darkplus.nvim",
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    -- keys = { { "<leader>ts", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
  { 
    "p00f/clangd_extensions.nvim",
     event = "BufRead",
     config = function()
       require("clangd_extensions").setup({
        server = {},
        extensions = {}
      })
     end
  }, -- install lsp plugin
  {
    "iamcco/markdown-preview.nvim",
    event = "BufRead",
      config = function()
        vim.fn["mkdp#util#install"]()
      end,
  },
  {
    "renerocksai/telekasten.nvim",
     event = "BufEnter",
     config = function()
        require("telekasten").setup({
          home = vim.fn.expand("~/notes"), -- Put the name of your notes directory here
        })
     end,
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      keywords = {
        WODO = { icon = "R ", color = "info" },
      },
      config = function()
        require("todo-comments").setup({
          search = {
            pattern = [[\b(KEYWORDS)\(nkoturovic\):]], -- ripgrep regex 
          },
          highlight = {
            pattern = [[.*<(KEYWORDS)\(nkoturovic\)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
            keyword = "fg",
            after = "fg",
          },
          gui_style = {
            -- fg = "BOLD", -- The gui style to use for the fg highlight group.
          },
        })
      end,
      event = "BufEnter",
    },
    {
      "ldelossa/litee-calltree.nvim",
      dependencies = { "ldelossa/litee.nvim" },
      event = "BufEnter",
      config = function()
        require("litee.lib").setup({})
        require("litee.calltree").setup({})
      end,
    },
  },
  {
      "David-Kunz/gen.nvim",
      dependencies = { "ldelossa/litee.nvim" },
      event = "BufEnter",
      config = function()
        require("gen").setup({
          model = "laser-dolphin-mixtral-2x7b-dpo:q5_0",
          display_mode = "float", -- The display mode. Can be "float" or "split".
          no_auto_close = true, -- Never closes the window automatically.
      })
      end,
  },
  -- {
  --   "nomnivore/ollama.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim"},
  --     event = "BufEnter",
  --     config = function()
  --       require("ollama").setup({
  --        model = "laser-dolphin-mixtral-2x7b-dpo:q5_0",
  --         url = "http://127.0.0.1:11434",
  --         serve = {
  --           on_start = false,
  --           command = "ollama",
  --           args = { "serve" },
  --           stop_command = "pkill",
  --           stop_args = { "-SIGTERM", "ollama" },
  --         },
  --         -- View the actual default prompts in ./lua/ollama/prompts.lua
  --           -- prompts = {
  --           --   Sample_Prompt = {
  --           --     prompt = "This is a sample prompt that receives $input and $sel(ection), among others.",
  --           --     input_label = "> ",
  --           --     model = "mistral",
  --           --     action = "display",
  --           --   }
  --           -- }
  --         })
  --     end,
  -- },
}
