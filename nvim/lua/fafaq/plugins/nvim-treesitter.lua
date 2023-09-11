local M = {}

table.insert(M, 'nvim-treesitter/nvim-treesitter')
M.event = {
  "BufReadPre",
  "BufNewFile"
}
M.dependencies = {
  "windwp/nvim-ts-autotag"
}

M.config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          "json",
          "yaml",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "c",
          "cpp",
          "cmake",
          "gitignore",
        },
        -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
        -- auto install above language parsers
        auto_install = true,
      })
    end

return M
