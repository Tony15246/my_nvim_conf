require("lint").linters_by_ft = {
    python = { "flake8" },
}

vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "TextChanged", "BufWritePost" }, {
    callback = function()
        require("lint").try_lint()
    end,
})
