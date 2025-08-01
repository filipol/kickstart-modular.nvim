return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'ordinal', -- Prefix buffers with ordinal numbers (1, 2, 3, etc.)
        -- separator_style = 'slant', -- Sloped style for tab separators
        enforce_regular_tabs = true, -- Force all tabs to have consistent width
        tab_size = 20, -- Fixed width for each tab
        always_show_bufferline = false, -- Hide bufferline when only one buffer is open
        diagnostics = 'nvim_lsp', -- Enable diagnostics from LSP
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match 'error' and ' ' or ' '
          return ' ' .. icon .. count
        end,
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'center',
            separator = true,
          },
        },
      },
      highlights = {
        fill = {
          bg = '#252931', -- Background color for the fill area
        },
        background = {
          fg = '#abb2bf', -- Default foreground color for unselected tabs
          bg = '#2c323d', -- Background color for unselected tabs
        },
        tab_selected = {
          fg = '#ffffff', -- Foreground color for the selected tab
          bg = '#61afef', -- Background color for the selected tab
          bold = true, -- Make selected tab stand out
        },
        tab = {
          fg = '#abb2bf', -- Foreground color for unselected tabs
          bg = '#2c323d', -- Background color for unselected tabs
        },
        separator = {
          fg = '#3e4451', -- Color for the slant separator
          bg = '#252931', -- Background to match the fill area
        },
        separator_selected = {
          fg = '#61afef', -- Color for the selected tab's separator
          bg = '#252931', -- Background to match the fill area
        },
        offset_separator = {
          fg = '#3e4451',
          bg = '#252931',
        },
        indicator_selected = {
          fg = '#61afef', -- Indicator color for the selected tab
          bg = '#252931',
        },
      },
    }

    -- Keymappings to jump to buffers by ordinal number
    local map = vim.keymap.set
    for i = 1, 9 do
      map('n', '<leader>' .. i, '<Cmd>BufferLineGoToBuffer ' .. i .. '<CR>', { desc = 'Go to buffer ' .. i })
    end
  end,
}
