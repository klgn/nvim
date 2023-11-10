return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = "catppuccin",
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' }
      },
      extensions = {
        'nvim-tree',
      },
      tabline = {
        lualine_a = {
          {
            'buffers',
            show_filename_only = true,   -- Shows shortened relative path when set to false.
            hide_filename_extension = false,   -- Hide filename extension when set to true.
            show_modified_status = true, -- Shows indicator when the buffer is modified.
            mode = 0, -- 0: Shows buffer name
            max_length = vim.o.columns * 2 / 3, -- Maximum width of buffers component,
        --     -- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
            use_mode_colors = false,
            -- buffers_color = {
              -- Same values as the general color option can be used here.
              -- active = 'lualine_{section}_normal',     -- Color for active buffer.
              -- inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
            -- },
            symbols = {
              modified = ' ●',      -- Text to show when the buffer is modified
              alternate_file = '', -- Text to show to identify the alternate file
              directory =  '',     -- Text to show when the buffer is a directory
            },
          },
        },
      },
      sections = {
        lualine_b = {'branch'},
        lualine_c = {},
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
