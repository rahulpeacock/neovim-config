---@brief
---
--- https://github.com/aca/emmet-ls
---
--- Package can be installed via `npm`:
--- ```sh
--- npm install -g emmet-ls
--- ```

---@type vim.lsp.Config
return {
  cmd = { 'emmet-ls', '--stdio' },
  filetypes = {
    'astro',
    'css',
    'eruby',
    'html',
    'javascriptreact',
    'less',
    'pug',
    'sass',
    'scss',
    'typescriptreact',
  },
  root_markers = { '.git' },
}
