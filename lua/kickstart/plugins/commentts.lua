return {
  'JoosepAlviste/nvim-ts-context-commentstring',
  config = function()
    local commentts = require 'ts_context_commentstring'
    commentts.setup {
      enable_autocmd = false,
    }
  end,
}
