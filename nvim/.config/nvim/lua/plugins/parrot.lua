return {}
--[[return {
	{
		"frankroeder/parrot.nvim",
		dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim", "folke/noice.nvim" },
		-- optionally include "folke/noice.nvim" or "rcarriga/nvim-notify" for beautiful notifications
		config = function()
			require("parrot").setup({
				-- Providers must be explicitly added to make them available.
				providers = {
					anthropic = {},
					gemini = {
						api_key = os.getenv("GEMINI_API_KEY"),
					},
					-- provide an empty list to make provider available (no API key required)
				},
			})
		end,
	},
}]]
