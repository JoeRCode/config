return  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensured_installed ={"lua", "javascript", "html", "typescript"} ,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
}
