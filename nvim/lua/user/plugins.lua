local fn = vim.fn

-- Automatically install packer
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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
-- vim.cmd([[
--   augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--   augroup end
-- ]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
      use({ "wbthomason/packer.nvim"}) -- have packer manage itself
      use({ "nvim-lua/plenary.nvim"}) -- useful lua functions used by lots of plugins
      use({ "windwp/nvim-autopairs"}) -- autopairs, integrates with both cmp and treesitter
      use ("terrortylor/nvim-comment")
      use({ "joosepalviste/nvim-ts-context-commentstring"})
      use({ "kyazdani42/nvim-web-devicons"})
      -- use "lukas-reineke/indent-blankline.nvim"
      use({ "lewis6991/impatient.nvim"})
        
        use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
    end}
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
	-- Colorschemes
    use { "catppuccin/nvim", as = "catppuccin",}
    use { "ellisonleao/gruvbox.nvim" }
    use 'Shatur/neovim-ayu'
    use 'morhetz/gruvbox'
    use 'B4mbus/oxocarbon-lua.nvim'
    use "rebelot/kanagawa.nvim"
    use 'folke/tokyonight.nvim'
   --use { "ellisonleao/gruvbox.nvim" }

 --use 'LunarVim/darkplus.nvim'
 -- use {'shaunsingh/oxocarbon.nvim', run = './install.sh'}
    use {'glepnir/dashboard-nvim'}
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
-- require("packer").startup(function()
--     use "lukas-reineke/indent-blankline.nvim"
-- end)
	-- cmp plugins
	use({ "hrsh7th/nvim-cmp"}) -- The completion plugin
	use({ "hrsh7th/cmp-buffer"}) -- buffer completions
	use({ "hrsh7th/cmp-path"}) -- path completions
	use({ "saadparwaiz1/cmp_luasnip"}) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp"})
	use({ "hrsh7th/cmp-nvim-lua"})

	-- snippets
	use({ "L3MON4D3/LuaSnip"}) --snippet engine
	use({ "rafamadriz/friendly-snippets"}) -- a bunch of snippets to use

	-- LSP
	use({ "neovim/nvim-lspconfig"}) -- enable LSP
	use({ "williamboman/nvim-lsp-installer"}) -- simple to use language server installer
	use({ "jose-elias-alvarez/null-ls.nvim"}) -- for formatters and linters

	-- Telescope
	use({ "nvim-telescope/telescope.nvim"})

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
	})

 -- Lua
use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
        {
            position = "bottom", -- position of the list can be: bottom, top, left, right
            height = 10, -- height of the trouble list when position is top or bottom
            width = 50, -- width of the list when position is left or right
            icons = true, -- use devicons for filenames
            mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
            fold_open = "", -- icon used for open folds
            fold_closed = "", -- icon used for closed folds
            group = true, -- group results by file
            padding = true, -- add an extra new line on top of the list
            action_keys = { -- key mappings for actions in the trouble list
                -- map to {} to remove a mapping, for example:
                -- close = {},
                close = "q", -- close the list
                cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
                refresh = "r", -- manually refresh
                jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
                open_split = { "<c-x>" }, -- open buffer in new split
                open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
                open_tab = { "<c-t>" }, -- open buffer in new tab
                jump_close = {"o"}, -- jump to the diagnostic and close the list
                toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
                toggle_preview = "P", -- toggle auto_preview
                hover = "K", -- opens a small popup with the full multiline message
                preview = "p", -- preview the diagnostic location
                close_folds = {"zM", "zm"}, -- close all folds
                open_folds = {"zR", "zr"}, -- open all folds
                toggle_fold = {"zA", "za"}, -- toggle fold of current file
                previous = "k", -- previous item
                next = "j" -- next item
            },
            indent_lines = true, -- add an indent guide below the fold icons
            auto_open = false, -- automatically open the list when you have diagnostics
            auto_close = false, -- automatically close the list when you have no diagnostics
            auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
            auto_fold = false, -- automatically fold a file trouble list at creation
            auto_jump = {"lsp_definitions"}, -- for the given modes, automatically jump if there is only a single result
            signs = {
                -- icons / text used for a diagnostic
                error = "",
                warning = "",
                hint = "",
                information = "",
                other = "﫠"
            },
            use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
        }
    }
  end
}   -- TODO-Comment
-- Git

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
