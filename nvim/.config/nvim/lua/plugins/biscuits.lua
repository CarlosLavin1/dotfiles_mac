return {
	"code-biscuits/nvim-biscuits",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		-- Config goes here
		default_config = {
			max_length = 20,
			min_distance = 5,
			prefix_string = " 🍪 ",
            show_on_start = false,
            toggle_keybind = "<leader>sb"
		},
	},
}
