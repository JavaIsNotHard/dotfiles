require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require('nvim_comment').setup()
require "user.impatient"
require "user.toggleterm"
--require('lualine').setup()
-- require("indent_blankline").setup {
--     -- for example, context is off by default, use this to turn it on
--     show_current_context = false,
--     show_current_context_start = false,
-- }
require "user.autocommands"
require "user.whichkey"
require "user.dashboard"

--
-- vim.cmd [[hi LineNr guibg=none ctermbg=none]]
-- vim.cmd [[hi Folded guibg=none ctermbg=none]]
-- vim.cmd [[hi NonText guibg=none ctermbg=none]]
-- vim.cmd [[hi SpecialKey guibg=none ctermbg=none]]
-- vim.cmd [[hi VertSplit guibg=none ctermbg=none]]
-- vim.cmd [[hi EndOfBuffer guibg=none ctermbg=none]]
-- vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
--
