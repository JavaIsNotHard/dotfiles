local M = {}

M.ui = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "chadracula-evondev", -- default theme
  -- theme = "material-darker", -- default theme
  -- theme = "",
  transparency = false,

  cmp = {
    enabled = true,
    icons = true,
    lspkind_text = true,
    style = "flat_dark", -- default/flat_light/flat_dark/atom/atom_colored
  },

  --telescope = { style = "borderless" }, -- borderless / bordered
  telescope = { style = "bordered" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    -- theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil,
    modules = nil,
    enabled = false,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = false,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },

  nvdash = {
    load_on_startup = false,

    header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

  cheatsheet = { theme = "grid" }, -- simple/grid

  lsp = {
    signature = true,
    semantic_tokens = false,
  },

  term = {
    -- hl = "Normal:term,WinSeparator:WinSeparator",
    sizes = { sp = 0.3, vsp = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },
}

M.base46 = {
  integrations = {
    "blankline",
    "cmp",
    "defaults",
    "devicons",
    "git",
    "lsp",
    "mason",
    "nvcheatsheet",
    "nvdash",
    "nvimtree",
    "statusline",
    "syntax",
    "treesitter",
    -- "tbline",
    "telescope",
    "whichkey",
  },
}

return M
