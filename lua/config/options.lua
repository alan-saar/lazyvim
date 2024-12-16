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

-- vim better whitespaces
vim.g.better_whitespace_enabled = 0 -- desabilitei porque não gosto do vermelho, prefiro do jeito do kickstart
vim.g.strip_whitespace_on_save = 1 -- esse aqui só funciona setando na marra, não consegui usando meu comando :AutoFormatEnableTrailing

-- memento mori
vim.g.memento_mori_birthdate = "1982-07-23"
-- comando para mostrar github.com/alan-saar/mementoMori no firefox
vim.api.nvim_create_user_command(
  "MementoMoriWeb",
  "!firefox ~/workspace/mementoMori/simple/memento_mori.html",
  { bang = true }
)

vim.opt.spelllang = { "en", "br", "pt_br" }
