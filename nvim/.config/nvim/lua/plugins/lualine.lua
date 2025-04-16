return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = "rose-pine",
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = { "NeoTree" },
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = { "grapple" },
                lualine_c = {'filename', 'branch', 'diff', 'diagnostics'},
            },
        })
    end,
}
