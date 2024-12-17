return {
  "ntpeters/vim-better-whitespace",
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/vimwiki",
          syntax = "default",
          ext = ".wiki",
        },
      }
    end,
  },
  "tpope/vim-vinegar",
  "Leonidas-from-XIV/memento-mori.nvim",
  {
    "kelly-lin/ranger.nvim",
    config = function()
      require("ranger-nvim").setup({
        replace_netrw = false,
      })
      vim.api.nvim_set_keymap("n", "<leader>fm", "Ranger [f]ile [manager]", {
        noremap = true,
        callback = function()
          require("ranger-nvim").open(true)
        end,
      })
    end,
  },
}
