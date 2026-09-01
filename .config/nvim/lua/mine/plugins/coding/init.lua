local function scan_imports(base_dir, prefix)
  local imports = {}
  local entries = vim.fn.readdir(base_dir)
  table.sort(entries)

  for _, name in ipairs(entries) do
    if name ~= "init.lua" then
      local stem = name:match("^(.-)%.lua$")
      if stem and stem ~= "" then
        table.insert(imports, { import = prefix .. "." .. stem })
      end
    end
  end

  return imports
end

return scan_imports(vim.fn.stdpath("config") .. "/lua/mine/plugins/coding", "mine.plugins.coding")
