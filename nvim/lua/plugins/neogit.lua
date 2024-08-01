return {
    "NeogitOrg/neogit",
    keys = {
        { "<leader>ng", "<cmd>Neogit<cr>", desc = "Neogit" }
    },
    config = function()
        require("neogit").setup({})
    end,
}
