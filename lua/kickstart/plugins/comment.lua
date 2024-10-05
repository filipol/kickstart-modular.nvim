-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
  'numToStr/Comment.nvim',
  opts = {
    -- add any options here
  },
  config = function()
    local comment = require 'Comment'
    local hook = require 'ts_context_commentstring.integrations.comment_nvim'
    comment.setup {
      pre_hook = hook.create_pre_hook(),
    }
  end,
}
