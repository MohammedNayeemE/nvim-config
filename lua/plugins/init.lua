return {
{
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require "configs.dashboard"
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'} }
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim" ,
    opts = {
      ensure_installed = {
        "lua-language-server" , "stylua" , "html-lsp" , "css-lsp" , "prettier" , "clangd" , "typescript-language-server" , "rust-analyzer" , "gopls","pyright",
      }
    }
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css" , "c" , "cpp" , "rust"
  		},
  	},
  },
-- Example to setup for C++ and Python
{
    "A7lavinraj/assistant.nvim",
    dependencies = { "stevearc/dressing.nvim" }, -- optional but recommended

    config = function()
      require("assistant").setup({
        opts = {                           -- you can also pass opts as {}, cpp and python are supported by default
          commands = {
            python = {
              extension = "py",
              compile = nil,
              execute = {
                main = "python3",
                args = { "$FILENAME_WITH_EXTENSION" }
              },
            },
            cpp = {
              extension = "cpp",
              compile = {
                main = "g++",
                args = { "$FILENAME_WITH_EXTENSION", "-o", "$FILENAME_WITHOUT_EXTENSION" }
              },
              execute = {
                main = "./$FILENAME_WITHOUT_EXTENSION",
                args = nil
              },
            },
          },
          time_limit = 5000,
          border = false, -- border is OFF by default, you can can pass true to enable borders
          theme = "gruvbox" -- "gruvbox", "catppuccin" and "tokyonight" are also available
        }
      })
    end,
    lazy = false,
  }
}
