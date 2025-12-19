
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- close netrw if no text buffers open
local augroupnetrw = vim.api.nvim_create_augroup("CloseNetrw", { clear = true })
vim.api.nvim_create_autocmd("BufEnter", {
  group = augroupnetrw,
  pattern = "*",
  callback = function()
    if vim.fn.winnr('$') == 1 and vim.bo.filetype == "netrw" then
      vim.cmd('q')
    end
  end,
})

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup('HighlightYank', {})
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
--close netrw when last buffer is closed
vim.api.nvim_create_autocmd("BufDelete", {
  callback = function(event)
    vim.schedule(function()
      local bufs = vim.tbl_filter(function(bufnr)
        return vim.bo[bufnr].buflisted and vim.api.nvim_buf_is_loaded(bufnr)
      end, vim.api.nvim_list_bufs())

      if #bufs == 0 then
        vim.cmd("quit")
      end
    end)
  end,
})

require("options")
require("keybinds")
require("lazy").setup("plugins")

