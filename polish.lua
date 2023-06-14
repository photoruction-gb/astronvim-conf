return function()
  -- leave the search results highlighted after moving
  --
  vim.on_key(nil, vim.api.nvim_get_namespaces()["auto_hlsearch"])
end
