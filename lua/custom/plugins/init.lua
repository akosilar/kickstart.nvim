-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    config = function()
      require('harpoon').setup()

      vim.keymap.set('n', '<leader>a', function()
        require('harpoon.mark').add_file()
      end, { desc = 'Harpoon: Add file' })
      vim.keymap.set('n', '<C-e>', function()
        require('harpoon.ui').toggle_quick_menu()
      end, { desc = 'Harpoon: Toggle menu' })
      vim.keymap.set('n', '<C-h>', function()
        require('harpoon.ui').nav_file(1)
      end)
      vim.keymap.set('n', '<C-j>', function()
        require('harpoon.ui').nav_file(2)
      end)
      vim.keymap.set('n', '<C-k>', function()
        require('harpoon.ui').nav_file(3)
      end)
      vim.keymap.set('n', '<C-l>', function()
        require('harpoon.ui').nav_file(4)
      end)
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end,
  },
}
