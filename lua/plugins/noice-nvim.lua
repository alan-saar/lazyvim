return {
  "folke/noice.nvim",
  event = "VeryLazy",
  -- Problema do inlay_hint.lua:366: Invalid 'col': out of range
  -- ou desabilita o inlay_int com <leader>uh ou desabilita as mensgens de erro
  -- REMOVE THIS once this issue is fixed: https://github.com/yioneko/vtsls/issues/159
  opts = {
    routes = {
      {
        filter = {
          event = "notify",
          find = "Request textDocument/inlayHint failed",
        },
        opts = { skip = true },
      },
    },
  },
}
