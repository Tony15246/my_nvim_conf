local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettier" },
        html = { "prettier" },
        python = { "black", "isort" },
    },

    formatters = {
        black = {
            prepend_args = {
                "--line-length",
                "80",
            },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
}

return options
