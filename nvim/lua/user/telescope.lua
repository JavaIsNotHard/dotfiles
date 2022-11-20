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
    file_ignore_patterns = {
      "%.jpg",
      "%.jpeg",
      "%.png",
      "%.otf",
      "%.ttf",
      "node_modules",
    },
    prompt_prefix = "  ",
    selection_caret = "  ",
    entry_prefix = "  ",
    layout_strategy = "flex",
    layout_config = {
      horizontal = {
        preview_width = 0.6,
      },
    },
    border = {},
    borderchars = { " ", " ", " ", " ", " ", " ", " ", " " },
    -- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    -- borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  },
}
