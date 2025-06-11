-- lua/x017/plugins/lsp.lua

return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    
    local on_attach = function(client, bufnr)
      local bufmap = function(mode, lhs, rhs)
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
      end
      bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
      bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
    end

    local servers = { "pyright", "lua_ls" ,"zls"}

    for _, server in ipairs(servers) do
      lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end
  end,
}

