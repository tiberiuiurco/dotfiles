local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = "all",
    sync_install = false,
    ignore_install = { "" },
    matchup = {
      enable = true
    },
    highlight = {
        enable = true,
        -- disable = { "html" }
    },
    -- ...
    rainbow = {
      enable = true,
      -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
      disable = { "" },
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      -- colors = {}, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
    }
}
