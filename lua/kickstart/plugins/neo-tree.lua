-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  -- temporarily pull from git head until https://github.com/nvim-neo-tree/neo-tree.nvim/pull/1918/files
  -- is a tagged version...
  -- version = '*',
  version = false, 
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
        --holden 2025-11-04 testing
      filtered_items = {
        visible = false,
        hide_gitignored = true,
        hide_by_pattern = {
            "*.o",
            "*.a",
            "*.bin",
            "*.d",
            },
        ignore_files = {
            ".ignore",
            ".neotreeignore",
            },
        },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
