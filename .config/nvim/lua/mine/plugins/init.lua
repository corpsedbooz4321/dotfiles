local function scan_imports(base_dir, prefix)
  local imports = {}
  local entries = vim.fn.readdir(base_dir)
  table.sort(entries)

  for _, name in ipairs(entries) do
    local full_path = base_dir .. "/" .. name
    local stat = vim.loop.fs_stat(full_path)

    if stat and stat.type == "directory" then
      local nested = scan_imports(full_path, prefix .. "." .. name)
      for _, item in ipairs(nested) do
        table.insert(imports, item)
      end
    elseif name ~= "init.lua" and name:match("%.lua$") then
      local stem = name:match("^(.-)%.lua$")
      if stem and stem ~= "" then
        table.insert(imports, { import = prefix .. "." .. stem })
      end
    end
  end

  return imports
end

return scan_imports(vim.fn.stdpath("config") .. "/lua/mine/plugins", "mine.plugins")
