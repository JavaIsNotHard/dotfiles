local icons = require "jibesh.icons"
local actions = require "telescope.actions"
require("telescope").setup {
  defaults = {
    prompt_prefix = icons.ui.Telescope .. " ",
    selection_caret = icons.ui.Forward .. " ",
    entry_prefix = "   ",
    initial_mode = "insert",
    selection_strategy = "reset",
    path_display = { "smart" },
    color_devicons = true,
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--hidden",
      "--glob=!.git/",
    },

    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
      n = {
        ["<esc>"] = actions.close,
        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["q"] = actions.close,
      },
    },
  },
  pickers = {
    live_grep = {
    },

    grep_string = {
    },

    find_files = {
      previewer = true,
    },

    buffers = {
      previewer = true,
      initial_mode = "normal",
      mappings = {
        i = {
          ["<C-d>"] = actions.delete_buffer,
        },
        n = {
          ["dd"] = actions.delete_buffer,
        },
      },
    },

    planets = {
      show_pluto = true,
      show_moon = true,
    },

    colorscheme = {
      enable_preview = true,
    },

    lsp_references = {
      initial_mode = "normal",
    },

    lsp_definitions = {
      initial_mode = "normal",
    },

    lsp_declarations = {
      initial_mode = "normal",
    },

    lsp_implementations = {
      initial_mode = "normal",
    },
  },
  extensions = {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
    },
  },
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>fp', function()
	builtin.grep_string({search = vim.fn.input("Grep >") });
end)
