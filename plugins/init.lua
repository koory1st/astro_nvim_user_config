return {

  -- You can disable default plugins as follows:
  ["goolord/alpha-nvim"] = { disable = true },
  ['phaazon/hop.nvim'] = {
    branch = 'v2', -- optional but strongly recommended
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
  ["init"] = {
    -- Extended file type support
    { "sheerun/vim-polyglot" },

    -- Rust support
    {
      "simrat39/rust-tools.nvim",
      after = { "mason-lspconfig.nvim" },
      -- Is configured via the server_registration_override installed below!
      config = function()
        require("rust-tools").setup {
          server = astronvim.lsp.server_settings "rust_analyzer",
          tools = {
            inlay_hints = {
              parameter_hints_prefix = "  ",
              other_hints_prefix = "  ",
            },
          },
        }
      end,
    },
  },
}
