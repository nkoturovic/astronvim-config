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
}
