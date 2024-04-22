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
    {
        "NvChad/base46",
        lazy = true,
        build = function()
          require("base46").load_all_highlights()
        end,
    },
    -- {
    --     "NvChad/ui",
    --     config = function()
    --       require "nvchad"
    --     end,
    -- },
    --
-- if u want nvchad's ui plugin :)
    -- {
    --   'stevearc/oil.nvim',
    --   opts = {},
    --   -- Optional dependencies
    --   dependencies = { "nvim-tree/nvim-web-devicons" },
    -- },
    {"rebelot/kanagawa.nvim"},
    { "EdenEast/nightfox.nvim" }, -- lazy
    {
	'windwp/nvim-ts-autotag',
	 config = function()
	     require('nvim-ts-autotag').setup()
	 end
    },
    "nvim-lua/plenary.nvim", -- useful lua functions used by lots of plugins
    {
    "b0o/incline.nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    'nvim-lualine/lualine.nvim',
    -- { "lukas-reineke/indent-blankline.nvim", main="ibl", opts = {}},
    -- {"lukas-reineke/indent-blankline.nvim", tag = "v2.20.8"},
    -- {'kevinhwang91/nvim-ufo', dependencies= 'kevinhwang91/promise-async'},
    {
    "HoNamDuong/hybrid.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    },
    "windwp/nvim-autopairs",
    -- "nvim-tree/nvim-tree.lua",
        {
      'nvim-telescope/telescope.nvim',
      dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"jose-elias-alvarez/null-ls.nvim",
    "L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
    "ntk148v/habamax.nvim", dependencies={ "rktjmp/lush.nvim" },
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
    "nvim-treesitter/nvim-treesitter",
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    'sainnhe/gruvbox-material',
    "lunarvim/darkplus.nvim",
    'rose-pine/neovim',
    'rktjmp/lush.nvim',
    "mcchrish/zenbones.nvim",
    { "ellisonleao/gruvbox.nvim" },
   "folke/zen-mode.nvim",
	"nvim-tree/nvim-web-devicons",
	"famiu/bufdelete.nvim",
    -- "lewis6991/gitsigns.nvim",
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    'navarasu/onedark.nvim',
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


      {
            "zbirenbaum/copilot.lua",
            cmd = "Copilot",
              event = "InsertEnter",
              config = function()
                require("copilot").setup({})
              end,
        } ,
        {
          "zbirenbaum/copilot-cmp",
          config = function ()
            require("copilot_cmp").setup()
          end
        },
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
