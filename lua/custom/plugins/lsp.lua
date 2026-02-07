return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      {
        'mason-org/mason.nvim',
        opts = {},
      },
      'mason-org/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      'saghen/blink.cmp',
    },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local servers = {
        mason = {
          lua_ls = {
            settings = {
              Lua = {
                completion = { callSnippet = 'Replace' },
              },
            },
          },

          -- your qmlls in local venv
          qmlls = {
            cmd = {
              -- vim.fn.expand('~/thrive/repos/EC-develop-upstream/cell_eval/.venv/bin/pyside6-qmlls'),
              vim.fn.expand('~/thrive/repos/cell_eval/.venv/bin/pyside6-qmlls'),
              -- vim.fn.expand('~/thrive/repos/cell_eval/.venv/lib/python3.13/site-packages/PySide6/qmlls'),
              -- vim.fn.expand('./.venv/bin/pyside6-qmlls'),
            },
            filetypes = { 'qml' },
            single_file_support = true,
          },
        },

        others = {
          -- servers not installed via Mason, e.g. system clangd if you want
        },
      }

      local ensure_installed = vim.tbl_keys(servers.mason or {})
      vim.list_extend(ensure_installed, { 'stylua' })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      for server, config in pairs(vim.tbl_extend('keep', servers.mason, servers.others)) do
        if not vim.tbl_isempty(config) then
          vim.lsp.config(server, config)
        end
      end

      require('mason-lspconfig').setup {
        ensure_installed = {},
        automatic_enable = true,
      }

      if not vim.tbl_isempty(servers.others) then
        vim.lsp.enable(vim.tbl_keys(servers.others))
      end
    end,
  },
}

