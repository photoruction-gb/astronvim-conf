return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      handlers = {
        php = function(source_name)
          local dap = require "dap"
          local mason_registry = require "mason-registry"

          local vscode_php_debug = mason_registry.get_package "php-debug-adapter"
          local php_extension_path = vscode_php_debug:get_install_path() .. "/extension/"

          dap.adapters.php = {
            type = "executable",
            command = "node",
            args = { php_extension_path .. "out/phpDebug.js" },
          }

          dap.configurations.php = {
            {
              type = "php",
              request = "launch",
              name = "Listen for Xdebug",
              port = 9003,
              pathMappings = {
                ["/var/app/current"] = "${workspaceFolder}",
              },
            },
          }
        end,
      },
    },
  },
}
