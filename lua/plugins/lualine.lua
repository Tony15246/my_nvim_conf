return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "nord",
            },
            sections = {
                lualine_x = {
                    {
                        require("noice").api.statusline.mode.get,
                        cond = function()
                            return require("noice").api.statusline.mode.has()
                                and string.find(require("noice").api.statusline.mode.get(), "recording") ~= nil
                        end,
                        color = { fg = "#ff9e64" },
                    },
                    {
                        "%S", -- 显示部分命令的组件
                    },
                },
            },
        })

        vim.o.showcmdloc = "statusline"
    end,
}
