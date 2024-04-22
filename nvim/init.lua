require("jibesh.lazy")
require("jibesh.set")
require('jibesh.remap')
require('jibesh.autocommands')

vim.g.base46_cache = vim.fn.stdpath('data') .. '/base46_cache/'
--
-- -- or if you want to load all base46 integrations at startup itself
--
--dofile(vim.g.base46_cache .. "defaults")
--dofile(vim.g.base46_cache .. "statusline")
-- dofile(vim.g.base46_cache .. "git")
--dofile(vim.g.base46_cache .. "syntax")
--dofile(vim.g.base46_cache .. "treesitter")
--dofile(vim.g.base46_cache .. "telescope")
dofile(vim.g.base46_cache .. "cmp")
