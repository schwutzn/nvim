return {
  {
    'roobert/tailwindcss-colorizer-cmp.nvim',
    config = function()
      require('tailwindcss-colorizer-cmp').setup {
        color_square_width = 2,
      }
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
