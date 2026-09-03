local function scan_imports(base_dir, prefix)
  local imports = {}
  local full_path = vim.fn.stdpath("config") .. "/" .. base_dir

  -- Guard against missing directory
  if vim.fn.isdirectory(full_path) == 0 then
    return imports
  end

  local entries = vim.fn.readdir(full_path)
  table.sort(entries)

  for _, name in ipairs(entries) do
    -- Skip init.lua, hidden files, and non-lua files
    if name ~= "init.lua" and not name:match("^%.") then
      local stem = name:match("^(.-)%.lua$")
      if stem and stem ~= "" then
        table.insert(imports, { import = prefix .. "." .. stem })
      end
    end
  end

  return imports
end

return scan_imports("lua/mine/languages", "mine.languages")
