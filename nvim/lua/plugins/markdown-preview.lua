return {
    "iamcco/markdown-preview.nvim",
    cmd = {
        "MarkdownPreviewToggle",
        "MarkdownPreview",
        "MarkdownPreviewStop"
    },
    build = "cd app && yarn install", -- had to do it manually ~/.local/share/nvim/lazy/markdown-preview.nvim/app
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = {
        "markdown"
    },
}
