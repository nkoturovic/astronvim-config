-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>ts"] = { ":SymbolsOutline<cr>", name = "SymbolsOutline" },
    -- ["<leader>T"] = { p = "<cmd>Telekasten panel<cr>", name = "Telekasten", desc = "Telekasten" },
    ["<leader>T"] = { ":TodoQuickFix<cr>", desc = "TODO Quick Fix" },
--    ["<leader>bk"] = { "<cmd>bnext<cr>", desc = "Next tab" },
--    ["<leader>bj"] = { "<cmd>bprevious<cr>", desc = "Previous tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    ["<leader>lt"] = {
      ":lua vim.lsp.buf.incoming_calls()<CR>",
      -- Then zo, z<something can be used to manage folds>
      -- Look at: https://github.com/ldelossa/litee-calltree.nvim/blob/main/lua/litee/calltree/config.lua
      --function()
      --  vim.lsp.buf.incomming_calls()
      --end,
      desc = "Open 'in' call tree - Callers",
    },
    ["<leader>lT"] = {
      ":lua vim.lsp.buf.outgoing_calls()<CR>",
      --function()
      --  vim.lsp.buf.incomming_calls()
      --end,
      desc = "Open 'in' call tree - Calling",
    }

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
