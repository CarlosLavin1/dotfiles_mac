return {
	{ "nvim-tree/nvim-web-devicons", opts = {} },
	{
		"cbochs/grapple.nvim",
		opts = {
			scope = "git", -- also try out "git_branch"
			icons = true, -- setting to "true" requires "nvim-web-devicons"
			status = false,
		},
		keys = {
			{ "<leader>t", "<cmd>Grapple toggle<cr>", desc = "Tag a file" },
			{ "<C-e>", "<cmd>Grapple toggle_tags<cr>", desc = "Toggle tags menu" },

			{ "<leader>1", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
			{ "<leader>2", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
			{ "<leader>3", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
			{ "<leader>4", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
			{ "<leader>5", "<cmd>Grapple select index=5<cr>", desc = "Select fifth tag" },

			{ "<c-s-n>", "<cmd>Grapple cycle_tags next<cr>", desc = "Go to next tag" },
			{ "<c-s-p>", "<cmd>Grapple cycle_tags prev<cr>", desc = "Go to previous tag" },
		},
	},
}
