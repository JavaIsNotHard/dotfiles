local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " 

local plugins = {
    "nvim-lua/plenary.nvim", -- useful lua functions used by lots of plugins
    "windwp/nvim-autopairs",
     {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"jose-elias-alvarez/null-ls.nvim",
    "L3MON4D3/LuaSnip", 
	"rafamadriz/friendly-snippets",
     "hrsh7th/nvim-cmp",
	 "hrsh7th/cmp-buffer",
	 "hrsh7th/cmp-path",
	 "saadparwaiz1/cmp_luasnip",
	 "hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
     'folke/tokyonight.nvim',
     'jremmen/vim-ripgrep',
     "terrortylor/nvim-comment",
    "lewis6991/impatient.nvim",
     "akinsho/toggleterm.nvim",
    "nvim-treesitter/nvim-treesitter",
    'rose-pine/neovim',
   "folke/zen-mode.nvim",
	"nvim-tree/nvim-web-devicons",
	"famiu/bufdelete.nvim",
    "lewis6991/gitsigns.nvim",
     {
        "mcchrish/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = "rktjmp/lush.nvim"
    },

    {
      {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        lazy = true,
        config = function()
          -- This is where you modify the settings for lsp-zero
          -- Note: autocompletion settings will not take effect

          require('lsp-zero.settings').preset({})
        end
      },

      -- Autocompletion
      {
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
          {'L3MON4D3/LuaSnip'},
        },
        config = function()
          -- Here is where you configure the autocompletion settings.
          -- The arguments for .extend() have the same shape as `manage_nvim_cmp`: 
          -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/api-reference.md#manage_nvim_cmp

          require('lsp-zero.cmp').extend()

          -- And you can configure cmp even more, if you want to.
          local cmp = require('cmp')
          local cmp_action = require('lsp-zero.cmp').action() 

          cmp.setup({
            mapping = {
              ['<C-Space>'] = cmp.mapping.complete(),
              ['<C-f>'] = cmp_action.luasnip_jump_forward(),
              ['<C-b>'] = cmp_action.luasnip_jump_backward(),
            }
          })
        end
      },

      { 'projekt0n/github-nvim-theme' },
              -- LSP
      {
        'neovim/nvim-lspconfig',
        cmd = 'LspInfo',
        event = {'BufReadPre', 'BufNewFile'},
        dependencies = {
          {'hrsh7th/cmp-nvim-lsp'},
          {'williamboman/mason-lspconfig.nvim'},
          {'williamboman/mason.nvim'},
        },
        config = function()
          -- This is where all the LSP shenanigans will live

          local lsp = require('lsp-zero')

          lsp.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp.default_keymaps({buffer = bufnr})
          end)

          -- (Optional) Configure lua language server for neovim
          require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

          lsp.setup()
        end
      }
}
}

local opts = {}

require("lazy").setup(plugins, opts)
