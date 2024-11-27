return {
  'NvChad/nvterm',
  config = function()
    local new_width = 0.8
    local new_height = 0.7

    require('nvterm').setup({
      terminals = {
        shell = vim.o.shell,
        list = {},
        type_opts = {
          float = {
            relative = 'editor',
            row = (1 - new_height) / 2 - 0.02,
            col = (1 - new_width) / 2,
            width = new_width,
            height = new_height,
            border = "single",
          },
          horizontal = { location = "rightbelow", split_ratio = .3, },
          vertical = { location = "rightbelow", split_ratio = .5 },
        }
      }
    })
  end,
}
