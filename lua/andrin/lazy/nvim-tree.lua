return {
    "nvim-tree/nvim-tree.lua",
    version = "1.*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- Required globals for nvim-tree to replace netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            -- Auto-close when opening a file
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
            -- Sync tree with the current active buffer
            update_focused_file = {
                enable = true,
            },
            filters = {
                dotfiles = false,
            },
            git = {
                enable = true,
                ignore = false,
            },
            renderer = {
                highlight_git = true,
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        git = true,
                    },
                },
            },
        })

        -- Mapping: MasterKey (Leader) + e
        vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {
            noremap = true,
            silent = true,
            desc = "Toggle File Explorer"
        })
    end
}

