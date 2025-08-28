-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<C-n>', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<C-n>'] = 'close_window', -- use same key inside Neo-tree to close
        },
      },
    },
  },
}
