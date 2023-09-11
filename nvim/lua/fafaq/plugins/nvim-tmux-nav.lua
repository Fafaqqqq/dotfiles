local M = {}

table.insert(M, 'alexghergh/nvim-tmux-navigation')

M.config = function()
  local navigator = require('nvim-tmux-navigation')

  navigator.setup {
    disable_when_zoomed = true, -- defaults to false
    keybindings = {
      left = "<C-h>",
      down = "<C-j>",
      up = "<C-k>",
      right = "<C-l>",
      last_active = "<C-\\>",
      next = "<C-Space>",
    }
  }
end

return M

