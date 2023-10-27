-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Theme sonokai
  {
    'sainnhe/sonokai',
    config = function()
      vim.cmd.colorscheme 'sonokai'
    end,
  },

  -- Highlight trailing whitespaces
  {
    'ntpeters/vim-better-whitespace',
  },

  -- Autopair
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
  },

  -- Theme tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  -- Theme monokai
  {
    'tanvirtin/monokai.nvim',
  },

  -- Show buffers as tabs
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {
        options = {
          show_buffer_icons = false,
          show_buffer_close_icons = false,
        }
      }
    end,
  },

  -- File tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      vim.keymap.set("n", "<leader><tab>", '<Cmd>Neotree toggle<CR>',
        { desc = 'Toggle Neotree' })
    end
  },
  -- Sublime text Mariana theme
  {
    'kaiuri/nvim-juliana',
    lazy = false,
    config = true,
  },

  {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
      require("conform").setup {
        formatters_by_ft = {
          yaml = { "yamlfmt" },
          sh = { "shfmt" },
        },
      }
      -- Format selected range in visual mode
      vim.keymap.set("", "<leader>=", function()
        require("conform").format({ async = true, lsp_fallback = true })
      end)
    end
  },
}
