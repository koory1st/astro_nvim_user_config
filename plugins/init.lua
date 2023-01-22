return {
  -- You can disable default plugins as follows:
  ['phaazon/hop.nvim'] = {
    branch = 'v2', -- optional but strongly recommended
    as = "hop",
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  'RRethy/vim-illuminate',
  'danilamihailov/beacon.nvim',
  ['anuvyklack/pretty-fold.nvim'] = {

    config = function()
      require('pretty-fold').setup()
    end
  },
  ['simrat39/rust-tools.nvim'] = {
    as = 'rust-tools',
    config = function()
      require("rust-tools").setup()
    end,
  },
  -- ['nacro90/numb.nvim'] = {
  --   as = 'numb',
  --   config = function()
  --     require('numb').setup{
  --       show_numbers = true, -- Enable 'number' for the window while peeking
  --       show_cursorline = true, -- Enable 'cursorline' for the window while peeking
  --       hide_relativenumbers = true, -- Enable turning off 'relativenumber' for the window while peeking
  --       number_only = false, -- Peek only when the command is only a number instead of when it starts with a number
  --       centered_peeking = true, -- Peeked line will be centered relative to window
  --     }
  --   end,
  -- },
  ["folke/neodev.nvim"] = {
    as = 'neodev',
    config = function()
      require("neodev").setup()
    end,
  },
  ["klen/nvim-test"] = {
    as = 'nvim-test',
    config = function()
      require('nvim-test').setup()
    end,
  },
  ['Weissle/persistent-breakpoints.nvim'] = {
    as = 'persistent-breakpoints',
    config = function()
      require('persistent-breakpoints').setup{
        load_breakpoints_event = { "BufReadPost" }
      }
    end,
  }
}
