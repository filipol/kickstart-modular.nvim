return {
  'jiaoshijie/undotree',
  dependencies = 'nvim-lua/plenary.nvim',
  config = function()
    local undo = require 'undotree'
    undo.setup {}

    vim.keymap.set('n', '<leader>u', "<cmd>lua require('undotree').toggle()<cr>", { desc = 'Undotree Toggle' })
  end,
}
