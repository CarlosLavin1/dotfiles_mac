return {
  "nvimtools/none-ls.nvim",
  dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.erb_lint,
        require("none-ls.diagnostics.eslint"),
        require("none-ls.code_actions.eslint"),
        null_ls.builtins.code_actions.refactoring,
        null_ls.builtins.formatting.black
      },
    })
    vim.keymap.set("n", "<C-s>", vim.lsp.buf.format, {})
  end,
}
