return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon.setup {}

    vim.keymap.set('n', '<leader>hh', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon Toggle' })

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = 'Harpoon Add' })

    -- vim.keymap.set('n', '<leader>hc', function()
    --   harpoon:list():clear()
    -- end, { desc = 'harpoon Clear' })

    -- vim.keymap.set('n', '<leader>hd', function()
    -- end, { desc = 'harpoon Remove Item' })
    -- vim.keymap.set('n', '<C-h>', function()
    --   harpoon:list():select(1)
    -- end)
    -- vim.keymap.set('n', '<C-t>', function()
    --   harpoon:list():select(2)
    -- end)
    -- vim.keymap.set('n', '<C-n>', function()
    --   harpoon:list():select(3)
    -- end)
    -- vim.keymap.set('n', '<C-s>', function()
    --   harpoon:list():select(4)
    -- end)

    -- Toggle previous & next buffers stored within Harpoon list
    -- vim.keymap.set('n', '<C-l>', function()
    --   harpoon:list():prev()
    -- end, { desc = 'Harpoon next buffer' })
    -- vim.keymap.set('n', '<C-h>', function()
    --   harpoon:list():next()
    -- end, { desc = 'Harpoon prev buffer' })
  end,
}
