local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
	    enable = true, -- false will disable the whole extension
	    disable = { "css" }, -- list of language that will be disabled
    },
    autopairs = {
	    enable = true,
    },
    autotag = {
	enable = true,
    },
    indent = { enable = true, disable = { "python", "css", "cpp", "c" } },
    rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
  }
})
