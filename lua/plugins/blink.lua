-- se quiser desabilitar o enter automatico
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      -- Disable <CR> (Enter) for completion, or set it to only confirm if selected
      ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
      list = {
        selection = {
          preselect = false, -- Don't automatically highlight the first item
          auto_insert = false,
        },
      },
    },
  },
}

-- isso aqui é só para o popoup não ficar pulando toda hora, só quando apertar ctrl+espaco
-- return {
--   {
--     "saghen/blink.cmp",
--     opts = {
--       completion = {
--         -- Impede que o menu abra automaticamente ao digitar palavras normais
--         show_on_keyword = false,
--         -- Impede que o menu abra ao digitar caracteres especiais (como pontos)
--         show_on_trigger_character = false,
--       },
--     },
--   },
-- }
