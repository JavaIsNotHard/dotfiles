vim.cmd [[packadd packer.nvim]]

local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use({ "nvim-lua/plenary.nvim"}) -- useful lua functions used by lots of plugins
    use({ "windwp/nvim-autopairs"}) 
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({"williamboman/mason.nvim"})
    use({"williamboman/mason-lspconfig.nvim"})
	use({ "neovim/nvim-lspconfig"})
	use({ "jose-elias-alvarez/null-ls.nvim"}) 


    use({ "L3MON4D3/LuaSnip"}) 
	use({ "rafamadriz/friendly-snippets"}) 


    use({ "hrsh7th/nvim-cmp"}) 
	use({ "hrsh7th/cmp-buffer"}) 
	use({ "hrsh7th/cmp-path"}) 
	use({ "saadparwaiz1/cmp_luasnip"}) 
	use({ "hrsh7th/cmp-nvim-lsp"})
	use({ "hrsh7th/cmp-nvim-lua"})

    use "olimorris/onedarkpro.nvim"
    use 'JoosepAlviste/palenightfall.nvim'
    use 'folke/tokyonight.nvim'
    use({
      'glepnir/zephyr-nvim',
      requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
    })
    use 'jremmen/vim-ripgrep'
    use ("terrortylor/nvim-comment")
    use({ "lewis6991/impatient.nvim"})
    use {"akinsho/toggleterm.nvim"}
    use({
		"nvim-treesitter/nvim-treesitter",
	})

    use({'rose-pine/neovim',})
    use { 'dasupradyumna/midnight.nvim' }
    use({"folke/zen-mode.nvim"})
	use("nvim-tree/nvim-web-devicons")
    use { "catppuccin/nvim", as = "catppuccin" }
    -- use "lukas-reineke/indent-blankline.nvim"
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { "akinsho/bufferline.nvim"}
	use("famiu/bufdelete.nvim")
    use("lewis6991/gitsigns.nvim")

    use({
        "rebelot/heirline.nvim",
        -- You can optionally lazy-load heirline on UiEnter
        -- to make sure all required plugins and colorschemes are loaded before setup
        -- event = "UiEnter",
    })
	-- colorscheme
    use { "ntk148v/habamax.nvim", requires={ "rktjmp/lush.nvim" } }
	use("rebelot/kanagawa.nvim")
    use("ellisonleao/gruvbox.nvim")
    use "lunarvim/darkplus.nvim"
    use {'lewis6991/github_dark.nvim'}
    use {
        "mcchrish/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        requires = "rktjmp/lush.nvim"
    }
    use {
      "rockyzhang24/arctic.nvim",
      requires = { "rktjmp/lush.nvim" }
    }
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

