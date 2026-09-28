return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        -- pcall (protected call) prevents the startup error
        local status, configs = pcall(require, "nvim-treesitter.configs")
        if not status then
            return
        end

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "python", "typescript" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}

