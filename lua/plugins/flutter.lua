return {
    {'nvim-lua/plenary.nvim'},
    {
        'stevearc/dressing.nvim',
        opts = {},
      },
    {'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function()
        require("flutter-tools").setup{
            flutter_path = "C:/flutter/bin/flutter.bat",
        }
    end,
},
{
    'akinsho/pubspec-assist.nvim',
    requires = 'plenary.nvim',
    config = function()
      require('pubspec-assist').setup()
    end,
  }
}
