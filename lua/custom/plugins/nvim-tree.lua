return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Icônes pour les fichiers et dossiers
  config = function()
    require('nvim-tree').setup {
      -- Configuration par défaut ou personnalisée
      view = {
        width = 30,
        side = 'left',
      },
      renderer = {
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },
      git = {
        enable = true,
      },
    }
  end,
}
