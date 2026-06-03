return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      if vim.fn.executable 'gcc' == 1 then
        vim.env.CC = 'gcc' -- used by `tree-sitter build`
      end
      require('nvim-treesitter').install { 'html', 'css', 'tsx', 'json', 'go', 'powershell' }
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
