return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      html = {
        filetypes = { "html", "templ" },
        init_options = {
          provideFormatter = true,
          embeddedLanguages = {
            css = true,
            javascript = true,
          },
          configurationSection = { "html", "css", "javascript" },
        },
        settings = {
          html = {
            format = {
              enable = true,
              wrapLineLength = 120,
              wrapAttributes = "auto",
            },
            hover = {
              documentation = true,
              references = true,
            },
          },
        },
      },
    },
  },
}
