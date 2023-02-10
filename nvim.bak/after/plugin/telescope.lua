local present, telescope = pcall(require, "telescope")

if not present then
  return
end

telescope.setup {
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
}
