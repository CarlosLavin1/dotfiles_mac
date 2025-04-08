return {
    "rose-pine/neovim",
	  name = "rose-pine",
    extended_background_behind_borders = true,
    disable_background = true,
    disable_float_background = true,
    enable = {
      terminal = true
    },
    priority = 1000,
	  config = function()
		  vim.cmd("colorscheme rose-pine")

      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })          -- Main background
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })     -- Floating windows
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })      -- Gutter (for Git signs)
      vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })          -- Line numbers
      vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
	  end
}
