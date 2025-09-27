-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "github_light",

    hl_override = {
        Comment = { italic = true },
        ["@comment"] = { italic = true },
        ["@ibl.scope.underline.1"] = { underline = true, bg = "NONE" },
        ["@ibl.scope.underline.2"] = { underline = true, bg = "NONE" },
        ["@ibl.scope.underline.3"] = { underline = true, bg = "NONE" },
        ["@ibl.scope.underline.4"] = { underline = true, bg = "NONE" },
        ["@ibl.scope.underline.5"] = { underline = true, bg = "NONE" },
        ["@ibl.scope.underline.6"] = { underline = true, bg = "NONE" },
        ["@ibl.scope.underline.7"] = { underline = true, bg = "NONE" },
    },
}

M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

M.mason = {
    pkgs = {
        "css-lsp",
        "html-lsp",
        "prettier",
        "lua-language-server",
        "stylua",
        "pyright",
        "flake8",
        "black",
        "isort",
        "clangd",
    },
}
return M
