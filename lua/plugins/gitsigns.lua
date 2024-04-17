return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local config = require("gitsigns")
    config.setup({
      signcolumn = true,
      current_line_blame = true,
    })
  end,
}
