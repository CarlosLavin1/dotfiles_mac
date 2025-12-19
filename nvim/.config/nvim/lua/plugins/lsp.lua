return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			--local lspconfig = require("lspconfig")
			vim.lsp.config("ts_ls", {capabilities = capabilities})
			vim.lsp.enable("ts_ls")

			vim.lsp.config("lua_ls", {capabilities = capabilities})
			vim.lsp.enable("lua_ls")

			vim.lsp.config("eslint", {capabilities = capabilities})
			vim.lsp.enable("eslint")

			vim.lsp.config("pyright", { capabilities = capabilities })
			vim.lsp.enable("pyright")

			vim.lsp.config("rust_analyzer", {})
			vim.lsp.enable("rust_analyzer")

			vim.lsp.config("jdtls", {})
			vim.lsp.enable("jdtls")
			--lspconfig.ts_ls.setup({
			--    capabilities = capabilities,
			--})
			--lspconfig.lua_ls.setup({
			--    capabilities = capabilities,
			--})
			--lspconfig.html.setup({
			--    capabilities = capabilities,
			--})
			--lspconfig.eslint.setup({
			--    capabilities = capabilities,
			--})
			--lspconfig.pyright.setup({
			--    capabilities = capabilities,
			--})
			--lspconfig.basedpyright.setup({
			--    capabilities = capabilities,
			--})
			--lspconfig.clangd.setup({
			--    capabilities = capabilities,
			--})
			--lspconfig.rust_analyzer.setup({
			--    capabilities = capabilities,
			--})

			vim.keymap.set("n", "<C-i>", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set({ "n", "v" }, "<leader>sd", "<cmd>lua vim.diagnostic.open_float()<CR>", {})

			vim.diagnostic.config({
				-- update_in_insert = true,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			})
		end,
	},
	-- tailwind plugin
	--    {
	--        "luckasRanarison/tailwind-tools.nvim",
	--        name = "tailwind-tools",
	--        build = ":UpdateRemotePlugins",
	--        dependencies = {
	--            "nvim-treesitter/nvim-treesitter",
	--            "nvim-telescope/telescope.nvim",
	--            "neovim/nvim-lspconfig",
	--        },
	--        opts = {},
	--    },
}
