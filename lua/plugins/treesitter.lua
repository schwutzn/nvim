return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').install { 'html', 'css', 'tsx', 'json', 'go', 'powershell' }
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
