return {
    "3rd/image.nvim",
    dependencies = {
      {
          "vhyrro/luarocks.nvim",
          priority = 1001, -- this plugin needs to run before anything else
          opts = {
              rocks = { "magick" },
          },
      },
    },
    config = function()
        -- image nvim options table. Pass to `require('image').setup`
        -- {
        --     backend = "kitty", -- Kitty will provide the best experience, but you need a compatible terminal
        --     integrations = {}, -- do whatever you want with image.nvim's integrations
        --     max_width = 100, -- tweak to preference
        --     max_height = 12, -- ^
        --     max_height_window_percentage = math.huge, -- this is necessary for a good experience
        --     max_width_window_percentage = math.huge,
        --     window_overlap_clear_enabled = true,
        --     window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        -- },

        -- default config
        -- require("image").setup({
        --     backend = "kitty",
        --     integrations = {
        --         markdown = {
        --             enabled = true,
        --             clear_in_insert_mode = false,
        --             download_remote_images = true,
        --             only_render_image_at_cursor = false,
        --             filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
        --         },
        --         neorg = {
        --             enabled = true,
        --             clear_in_insert_mode = false,
        --             download_remote_images = true,
        --             only_render_image_at_cursor = false,
        --             filetypes = { "norg" },
        --         },
        --         html = {
        --             enabled = false,
        --         },
        --         css = {
        --             enabled = false,
        --         },
        --     },
        --     max_width = nil,
        --     max_height = nil,
        --     max_width_window_percentage = nil,
        --     max_height_window_percentage = 50,
        --     window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
        --     window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        --     editor_only_render_when_focused = false, -- auto show/hide images when the editor gains/looses focus
        --     tmux_show_only_in_active_window = false, -- auto show/hide images in the correct Tmux window (needs visual-activity off)
        --     hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" }, -- render image files as images when opened
        -- })

        require("image").setup({
          backend = "kitty", -- Kitty will provide the best experience, but you need a compatible terminal
          integrations = {}, -- do whatever you want with image.nvim's integrations
          max_width = 100, -- tweak to preference
          max_height = 12, -- ^
          max_height_window_percentage = math.huge, -- this is necessary for a good experience
          max_width_window_percentage = math.huge,
          window_overlap_clear_enabled = true,
          window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
        })
    end
}
