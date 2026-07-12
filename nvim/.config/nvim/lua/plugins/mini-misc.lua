return {
    {
        "echasnovski/mini.misc",
        version = false, -- Use the latest development version
        config = function()
            -- Initialize the plugin
            require("mini.misc").setup()

            -- Specifically enable terminal background synchronization
            -- This is what hides the "gap" by matching terminal and Neovim backgrounds
            require("mini.misc").setup_termbg_sync()
        end,
    },
}
