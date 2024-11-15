-- ~/.config/nvim/lua/plugins/flutter_plugins.lua
return {
  -- Plugin hỗ trợ Flutter
  { "akinsho/flutter-tools.nvim", requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" } },
  { "dart-lang/dart-vim-plugin" },  -- Plugin hỗ trợ Dart
  { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } },  -- Plugin tìm kiếm
  -- { "williamboman/mason.nvim", opts = { ensure_installed = { "dartls", "flutter" } } },  -- Tự động cài LSP và các công cụ hỗ trợ Flutter

  -- -- LSP cho Flutter
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     -- Cấu hình LSP cho Flutter và Dart
  --     require('lspconfig').dartls.setup{}
  --   end
  -- },

}