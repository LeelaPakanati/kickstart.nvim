return {
    {
        'kelly-lin/ranger.nvim',
        config = function()
            local ranger = require("ranger-nvim")
            ranger.setup({
                replace_netrw = true
            })
            vim.api.nvim_set_keymap("n", "<C-o>", "", {
                noremap = true,
                callback = function()
                    ranger.open(true)
                end,
            })
        end,
    }

}
