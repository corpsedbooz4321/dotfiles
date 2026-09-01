return {
  {
    "ahmedkhalf/project.nvim",
    main = "project_nvim",
    opts = {
      manual_mode = false,
      detection_methods = { "lsp", "pattern" },
      patterns = { ".git", "package.json", "pyproject.toml", "Cargo.toml" },
    },
  },
}
