return {
  php = {
    {
      type = "php",
      request = "launch",
      name = "Listen for Xdebug (port 9003)",
      port = 9003,
      pathMappings = {
        ["/var/app/current"] = "${workspaceFolder}",
      },
    },
  },
}
