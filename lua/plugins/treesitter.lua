return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { "c", "lua", "python", "javascript", "java", "bash", "json", "json5", "html", "css", "csv", "c_sharp", "cmake", "vim", "vimdoc", "regex", "query", "markdown", "markdown_inline" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
