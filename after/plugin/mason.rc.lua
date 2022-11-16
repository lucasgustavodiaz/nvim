local status, mason = pcall(require, "mason")
if (not status) then return end

local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
  return
end

mason.setup({
  ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

lspconfig.setup {
  automatic_installation = true,
  ensure_installed = { "sumneko_lua", "tailwindcss", "tsserver", "html", "cssls", "astro" },
}

mason_null_ls.setup({
  -- list of formatters & linters for mason to install
  ensure_installed = { "eslint_d", "prettier", "lua-language-server", "stylua", "css-lsp", "html-lsp", "tailwindcss-language-server", "typescript-language-server", "deno", "prettierd" },
  -- auto-install configured formatters & linters (with null-ls)
  automatic_installation = true,
})

