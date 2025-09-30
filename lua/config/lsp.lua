-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig.lua
-- https://www.reddit.com/r/neovim/comments/1khidkg/mind_sharing_your_new_lsp_setup_for_nvim_011/

vim.lsp.enable({ 
  'astro',
  'bashls',
  'emmet_ls',
  'ts_ls',
  'tailwindcss'
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client:supports_method('textDocument/completion') then
      -- Enable auto-completion
      vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
    end
  end,
})