require("telescope").setup{
  defaults = {
    mappings = {
      n = {
    	  ['<c-d>'] = require('telescope.actions').delete_buffer
      }, -- n
      i = {
        ['<c-d>'] = require('telescope.actions').delete_buffer
      } -- i
    },
 },
 extensions = {

 },
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fp', function()
	builtin.grep_string({search = vim.fn.input("Grep >") });
end)
