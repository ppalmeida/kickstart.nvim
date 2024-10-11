-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "pauchiner/pastelnight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "ThePrimeagen/vim-be-good",
    lazy = true,
    cmd = "VimBeGood"
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup({
        options = { theme = 'gruvbox' }  -- You can change the theme here
      })
    end
  },
  {
    'nvim-neotest/neotest',
    'nvim-neotest/neotest-go', -- Adapter for Go tests
  },
  {
  -- Core nvim-dap plugin
  'mfussenegger/nvim-dap',
  -- Optional: UI for nvim-dap
  'rcarriga/nvim-dap-ui',
  -- Optional: Go adapter for DAP
  'leoluz/nvim-dap-go',
  },

  -- Noice
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup({
        view = {
          width = 30,  -- Width of the sidebar
          side = 'left',  -- Place the tree on the left side
        },
        renderer = {
          icons = {
            show = {
              git = true,
              folder = true,
              file = true,
              folder_arrow = true,
            },
          },
        },
      })
    end
  },
  {
    'nvim-tree/nvim-web-devicons', 
  }
}
