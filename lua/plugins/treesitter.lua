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

      -- the main branch no longer enables highlighting itself; start it per buffer
      vim.api.nvim_create_autocmd('FileType', {
        group = vim.api.nvim_create_augroup('treesitter-highlight', { clear = true }),
        callback = function(event)
          pcall(vim.treesitter.start, event.buf)
        end,
      })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
