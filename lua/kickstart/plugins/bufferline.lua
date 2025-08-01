return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'ordinal',
        offsets = {
          {
            filetype = 'neo-tree', -- Adjust this to match your sidebar plugin (e.g., 'neo-tree' for NeoTree)
            text = 'File Explorer', -- Optional: Text to display in the offset area
            text_align = 'center', -- Optional: Align the text (left, center, right)
            separator = true, -- Optional: Show a separator line
          },
        },
      },
    }

    -- Keymappings to jump to buffers by ordinal number
    local map = vim.keymap.set
    map('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', { desc = 'Go to buffer 1' })
    map('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', { desc = 'Go to buffer 2' })
    map('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', { desc = 'Go to buffer 3' })
    map('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', { desc = 'Go to buffer 4' })
    map('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', { desc = 'Go to buffer 5' })
    map('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', { desc = 'Go to buffer 6' })
    map('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', { desc = 'Go to buffer 7' })
    map('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', { desc = 'Go to buffer 8' })
    map('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', { desc = 'Go to buffer 9' })
  end,
}
