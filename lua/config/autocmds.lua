-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Cria o comando personalizado :OpenWithFirefox para abrir arquivos-md
vim.api.nvim_create_user_command("OpenWithFirefox", function()
  local file = vim.fn.expand("%:p")
  -- Executa o comando em segundo plano para não travar o Neovim
  vim.fn.jobstart({ "firefox", file })
end, { desc = "Abre o arquivo atual no Firefox" })
