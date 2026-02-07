-- lua/plugins/noice.lua
-- holden testing 2025-10-25
return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      -- this is getting on my fucking nerves
      -- "rcarriga/nvim-notify", -- optional, enables the "notify" view
      -- let's see if snacks backend annoysme less...
      {
        "folke/snacks.nvim", -- optional, enables the "notify" view
        lazy = false,
      },
      "nvim-lualine/lualine.nvim", -- for the statusline integration
    },
    opts = {}, -- you can leave this empty if using config
    config = function()
      local noice = require("noice")

      noice.setup({
        routes = {
          {
            view = "notify",
            filter = {
              event = "msg_showmode", -- matches @recording messages
            },
          },
        },
      })

      require("lualine").setup({
        sections = {
          lualine_x = {
            {
              require("noice").api.status.mode.get,
              cond = require("noice").api.status.mode.has,
              color = { fg = "#ff9e64" },
            },
          },
        },
      })
    end,
  },
}
-- lazy.nvim
-- holden testing 2025-10-25
--
-- return {
-- -- lazy.nvim
--   {
--     "folke/noice.nvim",
--     event = "VeryLazy",
--     opts = {
--       -- add any options here
--     -- noice = require("noice")
--     local noice.setup({
--     routes = {
--       {
--         view = "notify",
--         filter = { event = "msg_showmode" },
--       },
--     },
--     })
--     },
--     dependencies = {
--       -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
--       "MunifTanjim/nui.nvim",
--       -- OPTIONAL:
--       --   `nvim-notify` is only needed, if you want to use the notification view.
--       --   If not available, we use `mini` as the fallback
--       "rcarriga/nvim-notify",
--       }
--   }
-- }
