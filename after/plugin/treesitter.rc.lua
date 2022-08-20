local status, ts = pcall(require,'nvim-treesitter.configs')

if (not status) then return end

require('nvim-treesitter.install').compilers = { "clang" }

ts.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {}
  },
  ensure_installed = {
    "tsx",
    "html",
    "css",
    "scss",
    "json",
    "go",
    "python",
    "lua",
    "yaml",
    "dockerfile",
    "solidity",
    "rust"
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

