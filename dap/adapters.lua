local mason_registry = require "mason-registry"

local vscode_php_debug = mason_registry.get_package "vscode-php-debug"
local php_extension_path = vscode_php_debug:get_install_path() .. "/extension/"

return {
  php = {
    type = "executable",
    command = "node",
    args = { php_extension_path .. "out/phpDebug.js" },
  },
}
