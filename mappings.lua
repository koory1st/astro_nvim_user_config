-- Mapping data with "desc" stored directly by vim.keymap.set().
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },

    -- Open file in browser
    ["<space>r"] = { ":exe ':silent !firefox %'<cr>", desc = "Run Browser" },
    -- View treesitter highlight groups
    ["<space>k"] = { ":TSHighlightCapturesUnderCursor<cr>", desc = "View Highlight Group" },
    -- Easy splits
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
    -- Search highlight groups
    ["<space>sg"] = { "<cmd>Telescope highlights<cr>", desc = "Highlight groups" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- hop
    ["f"] = { "<cmd>HopChar1AC<cr>", desc = "hop ac" },
    ["F"] = { "<cmd>HopChar1BC<cr>", desc = "hop bc" },
    ["<leader>lr"] = {function() require("telescope.builtin").lsp_references() end, desc="References"},
    ["<leader>lR"] = {function() vim.lsp.buf.rename() end, desc="Rename"},
    ["<leader>lD"] = {function() require("telescope.builtin").lsp_definitions() end, desc="Definitions"},
    ["<F9>"] = {"<cmd>lua require('persistent-breakpoints.api').toggle_breakpoint()<cr>", desc="Toggle Breakpoint"},
    ["<leader>DB"] = {"<cmd>lua require('persistent-breakpoints.api').clear_all_breakpoints()<cr>", desc="Clear All Breakpoint"},
    ["<leader>DC"] = {"<cmd>lua require('persistent-breakpoints.api').set_conditional_breakpoint()<cr>", desc="Set Conditional Breakpoint"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
