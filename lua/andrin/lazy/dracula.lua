return {
    "Mofiqul/dracula.nvim",
    priority = 1000,
    config = function()
        local dracula = require("dracula")

        dracula.setup({
            -- enable transparent background
            transparent_bg = true,
            -- display italic (set to false based on your previous config)
            italic_comment = false,
        })

        vim.cmd([[colorscheme dracula]])

        -- Force transparency for specific UI elements if needed
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    end
}

