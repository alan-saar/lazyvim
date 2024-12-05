-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = ","

-- não instalou o Treesitter ledger automaticamente, instalei com :TSInstall ledger
-- o commentário do ledger não estava funcionando, fiz um autocmd para o tipo do ledger (.journal)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "ledger" },
  command = "setlocal commentstring=;%s",
})
