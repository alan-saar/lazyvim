-- estou colando aqui as receitas do lazyvim para sobrescrever algumas configs padrão da distribuição
return {
  -- essa receita é para usar o <tab> para acionar o autocomplete.
  -- Tenho problemas ao chegar no final de uma linha e apertar enter, e no lugar de ir para proxima linha ele autocompleta alguma coisa
  -- {
  -- se for usasr o cmp
  --  http://www.lazyvim.org/configuration/recipes#supertab
  -- se for usar o blink
  {
    "saghen/blink.cmp",
    ---@class PluginLspOpts
    opts = {
      signature = { enabled = true },
      keymap = {
        preset = "super-tab",
      },
    },
  },
}
