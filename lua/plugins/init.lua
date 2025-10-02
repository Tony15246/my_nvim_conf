return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre", -- uncomment for format on save
        opts = require("configs.conform"),
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("configs.lint")
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lspconfig")
        end,
    },

    { import = "nvchad.blink.lazyspec" },

    {
        "Saghen/blink.cmp",
        opts = require("configs.blink"),
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "python",
                "javascript",
                "java",
                "bash",
                "json",
                "json5",
                "html",
                "css",
                "csv",
                "c_sharp",
                "cmake",
                "vim",
                "vimdoc",
                "regex",
                "query",
                "markdown",
                "markdown_inline",
            },
        },
    },
}
