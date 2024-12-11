return {
  {'mfussenegger/nvim-dap',
  config = function()
    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "Launch dart",
        dartSdkPath = "C:/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
        flutterSdkPath = "C:/flutter/bin/flutter",                  -- ensure this is correct
        program = "${workspaceFolder}/lib/main.dart",     -- ensure this is correct
        cwd = "${workspaceFolder}",
      },
      {
        type = "flutter",
        request = "launch",
        name = "Launch flutter",
        dartSdkPath = "C:/flutter/bin/cache/dart-sdk/bin/dart", -- ensure this is correct
        flutterSdkPath = "C:/flutter/bin/flutter",             -- ensure this is correct
        program = "${workspaceFolder}/lib/main.dart",     -- ensure this is correct
        cwd = "${workspaceFolder}",
      }
    }
    -- Dart CLI adapter (recommended)
    dap.adapters.dart = {
      type = 'executable',
      command = 'dart',    -- if you're using fvm, you'll need to provide the full path to dart (dart.exe for windows users), or you could prepend the fvm command
      args = { 'debug_adapter' },
      -- windows users will need to set 'detached' to false
      options = { 
        detached = false,
      }
    }
    dap.adapters.flutter = {
      type = 'executable',
      command = 'flutter',   -- if you're using fvm, you'll need to provide the full path to flutter (flutter.bat for windows users), or you could prepend the fvm command
      args = { 'debug_adapter' },
      -- windows users will need to set 'detached' to false
      options = { 
        detached = false,
      }
    }
  end,
},
}